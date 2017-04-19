<?php

namespace Home\Controller;

class IchargeController extends HomeCommonController
{
    public static $operate = '';

    public function index(){
        $this->assign('operate', R('Public/getOperateCache'));
        $this->assign('login', R('Public/getLoginInfo'));
        $this->assign('seo', array('title'=>'入金明细', 'name'=>'入金明细'));
        $this->display();
    }
    

}
