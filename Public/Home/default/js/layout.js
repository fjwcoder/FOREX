var Parameter = {
	
}

$(document).ready(function(){
	if($("#regist-html").length){
		$('#vcode').click(function(event) {
			/* Act on the event */
			var verifyUrl = $(this).attr('data-url');
			verifyUrl += '#'+Math.random();
			$(this).attr("src",verifyUrl);
		});
	}
	
	/* $('#record-select').change(){
		console.log($(this).val());
	} */
	
	
	//币种滑动
	var holdPosition = 0;
	var upPosition = 0;
	var mySwiper = new Swiper('.swiper-container', {
		slidesPerView: 'auto',
		mode: 'vertical',
		watchActiveIndex: true,
		mousewheelControl: true,
		freeMode: true
	});
	
	/* $(".category-select-item").click(function(){
		$(".category-select-item").css({"height":"40px", "lineHeight":"40px", "textAlign":"left", "backgroundColor":"#acb9c9", "fontSize":"16px"});
		$(this).css({"height":"50px", "lineHeight":"50px", "textAlign":"center", "backgroundColor":"#61c7f2", "fontSize":"25px"});
		
		
	});
	
	$(".contral-button").click(function(){
		alert("暂无数据");
	}); */
	
	
	
})