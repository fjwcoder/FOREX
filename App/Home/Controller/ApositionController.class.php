<?php

namespace Home\Controller;

class ApositionController extends HomeCommonController
{

    public function index(){

        $position = S('position');
        if(empty($position)){
            $position = M('position') -> getField('id, name');
            S('position', $position);
        }
        $this->assign('user', array('userid'=>$this->user['userid'], 'position'=>$this->user['position']));
        $this->assign('position', $position);
        $this->assign('operate', R('Public/getOperateCache'));
        $this->assign('login', R('Public/getLoginInfo'));
        $this->assign('seo', array('title'=>'职位申请', 'name'=>'职位申请'));
        $this->display();
    }
    
    public function getPosition(){
        header("Content-type:text/html;charset=UTF-8");
        $position = I('position', 0, 'intval');
        $remark = I('position-textarea', '', 'htmlspecialchars,trim');
        $pos_info = M('position') -> where(array('id'=>$position)) -> find();
        //写入职位申请表
        $array = array('userid'=>$this->user['userid'], 'nickname'=>$this->user['nickname'], 'curr_id'=>$this->user['position_id'],
            'curr_position'=>$this->user['position'], 'get_id'=>$position, 'get_position'=>$pos_info['name'], 'get_time'=>date('Y-m-d H:i:s'),
            'remark'=>$remark);
        $save = M('get_position') -> data($array) -> add();
        //$array = array('new_position_id'=>$position, 'status'=>3, 'remark'=>$remark);
        //$save = M('user') -> where(array('id'=>$this->user['id'])) -> setField($array);
        if($save){
            $this->success('申请成功，请等待审核', U('Aposition/index'));
        }else{
            $this->error('申请失败');
        }
    }

}