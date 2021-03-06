<?php
/**
 *　                  oooooooooooo
 *
 *                  ooooooooooooooooo
 *                       o
 *                      o
 *                     o        o
 *                    oooooooooooo
 *
 *         ～～         ～～         　　～～
 *       ~~　　　　　~~　　　　　　　　~~
 * ~~～~~～~~　　　~~~～~~～~~～　　　~~~～~~～~~～
 * ·······              ~~XYHCMS~~            ·······
 * ·······  闲看庭前花开花落 漫随天外云卷云舒 ·······
 * ·············     www.xyhcms.com     ·············
 * ··················································
 * ··················································
 *
 * @Author: gosea <gosea199@gmail.com>
 * @Date:   2014-06-21 10:00:00
 * @Last Modified by:   gosea
 * @Last Modified time: 2016-06-21 12:33:11
 */
namespace Manage\Controller;

class MembergroupController extends CommonController
{

    public function index()
    {

        $keyword = I('keyword', '', 'htmlspecialchars,trim'); //关键字
        $where   = array();
        if (!empty($keyword)) {
            $where['name'] = array('LIKE', "%{$keyword}%");
        }
        $count = M('membergroup')->where($where)->count();

        $page           = new \Common\Lib\Page($count, 10);
        $page->rollPage = 7;
        $page->setConfig('theme', '%HEADER% %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%');
        $limit = $page->firstRow . ',' . $page->listRows;
        $list  = M('membergroup')->where($where)->order('rank,id')->limit($limit)->select();

        $this->assign('page', $page->show());
        $this->assign('vlist', $list);
        $this->assign('type', '会员组列表');
        $this->assign('keyword', $keyword);
        $this->display();
    }
    //添加
    public function add()
    {
        //当前控制器名称
        $actionName = strtolower(CONTROLLER_NAME);
        if (IS_POST) {
            $this->addPost();
            exit();
        }
        $this->display();
    }

    //
    public function addPost()
    {
        //M验证
        $validate = array(
            array('name', 'require', '会员组名必须填写！'),
            array('name', '', '会员组名已经存在！', 0, 'unique', 1),
        );
        $db = M('membergroup');
        if (!$db->validate($validate)->create()) {
            $this->error($db->getError());
        }
        if ($id = M('membergroup')->add()) {
            $this->success('添加成功', U('Membergroup/index'));
        } else {
            $this->error('添加失败');
        }
    }

    //编辑
    public function edit()
    {
        //当前控制器名称
        $id         = I('id', 0, 'intval');
        $actionName = strtolower(CONTROLLER_NAME);

        if (IS_POST) {
            $this->editPost();
            exit();
        }

        $vo = M($actionName)->find($id);
        $this->assign('vo', $vo);
        $this->display();
    }

    //修改
    public function editPost()
    {

        $name = I('name', '', 'trim');
        $id   = I('id', 0, 'intval');
        if (empty($name)) {
            $this->error('会员组名必须填写！');
        }

        if (M('membergroup')->where(array('name' => $name, 'id' => array('neq', $id)))->find()) {
            $this->error('会员组名已经存在！');
        }

        if (false !== M('membergroup')->save($_POST)) {
            $this->success('修改成功', U('Membergroup/index'));
        } else {

            $this->error('修改失败');
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

        if (M('membergroup')->delete($id)) {
            $this->success('彻底删除成功', U('Membergroup/index'));
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

        if (M('membergroup')->where($where)->delete()) {
            $this->success('彻底删除成功', U('Membergroup/index'));
        } else {
            $this->error('彻底删除失败');
        }
    }

}
