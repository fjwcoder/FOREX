<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE HTML>
<html id="regist-html">
<head>
<meta charset="utf-8"> 
<meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport">
<meta content="yes" name="apple-mobile-web-app-capable">
<title>免费注册</title>

<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/Public/Home/default/css/layout.css" type="text/css"/>
<script src="/Public/Home/default/js/regist.js"></script>

</head>
<body>
<div class="panel panel-default">
	<div class="panel-body regist_index">
		<div id="login-div" class="login-div">
			<div id="logo-div" class="logo-div wp_35 f_l">
				<img class="logo-img wp_70" src="/Public/Home/default/images/account.png"/><br>
				<div class="logo-font-div wp_100 t_c">LOGO</div>
			</div>
			<div class="login-info-div wp_55 f_l">
				<form id="login-form" class="login-form" action="<?php echo U('Regist/regist');?>" method="post" enctype="multipart/form-data">
					<br>
					<span class="login-title">注  册</span><br>

					<div class="login-input-group wp_100 ">
						<img class="input-title-img" src="/Public/Home/default/images/account.png"/>
						<input id="content-account" type="text" class="input-content login-input-content wp_45" name="content-account" placeholder="账  号" maxlength="16">
						<label id="label-account" for="content-account">* 账号已存在</label>
					</div>

					<div class="login-input-group wp_100 ">
						<img class="input-title-img" src="/Public/Home/default/images/password.png"/>
						<input id="content-pwd" type="text" class="input-content login-input-content wp_45" name="content-pwd" placeholder="密  码" maxlength="20">
						<label id="label-pwd" for="content-pwd">* 请输入密码</label>
					</div>

					<div class="login-input-group wp_100 ">
						<img class="input-title-img" src="/Public/Home/default/images/password.png"/>
						<input id="content-conpwd" type="text" class="input-content login-input-content wp_45" name="content-conpwd" placeholder="确认密码" maxlength="20">
						<label id="label-conpwd" for="content-conpwd">* 密码不一致</label>
					</div>

					<div class="login-input-group wp_100 ">
						<img class="input-title-img" src="/Public/Home/default/images/referrer.png"/>
						<input id="content-person" type="text" class="input-content login-input-content wp_45" name="content-person" placeholder="推荐人ID" maxlength="16">
						<label id="label-person" for="content-person">* 推荐人不存在</label>
					</div>

					<div class="login-input-group wp_100 ">
						<img class="input-title-img" src="/Public/Home/default/images/account.png"/>
						<input id="content-nickname" type="text" class="input-content login-input-content wp_45" name="content-nickname" placeholder="姓名" maxlength="16">
						<label id="label-nickname" for="content-nickname">* 姓名</label>
					</div>

					<div class="login-input-group wp_100 ">
						<img class="input-title-img" src="/Public/Home/default/images/phone.png"/>
						<input id="content-mobile" type="text" class="input-content login-input-content wp_45" name="content-mobile" placeholder="手机号码" maxlength="11">
						<label id="label-mobile" for="content-mobile">* 手机号格式错误</label>
					</div>

					<div class="login-input-group wp_100 ">
						<img class="input-title-img" src="/Public/Home/default/images/id_card.png"/>
						<input id="content-number" type="text" class="input-content login-input-content wp_45" name="content-number" placeholder="身份证号码" maxlength="18">
						<label id="label-number" for="content-number">* 身份证格式错误</label>
					</div>

					<div class="login-input-group wp_100 ">
						<img class="input-title-img" src="/Public/Home/default/images/id_card.png" style="margin-top: -20px;"/>
						<a href="javascript:;" class="a-upload">
							<input type="file" name="upcard0" class="button-upload" id="">上传正面身份证
						</a>
					</div>
					<div class="login-input-group wp_100 ">
						<img class="input-title-img" src="/Public/Home/default/images/id_card.png" style="margin-top: -20px;"/>
						<a href="javascript:;" class="a-upload">
							<input type="file" name="upcard1" class="button-upload" id="">上传反面身份证
						</a>
					</div>

					<div class="login-input-group wp_100 ">
						<input type="text" class="input-content login-input-content wp_50" name="content-vcode" placeholder="验证码" maxlength="4">
						<img id="vcode" class="input-verify-img wp_30" src="<?php echo U('Login/verify',array('id' => 'a_login_1'));?>" data-url="<?php echo U('Login/verify',array('id' => 'a_login_1'));?>" align="absmiddle"/>
					</div>
					<button type="submit" class="btn btn-primary button-login w150">注  册</button><br>
					<a href="/Home/Login.html"><span class="back-login jump-font">我已有账号，点击进行登录</span></a>
					<!--<script type="text/javascript">
						



					</script>-->
				</form>
			</div>	
		</div>
	</div>
</div>
</body>
</html>