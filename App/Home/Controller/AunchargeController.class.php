<?php

namespace Home\Controller;

class AunchargeController extends HomeCommonController
{
    public static $operate = '';

    public function index(){
        $this->assign('uncharge', array('userid'=>$this->user['userid'], 'amount'=>$this->user['amount'], 
            'forex'=>6.21, 'nickname'=>$this->user['nickname']
        ));
        $this->assign('operate', R('Public/getOperateCache'));
        $this->assign('login', R('Public/getLoginInfo'));
        $this->assign('seo', array('title'=>'账户出金', 'name'=>'账户出金'));
        $this->display();
    }
    

    public function uncharge(){
        $money = I('money', '', 'htmlspecialchars,trim');
        $id_card = I('id_card', 0, 'intval');

        //出金方式
        //$type = I('type', 0, 'intval');
        $remark = I('remark', '', 'htmlspecialchars,trim');
        echo $money.$id_card.$remark;
    }

}
