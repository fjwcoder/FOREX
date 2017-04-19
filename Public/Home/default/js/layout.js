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
	
})