<?php
/**

 */

namespace Home\Controller;

class PublicController extends HomeCommonController
{
    /** 
    * 请求接口返回内容
    * @param  string $url [请求的URL地址]
    * @param  string $params [请求的参数]
    * @param  int $ipost [是否采用POST形式]
    * @return  string
    */
    public function http_url($url,$params=false,$ispost=0){
        $httpInfo = array();
        $ch = curl_init();
    
        curl_setopt( $ch, CURLOPT_HTTP_VERSION , CURL_HTTP_VERSION_1_1 );
        curl_setopt( $ch, CURLOPT_USERAGENT , 'JuheData' );
        curl_setopt( $ch, CURLOPT_CONNECTTIMEOUT , 60 );
        curl_setopt( $ch, CURLOPT_TIMEOUT , 60);
        curl_setopt( $ch, CURLOPT_RETURNTRANSFER , true );
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
        if( $ispost )
        {
            curl_setopt( $ch , CURLOPT_POST , true );
            curl_setopt( $ch , CURLOPT_POSTFIELDS , $params );
            curl_setopt( $ch , CURLOPT_URL , $url );
        }
        else
        {
            if($params){
                curl_setopt( $ch , CURLOPT_URL , $url.'?'.$params );
            }else{
                curl_setopt( $ch , CURLOPT_URL , $url);
            }
        }
        $response = curl_exec( $ch );
        if ($response === FALSE) {
            //echo "cURL Error: " . curl_error($ch);
            return false;
        }
        $httpCode = curl_getinfo( $ch , CURLINFO_HTTP_CODE );
        $httpInfo = array_merge( $httpInfo , curl_getinfo( $ch ) );
        curl_close( $ch );
        return $response;
    }

    // 图片上传 $path 目录  $subpath 子目录
	public function upload($path, $savename){
		$upload = new \Think\Upload();//实例化上传类
		$upload->maxSize = 3145728;//设置附件上传大小
		$upload->exts = array("jpg", "gif", "png", "jpeg");//设置附件上传类型
		$upload->saveName = $savename;
		$upload->replace = true;   //同名则替换
		$upload->rootPath = $path; //设置附件上传目录
		$upload->autoSub = true;
		$upload->subName = '';
		return $upload;

	}

    // 返回登录信息
    public function getLoginInfo(){
        if(isset($_SESSION[C('USER_ID')])){ //登录
            $array = array('status'=>$_SESSION[C('LOGIN_STATUS')],
             'money'=>$_SESSION[C('AMOUNT')], 'pre_user'=>$_SESSION[C('PRE_USER')]);
        }else{ //未登录
            $array = array('status'=>$_SESSION[C('LOGIN_STATUS')], 'money'=>$_SESSION[C('AMOUNT')],
             'pre_user'=>$_SESSION[C('PRE_USER')], 'regist'=>'注册');   
        }
        return $array;
    }

    public function getOperateCache(){
        $operate_cache = S('operate_cache');
        if($operate_cache){
            // $this -> assign('operate', $operate_cache);
            return $operate_cache;
        }else{
            $operate = array();
            $array = M('operate') -> where(array('status'=>1)) -> select();
            foreach($array as $a){
                if($a['ftype'] == 0){
                    $operate[$a['name']] = array('name'=>$a['name'], 'title'=>$a['title'], 'type'=>$a['type'], 'level'=>$a['level']);
                }else{
                    $operate[$a['fname']]['content'][] = $a;
                }
            }
            S('operate_cache', $operate, 24*3600*7);
            // $this->assign('operate', $operate);
            return $operate;
        }
    }


    function i_array_column($input, $columnKey, $indexKey=null){
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
