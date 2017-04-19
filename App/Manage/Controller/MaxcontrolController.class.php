<?php
namespace Manage\Controller;

class MaxcontrolController extends CommonController
{

    public function index()
    {

        $value = M('config') -> where(array('name'=>'ADMIN_OP')) -> getField('value');

        //echo $value; die;
        $this -> assign('value', $value);
        $this->assign('type', '宏观调控');
        $this->display();
    }

    public function ctrl_edit(){

        $control = I('control', 0, 'intval');
        $save = M('config') -> where(array('name'=>'ADMIN_OP')) -> setField('value', $control);
        if($save){
            $this->success('调控成功', U('Maxcontrol/index'));
        }else{
             $this->error('调控失败');
        }
    }

//**************************************没啥用******************************************************8
    //注册审核
    public function edit()
    {
        //当前控制器名称
        $id         = I('id', 0, 'intval');
        $actionName = strtolower(CONTROLLER_NAME);

        if(IS_POST){
            $this->editPost();
            exit();
        }

        $info = M('user') -> where(array('id'=>$id)) -> find();
        $info['regtime'] = date('Y-m-d H:i:s', intval($info['regtime']));

        $vo = $info;
        $this->assign('vlist', $info);
        $this->assign('vo', $vo);
        $this->display();
    }

    //审核处理
    public function editPost()
    {

        $data          = I('post.');
        $id            = $data['id']            = I('id', 0, 'intval');
        $result = M('user') -> where(array('id'=>$data['status'])) -> setField('status', $data['status']);

        if ($result) {
            $this->success('审核完毕', U('Regist/index'));
        } else {
            $this->error('审核失败');
        }

    }


    //彻底删除
    public function del()
    {

        $id        = I('id', 0, 'intval');
        $batchFlag = I('get.batchFlag', 0, 'intval');
        //批量删除
        if ($batchFlag) {
            $this->delBatch();
            return;
        }

        if (M('member')->delete($id)) {
            M('memberdetail')->delete($id);
            $this->success('彻底删除成功', U('Member/index'));
        } else {
            $this->error('彻底删除失败');
        }
    }

    //批量彻底删除
    public function delBatch()
    {

        $idArr = I('key', 0, 'intval');
        if (!is_array($idArr)) {
            $this->error('请选择要彻底删除的项');
        }
        $where = array('id' => array('in', $idArr));

        if (M('member')->where($where)->delete()) {
            M('memberdetail')->where(array('userid' => array('in', $idArr)))->delete();
            $this->success('彻底删除成功', U('Member/index'));
        } else {
            $this->error('彻底删除失败');
        }
    }

}
