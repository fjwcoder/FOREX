<?php
/**

 */

namespace Home\Controller;

class IndexController extends HomeCommonController
{
    //方法：index
    //首页
    public function index()
    {

        go_mobile();
        //$this->assign('title', C('CFG_WEBNAME'));
        $this->assign('seo', array('title'=>'DM金融', 'name'=>'WELCOME DM FINANCIAL'));
        $this->assign('login', R('Public/getLoginInfo'));
        $this->display();

    }

    
}
