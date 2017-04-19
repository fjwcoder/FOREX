<?php

namespace Home\Controller;

class ItradeController extends HomeCommonController
{
    public static $operate = '';

    public function index(){
        $this->assign('operate', R('Public/getOperateCache'));
        $this->assign('login', R('Public/getLoginInfo'));
        $this->assign('seo', array('title'=>'交易明细', 'name'=>'交易明细'));
        $this->display();
    }
    

}
