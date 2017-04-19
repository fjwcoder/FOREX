<?php
namespace Manage\Controller;

class PositionController extends CommonController
{

    public function index()
    {
        //$keyword = I('keyword', '', 'htmlspecialchars,trim'); //关键字
        //$where   = array('member.id' => array('gt', 0));
        // if (!empty($keyword)) {
        //     if (strpos($keyword, '@')) {
        //         $where['member.email'] = $keyword;
        //     } else {
        //         $where['member.nickname'] = $keyword;
        //     }
        // }
        $where = array();
        $count = M('get_position')->where($where)->count();

        $page           = new \Common\Lib\Page($count, 10);
        $page->rollPage = 7;
        $page->setConfig('theme', '%HEADER% %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%');
        $limit = $page->firstRow . ',' . $page->listRows;
        $where['status'] = 0;
        $list  = M('get_position')->where($where)->order('id')->limit($limit)->select();

        $this->assign('page', $page->show());
        $this->assign('vlist', $list);
        $this->assign('keyword', $keyword);
        
        $this->assign('type', '职位申请审核');
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
