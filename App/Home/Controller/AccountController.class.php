<?php

namespace Home\Controller;

class AccountController extends HomeCommonController
{
    public function index(){
        
        $this->assign('login', R('Public/getLoginInfo'));
        $this->assign('seo', array('title'=>'操作面板', 'name'=>'外汇币种'));
        $this->display();
    }
    

}
