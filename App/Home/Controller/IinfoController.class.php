<?php

namespace Home\Controller;

class IinfoController extends HomeCommonController
{
    // public static $operate = '';

    public function index(){
        $this->assign('operate', R('Public/getOperateCache'));
        $this->assign('login', R('Public/getLoginInfo'));
        $this->assign('seo', array('title'=>'客户一览', 'name'=>'客户一览'));
        $this->display();
    }
    

}
