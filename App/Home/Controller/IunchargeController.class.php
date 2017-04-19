<?php

namespace Home\Controller;

class IunchargeController extends HomeCommonController
{
    public static $operate = '';

    public function index(){
        $this->assign('operate', R('Public/getOperateCache'));
        $this->assign('login', R('Public/getLoginInfo'));
        $this->assign('seo', array('title'=>'出金明细', 'name'=>'出金明细'));
        $this->display();
    }
    

}
