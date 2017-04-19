<?php

namespace Home\Controller;

class MainController extends HomeCommonController
{

    public function index(){
        //金额种类
        $kind_cache = S('forex_kind');
        if($kind_cache){
            $this->assign('kind', $kind_cache);
        }else{
            $data = M('kind') -> field(array('id, name, remark')) -> select();
            unset($data[0]);
            $forex = M('forex') -> where('f_timestamp > '.strtotime(date('Y-m-d'))) -> order('id desc') ->limit(1) ->field(R('Socket/fBuyPri')) -> find();
            if(empty($forex)){
                $forex = M('forex') -> where('f_timestamp > '.strtotime('last Friday')) -> order('id desc') ->limit(1) ->field(R('Socket/fBuyPri')) -> find();
            }
            $i = 1;
            foreach($forex as $v){
                $data[$i]['open'] = $v;
                $i++;
            }
            S('forex_kind', $data, 3600);
            $this->assign('kind', $data);
        }

        //时间种类
        $time = S('operate_time');
        if(empty($time)){
            $time = M('time_kind') -> where(array('status'=>1)) -> field(array('id', 'name', 'title', 'minutes')) -> select();
            S('operate_time', $time, 3600*12*7);
        }
        //var_export($time); die;
        $login = R('Public/getLoginInfo');
        $this->assign('time', $time);
        $this->assign('login', R('Public/getLoginInfo'));
        $this->assign('seo', array('title'=>'操作面板', 'name'=>'外汇币种'));
        $this->display();
    }

    //ajax获取30位K线图记录
    public function ajaxGetRecord(){
        header('Content-type: application/json');
        $type = I('type', 2, 'intval');
        $time = I('time', 1, 'intval'); //时间

        $name = R('Forex/getNameTitle', array('data'.$type));
        $remark = 'USD-'.$name['name'.$type];
        //查询$time*30条记录
        $result = M('forex_record') ->order('id desc') ->limit($time*30) -> field(array('f_open'.$type, 'f_close'.$type, 'f_lowest'.$type, 'f_highest'.$type)) -> select();

        if(!empty($result)){
            if($time == 1){
                foreach($result as $v){
                    $data[] = array_values($v);
                }
            }else{
                $chunk = array_chunk($result, $time); 
                foreach($chunk as $k=>$v){
                    $min_column = R('Public/i_array_column', array($v, 'f_lowest'.$type));
                    $max_column = R('Public/i_array_column', array($v, 'f_highest'.$type));
                    $temp = array($v[0]['f_open'.$type], $v[2]['f_close'.$type], min($min_column), max($max_column));
                    $data[] = $temp;
                    
                }
            }
            //从temp_record取出一条数据,凑最后一个
            $temp = M('temp_record') -> getField('fbuypri'.$type, true);
            if(!empty($temp)){
                $data[0] = array($temp[0], $temp[count($temp)-1], min($temp), max($temp));
            }
            echo json_encode(array('status'=>true, 'data'=>$data, 'remark'=>$remark, 'count'=>count($temp))); die;
        }else{
            $data = array('0', '0', '0', '0', '0');
            echo json_encode(array('status'=>false, 'data'=>$data, 'remark'=>'该项数据为空')); die;
        }
        
    }

    //开始买涨买跌
    public function tradeOpen(){
        header('Content-type: application/json');
        $type = I('type', '2', 'htmlspecialchars,trim'); //金额类型
        $money = I('money', 10, 'intval');//买入金额
        $time = I('time', 1, 'intval');//买入时间
        $up_down = I('flag', 0, 'intval');// 1涨 2跌
        $open = I('f_open', '', 'htmlspecialchars,trim'); //买入开盘
        
        if($up_down === 0){
            echo json_encode(array('status'=>false, 'data'=>'错误的控制信息')); die;
        }
        $curr_money = M('user') -> where(array('userid'=>$this->user['userid'])) -> getField('amount');
        // echo json_encode(array('status'=>false, 'data'=>$curr_money)); die;
        if(!isset($_SESSION[C('USER_ID')])){
            echo json_encode(array('status'=>false, 'data'=>'尚未登录')); die;
        }
        if(floatval($curr_money)<floatval($money)){
             echo json_encode(array('status'=>false, 'data'=>'余额不足，请先充值')); die;
        }
        if(!isset($_SESSION[C('ADMIN_OP')])){ // 后台控制
            $_SESSION[C('ADMIN_OP')] = M('config') -> where(array('name'=>'ADMIN_OP')) -> getField('value');
        }

        //后台控制
        if($_SESSION[C('ADMIN_OP')] == 1){

        }
        
        $orderNo = $this->user['userid'].strval(time());
        $_SESSION[C('ORDER_NO')] = $orderNo;
        $new_data = array('order_no'=>strval($orderNo), 'userid'=>$this->user['userid'], 'accountid'=>$this->user['accountid'], 'nickname'=>$this->user['nickname'],'up_down'=>$up_down,
            'f_type'=>$type, 'f_money'=>$money, 'f_time'=>date('Y-m-d H:i:s', time()), 'f_open'=>$open, 'f_close'=>$open, 'f_lowest'=>$open, 'f_highest'=>$open, 's_time'=>$time,
            'admin'=>$_SESSION[C('ADMIN_OP')]);
        // 先存入数据库
        $save = M('record') -> data($new_data) ->add();
        if($save){
            $f_type = R('Forex/getNameTitle', array('data'.$type));
            echo json_encode(array('status'=>true, 'type'=>$f_type['name'.$type], 'open'=>$open, 'order_no'=>$orderNo)); die;
        }else{
            echo json_encode(array('status'=>false, 'data'=>'链接错误，请重新买入')); die;
        }


    }

    //本次交易结束
    public function tradeClose(){
        header('Content-type: application/json');
        $close = I('f_close', '', 'htmlspecialchars,trim');
        $lowest = I('lowest', '', 'htmlspecialchars,trim');
        $highest = I('highest', '', 'htmlspecialchars,trim');
        $orderNo = I('order_no', '', 'htmlspecialchars,trim');

        $record = M('record') -> where(array('order_no'=>strval($orderNo))) -> find();
        if(empty($record)){
            $record = M('record') -> where(array('order_no'=>strval($_SESSION[C('ORDER_NO')]))) -> find();
            if(empty($record)){
                $record = M('record') -> where(array('userid'=>$this->user['userid'])) -> order('id desc') -> limit(1) -> find();
            }
        }
        
        if(empty($record)){
            echo json_encode(array('status'=>false, 'data'=>'数据错误')); die;
        }
        
        $model = M();
        $model->startTrans();
        if($record['up_down'] == 1){ //买涨
            $type = '买涨';
            if(floatval($close)>floatval($record['f_open'])){ //赢
                $result = 1;
            }else{
                $result = 2;
            }
        }
        if($record['up_down'] == 2){
            $type = '买跌';
            if(floatval($close)<floatval($record['f_open'])){
                $result = 1;
            }else{
                $result = 2;
            }
        }
        if($result == 1){ //赢了
            $returnInfo = '盈利';
            $money = $record['f_money']*0.76;
            $do_money = $model->table(C('DB_PREFIX').'user') -> where(array('userid'=>$this->user['userid'])) ->setInc('amount', floatval($money));
        }
        if($result == 2){
            $returnInfo = '失利';
            $money = $record['f_money'];
            $do_money = $model->table(C('DB_PREFIX').'user') -> where(array('userid'=>$this->user['userid'])) ->setDec('amount', floatval($money));
        }
        
        if($do_money){
            $money_change = 1;
        }else{
            $money_change = 2;
        }
        
        $array = array('f_close'=>floatval($close), 'f_lowest'=>floatval($lowest), 'f_highest'=>floatval($highest),
                       'result'=>$result, 'money_change'=>$money_change, 'admin'=>$_SESSION[C('ADMIN_OP')]);
        $save = $model->table(C('DB_PREFIX').'record') -> where(array('order_no'=>$record['order_no'])) ->setField($array);

        if($save){
            $model->commit();
            $back = array('order_no'=>$record['order_no'], 'nickname'=>$this->user['nickname'], 'type'=>$type, 'time'=>$record['s_time'].'m',
                          'money'=>$money, 'open'=>$record['f_open'], 'close'=>$close, 'result'=>$returnInfo);
            echo json_encode(array('status'=>true, 'data'=>$back, 'remark'=>$returnInfo)); die;
        }else{
            $model->rollback();
            echo json_encode(array('status'=>false, 'data'=>'系统错误')); die;
        }
    }


    //获取操作时间/操作金额
    public function getOperateItem(){
        header('Content-type: application/json');
        $time = S('operate_time');
        if(empty($time)){
            $time = M('time_kind') -> where(array('status'=>1)) -> field(array('id', 'name', 'title', 'minutes', 'percent')) -> select();
            S('operate_time', $time, 3600*12*7);
        }
        $money = S('operate_money');
        if(empty($money)){
            $money = M('money_kind') -> where(array('status'=>1)) -> field(array('id', 'name', 'title', 'money')) -> select();
            S('operate_money', $money, 3600*12*7);
        }
        echo json_encode(array('status'=>true, 'time'=>$time, 'money'=>$money)); die;
    }

    //刷新时，获取当前各种汇率的数据
    public function ajaxRedGreen(){
        header('Content-type: application/json');
        $result = M('temp_record') -> order('id desc') -> limit(1) -> field(R('Socket/fBuyPri')) -> find();
        if($result){
            echo json_encode(array('status'=>true, 'data'=>$result)); die;
        }else{
            echo json_encode(array('status'=>false)); die;
        }
        
        
    }

// **********************************************************************************************************************************************************************

}
