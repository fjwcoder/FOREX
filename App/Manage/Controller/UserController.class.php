<?php
namespace Manage\Controller;

class UserController extends CommonController
{

    public function index()
    {

        //$keyword = I('keyword', '', 'htmlspecialchars,trim'); //关键字

        //$where['status'] = 1;
        $count = M('user')->where($where)->count();

        $page           = new \Common\Lib\Page($count, 10);
        $page->rollPage = 7;
        $page->setConfig('theme', '%HEADER% %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%');
        $limit = $page->firstRow . ',' . $page->listRows;
        $list  = M('user')->where($where) ->order('id desc')->limit($limit)->select();
        // if($list){
        //     $list[0]['regtime'] = date('Y-m-d H:i:s', intval($list[0]['regtime']));
        // }
        
        $this->assign('page', $page->show());
        $this->assign('vlist', $list);
        $this->assign('keyword', $keyword);
        $this->assign('type', '用户列表');
        $this->display();
    }

    public function charge(){
        $id         = I('id', 0, 'intval');
        $actionName = strtolower(CONTROLLER_NAME);

        if(IS_POST){
            $this->chargePost();
            exit();
        }
        $info = M('user') -> where(array('id'=>$id)) -> find();

        $vo = $info;
        $this->assign('vlist', $info);
        $this->assign('vo', $vo);
        $this->display();
    }

    public function chargePost(){
        $charge = I('charge', 0, 'intval');

        $id            = $data['id']            = I('id', 0, 'intval');
        $add = M('user') ->where(array('id'=>$id)) -> setInc('amount', floatval($charge));
        if($add){
            $this->success('充值成功', U('User/index'));
        }else{
            $this->error('充值失败');
        }
    }

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
