<?php

namespace Home\Controller;

class ArecordController extends HomeCommonController
{
    public static $operate = '';

    public function index(){
        $this->assign('operate', R('Public/getOperateCache'));
        $this->assign('login', R('Public/getLoginInfo'));
        $this->assign('seo', array('title'=>'历史记录', 'name'=>'历史记录'));
        $this->display();
    }
    
    public function getMyRecord(){
        header('Content-type: application/json');

        $array = M('record') -> where(array('userid'=>$this->user['id'])) ->order('f_time') ->limit(10) -> field(array('order_no', 'nickname', 'f_type', 'f_money', 'f_time', 'f_open', 'f_close', 'f_lowest', 'f_highest')) -> select();
        var_export($array); die;
        echo json_encode(array('status'=>true, 'data'=>$data, 'remark'=>$remark)); die;
    }

}
