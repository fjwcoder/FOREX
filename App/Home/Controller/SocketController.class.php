<?php

namespace Home\Controller;
use Think\Controller;
//该脚本是每5s执行一次
class SocketController extends Controller
{
    /*通过获取到的数据，分别进行数据计算*/ 
    public function index(){
        //1.先看temp表中是否有数据
        $forex_data = S('temp_record');
        if(empty($forex_data)){
            $forex_data = S('forex_data');
            if(empty($forex_data)){
                $forex_data = M('forex')-> order('id desc') -> limit(1) -> field($this->fBuyPri()) -> find();
                S('forex_data', $forex_data, 305);
            }
        }
        $array = array();
        foreach($forex_data as $k=>$v){
            $val = $v*10000;
            $max = $val*1.02;
            $min = $val*0.98;
            $array[$k] = rand($min, $max)/10000;
            unset($val, $max, $min);
        }

        $this->socket($array);
        $tempOperate = $this->tempOperate();
        if($tempOperate['status']){
            $model = M();
            $model->startTrans();
            $array['f_time'] = date('Y-m-d H:i:s', time());
            $add = $model -> table('fx_temp_record') -> data($array) ->add();
            
            if($add){
                $model->commit();
                if($tempOperate['temp']){ //清除缓存
                    S('temp_record', null);
                }else{
                    S('temp_record', $array, 5);
                }
                
            }
            unset($forex_data, $array, $model, $add);
        }
            
        
        
    }

    private function tempOperate(){ //临时表处理函数
        $count = M('temp_record') -> count(); 
        if($count>=20){
            $array = array('f_time'=>date('Y-m-d H:i:s', time()));
            $result = M('temp_record') -> field($this->fBuyPri()) -> select();
            
            //计算开盘值 & 收盘值
            $last = count($result)-1;
            for($i=2; $i<22; $i++){
                $array['f_open'.$i] = $result[0]['fbuypri'.$i];
                $array['f_close'.$i] = $result[$last]['fbuypri'.$i];
            }
            //计算最高值和最低值
            $fbuypri = array();
            for($i=2; $i<22; $i++){
                $fbuypri = $this->i_array_column($result, 'fbuypri'.$i);
                $array['f_lowest'.$i] = min($fbuypri);
                $array['f_highest'.$i] = max($fbuypri);
            }
            $add = M('forex_record') -> data($array) -> add();
            if($add){
                
                $model = M();
                $sql = 'truncate table fx_temp_record';
                if($model -> execute($sql)){ //该语句注意query和execute的区别
                    unset($count, $array, $last, $fbuypri, $add, $sql);
                    return array('status'=>true, 'temp'=>true);
                }
            }
        }else{
            return array('status'=>true, 'temp'=>false);
        }
    }

    private function socket($content=array(), $add=0){
        $to_uid='';
        $json = json_encode($content);
        $push_api_url = $_SERVER['SERVER_NAME'].':2121/';
        $post_data=array(
        'type'=>'publish',
        'content'=>$json,
        'to'=>$to_uid);

        $ch= curl_init ();
        curl_setopt ($ch,CURLOPT_URL,$push_api_url);
        curl_setopt ($ch,CURLOPT_POST,1);
        curl_setopt ($ch,CURLOPT_HEADER,0);
        curl_setopt ($ch,CURLOPT_RETURNTRANSFER,1);
        curl_setopt ($ch,CURLOPT_POSTFIELDS,$post_data);
        $return= curl_exec ($ch);
        curl_close ($ch);
    }

    public static function fBuyPri(){
        return array('fBuyPri2', 'fBuyPri3', 'fBuyPri4', 'fBuyPri5', 'fBuyPri6', 'fBuyPri7', 'fBuyPri8', 'fBuyPri9', 'fBuyPri10', 'fBuyPri11', 
                     'fBuyPri12', 'fBuyPri13', 'fBuyPri14', 'fBuyPri15', 'fBuyPri16', 'fBuyPri17', 'fBuyPri18', 'fBuyPri19', 'fBuyPri20', 'fBuyPri21');
                     
    }

    //手写的PHP 5.5 后的array_column(), 5.5以前的版本没有此方法
    public function i_array_column($input, $columnKey, $indexKey=null){
        if(!function_exists('array_column')){ 
            $columnKeyIsNumber  = (is_numeric($columnKey))?true:false; 
            $indexKeyIsNull            = (is_null($indexKey))?true :false; 
            $indexKeyIsNumber     = (is_numeric($indexKey))?true:false; 
            $result                         = array(); 
            foreach((array)$input as $key=>$row){ 
                if($columnKeyIsNumber){ 
                    $tmp= array_slice($row, $columnKey, 1); 
                    $tmp= (is_array($tmp) && !empty($tmp))?current($tmp):null; 
                }else{ 
                    $tmp= isset($row[$columnKey])?$row[$columnKey]:null; 
                } 
                if(!$indexKeyIsNull){ 
                    if($indexKeyIsNumber){ 
                        $key = array_slice($row, $indexKey, 1); 
                        $key = (is_array($key) && !empty($key))?current($key):null; 
                        $key = is_null($key)?0:$key; 
                    }else{ 
                        $key = isset($row[$indexKey])?$row[$indexKey]:0; 
                    } 
                } 
                $result[$key] = $tmp; 
            } 
            return $result; 
        }else{
            return array_column($input, $columnKey, $indexKey);
        }
    }

}
