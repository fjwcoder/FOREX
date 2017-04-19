<?php

namespace Home\Controller;
class RegistController extends HomeCommonController
{

    public function index(){
        $this->display();
    }
    
    //方法：regist
    // 注册
    public function regist()
    {
        header("Content-type:text/html;charset=UTF-8");
        $mobile_rule = "/^((13[0-9])|147|(15[0-35-9])|180|182|(18[5-9]))[0-9]{8}$/A";  
        $email_rule = "/([a-z0-9]*[-_.]?[a-z0-9]+)*@([a-z0-9]*[-_]?[a-z0-9]+)+[.][a-z]{2,3}([.][a-z]{2})?/i"; 

        if(IS_POST){
            $regist = array();
            if (!check_verify(I('content-vcode', '', 'htmlspecialchars,trim'), 'a_login_1')) {
                die('验证码不正确');
            }
            // // 1. 验证账号格式
            $accountid = I('content-account', '', 'htmlspecialchars,trim');
            $account_check = M('user') -> where(array('accountid'=>$accountid)) -> find();
            if(empty($account_check)){
                $regist['accountid'] = $accountid;
            }else{
                die('账号已经存在');
            }

            if(preg_match($mobile_rule, $accountid)){
                $regist['mobile'] = $accountid;
            }else if(preg_match($email_rule, $accountid)){
                $regist['email'] = $accountid;
            }
            
            // 2. 验证密码
            // 3. 验证确认密码
            if($_POST['content-pwd'] === I('content-conpwd', '', 'htmlspecialchars,trim')){
                $regist['password'] = MD5(I('content-conpwd', '', 'htmlspecialchars,trim'));
            }else{
                die('密码不一致');
            }
            // 4. 验证推荐人ID
            // echo I('content-person', '', 'htmlspecialchars,trim'); die;
            $person_check = M('user') -> where(array('userid'=>I('content-person', '', 'htmlspecialchars,trim'))) -> find();
            if(!empty($person_check)){
                $regist['introduction'] = I('content-person', '', 'htmlspecialchars,trim');
            }else{
                //检查是否是第一个用户
                $first = M('user') -> select();
                if(empty($first)){
                    $regist['introduction'] = I('content-person', '', 'htmlspecialchars,trim');
                }else{
                    die('推荐人不存在');
                }
            }
            // 验证姓名
            $regist['nickname'] = I('content-nickname', '', 'htmlspecialchars,trim');
            if(empty($regist['nickname'])){
                die('姓名不能为空');
            }
            // 5.验证手机号
            if(preg_match($mobile_rule, I('content-mobile', '', 'htmlspecialchars,trim'))){
                $regist['mobile'] = I('content-mobile', '', 'htmlspecialchars,trim');
            }else{
                die('手机号格式错误');
            }
            // 身份证号
            $regist['id_number'] = I('content-number', '', 'htmlspecialchars,trim');
            if(empty($regist['id_number'])){
                die('身份证号不能为空');
            }
            // 6. 验证身份证信息
            $path = './Public/Uploads/IDcard/';
            $id_card_name = I('content-account', NOW_TIME, 'htmlspecialchars,trim');
            $upload0 = R("Public/upload", array($path, ($id_card_name.'0')));
            if(is_uploaded_file($_FILES['upcard0']['tmp_name'])){
                $img0 = $upload0->uploadOne($_FILES['upcard0']);
                if($img0){
                    $regist['id_front'] = '/Public/Uploads/IDcard/'.$img0['savename']; 
                    
                }else{
                    die('正面身份证上传失败');
                }
            }else{
                die('请上传正面身份证');
            }

            $upload1 = R("Public/upload", array($path, ($id_card_name.'1')));
            if(is_uploaded_file($_FILES['upcard1']['tmp_name'])){
                $img1 = $upload1->uploadOne($_FILES['upcard1']);
                if($img1){
                    $regist['id_reverse'] = '/Public/Uploads/IDcard/'.$img1['savename']; 
                }else{
                    die('反面身份证上传失败');
                }
            }else{
                die('请上传反面身份证');
            }
            $regist['position'] = 'CO';
            $regist['status'] = 0;
            $regist['regtime'] = intval(time());
            $regist['regdate'] = date('Y-m-d H:i:s', time());
            $save = M('user') ->data($regist) ->add();
            if($save){
                $id = M('user') -> where(array('accountid'=>$_POST['content-account'])) -> getField('id'); 
                if($id){
                    $userid = strval(rand(10000000, 99999999)).strval($id);
                }else{
                    $userid = 'error';
                }
                //设置用户ID
                $setID = M('user') -> where(array('id'=>$id)) -> setField('userid', $userid); 
                $this->success('注册成功，请等待审核', 'Index/index');
                //die('注册成功，请等待审核');
            }else{
                $this->error('注册失败，请核对信息', 'Regist/index');
                //die('注册失败，请重新注册');
            }
        }else{
            $this->error('注册失败，请核对信息', 'Regist/index');
        }

    }

    //注册验证码
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

    public function check_account(){
        header('Content-type: application/json');
        $name = I('name', '', 'htmlspecialchars,trim');
        $check_name = M('user') -> where(array('accountid'=>$name)) -> find();
        if($check_name){//查到返回错误
            echo json_encode(array('status'=>false)); die;
        }else{
            echo json_encode(array('status'=>true)); die;
        }
    }

    //推荐人是否存在
    public function check_person(){
        header('Content-type: application/json');
        $person = I('name', '', 'htmlspecialchars,trim');
        $check_person = M('user') -> where(array('userid'=>$name)) -> find();
        if($check_person){//查到返回错误
            echo json_encode(array('status'=>false)); die;
        }else{
            echo json_encode(array('status'=>true)); die;
        }
    }

    
}
