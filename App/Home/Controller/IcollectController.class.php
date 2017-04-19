<?php

namespace Home\Controller;

class IcollectController extends HomeCommonController
{
    public static $operate = '';

    public function index(){
        $this->assign('operate', R('Public/getOperateCache'));
        $this->assign('login', R('Public/getLoginInfo'));
        $this->assign('seo', array('title'=>'用户中心', 'name'=>'用户中心'));
        $this->display();
    }
    

}
