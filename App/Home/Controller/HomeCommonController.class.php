<?php
/**

 */
namespace Home\Controller;

use Think\Controller;

//公共验证控制器HomeCommonController
class HomeCommonController extends Controller
{
    public static $user = '';

    // 空操作，404页面
    public function _empty()
    {
        header("HTTP/1.1 404 Not Found");
        header("Status: 404 Not Found");
        $this->display(get_tpl('404.html'));
    }

    protected function _initialize()
    {
        // $_SESSION[C('USER_ID')] = 1;

        if(!isset($_SESSION[C('USER_ID')])){
            $_SESSION[C('LOGIN_STATUS')] = '登录';
            $_SESSION[C('PRE_USER')] = '旅客';
            $_SESSION[C('AMOUNT')] = '8888888';
        }
        
        if(isset($_SESSION[C('USER_ID')])){
            $this->user = M('user') -> where(array('id'=>intval($_SESSION[C('USER_ID')]))) -> find();
            if(empty($this->user)){
                die('请重新登录');
            }

            //查询账号是否被封停
            if($this->user['islock'] === 1){
                die('账号被封停');
            }
            $_SESSION[C('LOGIN_STATUS')] = '注销';
            $_SESSION[C('PRE_USER')] = $this->user['userid'];
            $_SESSION[C('AMOUNT')] = $this->user['amount'];
            $this->assign('user', $this->user);
        }
    }

}
