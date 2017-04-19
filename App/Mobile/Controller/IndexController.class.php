<?php

namespace Mobile\Controller;

class IndexController extends MobileCommonController
{
    //方法：index
    public function index()
    {

        //$this->assign('title', C('CFG_WEBNAME'));
		$this->assign('seo', array('title'=>'DM金融', 'name'=>'WELCOME DM FINANCIAL'));
		//var_export(R('Home/Public/getLoginInfo')); die;
        $this->assign('login', R('Home/Public/getLoginInfo'));
        $this->display();

    }
}
