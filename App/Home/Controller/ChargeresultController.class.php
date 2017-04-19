<?php
namespace Home\Controller;
use Think\Controller;
class ChargeresultController extends Controller
{
    public function index()
    {
        $postStr = file_get_contents('php://input'); //接收POST数据

        if(empty($postStr)){
            $postStr = $GLOBALS['HTTP_RAW_POST_DATA'];
            libxml_disable_entity_loader(true);
            $xml = simplexml_load_string($postStr, 'SimpleXMLElement', LIBXML_NOCDATA);
        }else{
            $xml = simplexml_load_string($postStr, 'SimpleXMLElement', LIBXML_NOCDATA);; //提取POST数据为simplexml对象
        }
        $info = json_decode(json_encode($xml), true);

        if(($info['status'] == 0) && ($info['result_code'] == 0)){
            if($info['pay_result'] == 0){
                $model = M();
                $model -> startTrans();
                //查出未完成的充值记录
                $charge_no = M('charge_record') -> where(array('order_no'=>$info['out_trade_no'])) -> find();
                //查看充值状态
                if(($charge_no['pay_result'] == 1) && ($charge_no['charge_result'] == 1)){//本次充值完全成功
                    echo 'success';
                    die;
                   // header('Location: /Home/Acharge/index'); die;
                }
                if(($charge_no['pay_result'] == 1) && ($charge_no['charge_result'] == 0)){//支付成功，充值失败
                    $add_amount = $model->table(C('DB_PREFIX').'user') -> where(array('userid'=>$charge_no['userid'])) -> Inc('amount', $charge_no['charge_usd']); 
                    if($add_amount){
                        $charge_result = $model -> table(C('DB_PREFIX').'charge_record') -> where(array('order_no'=>$info['out_trade_no'])) -> setField('charge_result', 1);
                        if($charge_result){
                            $model->commit();
                            echo 'success'; die;
                           // header('Location: /Home/Acharge/index'); die;
                        }
                    }
                }
                if(($charge_no['pay_result'] == 0) && ($charge_no['charge_result'] == 0)){ //第一次过来时候，都是0
                    //修改充值结果
                    $pay_result = $model->table(C('DB_PREFIX').'charge_record') ->where(array('order_no'=>$info['out_trade_no'])) -> setField('pay_result', 1);
                    $add_amount = $model->table(C('DB_PREFIX').'user') -> where(array('userid'=>$charge_no['userid'])) -> setInc('amount', $charge_no['charge_usd']); 
                    if($add_amount){
                        $charge_result = $model -> table(C('DB_PREFIX').'charge_record') -> where(array('order_no'=>$info['out_trade_no'])) -> setField('charge_result', 1);
                        if($charge_result){
                            $model->commit();
                            echo 'success';
                            die;
                           // header('Location: /Home/Acharge/index'); die;
                        }
                    }
                }
            }else{
                echo 'success';
                header('Location: /Home/Acharge/index'); die;
            }
        }else{
            echo 'success';
            header('Location: /Home/Acharge/index'); die;
        }

    }

}
