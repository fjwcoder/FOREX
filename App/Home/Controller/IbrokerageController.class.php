<?php

namespace Home\Controller;

class IbrokerageController extends HomeCommonController
{
    public static $operate = '';

    public function index(){
        $this->assign('operate', R('Public/getOperateCache'));
        $this->assign('login', R('Public/getLoginInfo'));
        $this->assign('seo', array('title'=>'佣金查询', 'name'=>'佣金查询'));
        $this->display();
    }
    

}
