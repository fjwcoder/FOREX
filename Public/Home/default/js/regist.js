

$(document).ready(function(){
	//验证账号是否存在
	$('#content-account').blur(function(event){
		$.ajax({
			type: "POST",
			data: {name: $(this).val()},
			url: "/Home/Regist/check_account",
			success: function(data){
				if(data['status']){
					$('#label-account').css({"display": "none"});
				}else{
					$('#label-account').css({"display": "inline-block"});
				}	
			},
			error: function(e){
				$('#label-account').css({"display": "none"});
			}
		});
		
	});
	
	//验证密码是否一致
	$('#content-conpwd').blur(function(event){
		if($('#content-pwd').val() === $('#content-conpwd').val()){
			$('#label-conpwd').css({"display": "none"});
		}else{
			$('#label-conpwd').css({"display": "inline-block"});
		}
	});
	
	//验证推荐人是否存在
	$('#content-person').blur(function(event){
		if(($(this).val() != '') && ($(this).val() != null) && (typeof($(this).val()) != 'undefined')){
			$.ajax({
				type: "POST",
				data: {name: $('#content-person').val()},
				url: "/Home/Regist/check_person",
				success: function(data){
					if(data['status']){
						$('#label-person').css({"display": "none"});
					}else{
						$('#label-person').css({"display": "inline-block"});
					}	
				},
				error: function(e){
					$('#label-person').css({"display": "none"});
				}
			});
		}
		
	});
	
	//验证手机号格式是否正确
	$('#content-mobile').blur(function(){
		var check = /^1((3\d)|(4[57])|(5[01256789])|(8\d))\d{8}$/;
		if(check.test($(this).val())){
			$('#label-mobile').css({"display": "none"});
		}else{
			$('#label-mobile').css({"display": "inline-block"});
		}
	
	});
	
	
	//验证码更新
	$('#vcode').click(function(event) {
		/* Act on the event */
		var verifyUrl = $(this).attr('data-url');
		verifyUrl += '#'+Math.random();
		$(this).attr("src",verifyUrl);
	});
	
	
	
})