<?php

namespace Home\Controller;

class UserController extends HomeCommonController
{
    public function index(){
        if(!isset($_SESSION[C('USER_ID')])){
            header('Location:/Home/Login/index');
            exit;
        }
        $this->assign('user', array('nickname'=>$this->user['nickname'], 'userid'=>$this->user['userid'] , 'amount'=>$this->user['amount'], 'status'=>$this->user['status']));
        $this->assign('operate', R('Public/getOperateCache'));
        $this->assign('login', R('Public/getLoginInfo'));
        $this->assign('seo', array('title'=>'个人资料', 'name'=>'个人资料'));
        $this->display();

    }
    


}
