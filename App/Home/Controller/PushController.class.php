<?php

namespace Home\Controller;

class PushController extends HomeCommonController
{
    public function index(){
        
        // $this->assign('user', array('nickname'=>$this->user['nickname'], 'userid'=>$this->user['userid'] , 'amount'=>$this->user['amount'], 'status'=>$this->user['status']));
        // $this->assign('operate', R('Public/getOperateCache'));
        // $this->assign('login', R('Public/getLoginInfo'));
        // $this->assign('seo', array('title'=>'个人资料', 'name'=>'个人资料'));
        //$this->display();
        //$this->func();

    }
    
    private function socket($to_uid='', $content='我是冯建文'){

        $push_api_url = "http://127.0.0.1:2121/";
        $post_data=array(
        'type'=>'publish',
        'content'=>$content,
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
    

}
