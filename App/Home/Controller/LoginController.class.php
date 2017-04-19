<?php
namespace Home\Controller;

class LoginController extends HomeCommonController
{
    //方法：login
    // 登录方法
    public function index()
    {

        go_mobile();
        if(isset($_SESSION[C('USER_ID')])){
            session(null);
            header('Location: /Home/Main.html');
        }
        // $this->assign('title', C('CFG_WEBNAME'));
        $this->display();

    }

    public function login(){
        header("Content-type:text/html;charset=UTF-8");
        $mobile_rule = "/^((13[0-9])|147|(15[0-35-9])|180|182|(18[5-9]))[0-9]{8}$/A";  
        $email_rule = "/([a-z0-9]*[-_.]?[a-z0-9]+)*@([a-z0-9]*[-_]?[a-z0-9]+)+[.][a-z]{2,3}([.][a-z]{2})?/i"; 

        if(!IS_POST){
            E('页面不存在');
        }
        $username = I('login-account', '', 'htmlspecialchars,trim');
        $password = I('login-pwd', '');
        $verify = I('login-vcode', '', 'htmlspecialchars,trim');
        
        if ($username == '' || $password == '') {
			die('账号或密码不能为空');
		}
        if (!check_verify($verify, 'a_login_1')) {
            die('验证码不正确');
		}

        //查看登录的账号格式：1.用户名 2.手机号 3.邮箱
        if(preg_match($mobile_rule, $username)){//手机号
            $where = array('mobile'=>$username);
        }else if(preg_match($email_rule, $username)){
            $where = array('email'=>$username);
        }else{
            $where = array('accountid'=>$username);
        }
        $user = M('user') -> where($where) -> find();

        if(!$user || (MD5($password) != $user['password'])){
            die('账号或密码错误');
        }
        if($user['islock'] === 1){
            die('用户被锁定，请联系客服');
        }
        if($user['status'] === 0){//0正在审核 1正常 2锁定 3职位申请
            die('正在审核，请稍候……');
        }else if($user['status'] === 2){
            die('审核未通过，请重新注册');
        }
        //更新数据库
        $data = array('id'=> $user['id'], //保存时会自动为此ID的更新
            'logintime '=>time(),
            'loginip' => get_client_ip(),
            'loginnum' => $user['loginnum']+1,
        );
        //更新数据库
		M('user')->save($data);

        //保存session和cookie信息
        $_SESSION[C('USER_ID')] = $user['id'];
        $_COOKIE[C('ACCOUNT_ID')] = $user['accountid'];
        // $_SESSION['ACCOUNT_ID'] = $user['accountid'];
        // $_SESSION['ACCOUNT_ID'] = $user['accountid'];
        // $_SESSION['AMOUNT'] = $user['amount'];
        //上述都完成后，登录成功，进行页面跳转
        // $this -> redirect('Main/index', '', 0, '页面跳转中……');
        unset($user);
        header('Location: /Home/Main.html');
        exit;  
    }




    //登录验证码
	public function verify($id = '1') {

		//ob_clean();
		$config = array(
			'fontSize' => 18,
			'length' => 4,
			'imageW' => 140,
			'imageH' => 35,
			'bg' => array(206, 233, 246),
			'useCurve' => false,
			'useNoise' => false,
		);
		$verify = new \Think\Verify($config);
		$verify->entry($id);
	}

    public function logout(){
        session(null);
    }
}
