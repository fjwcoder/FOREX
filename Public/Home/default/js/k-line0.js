var kParamter = {
	opTime: 1, //买入时间
	opMoney: 10, //买入金额
	type: 2, //汇率类型
	flag: 0, //涨 跌
	isOperate: false, //是否正在交易
	timeTicket: 0,
	//动态图标
	dyOption: [], //myChart.setOption(dyOption);
	now: '', //时间过渡参数
	base: 0, //时间过渡参数
	time: [], //过渡时间
	dyTime: [], //myChart时间
	forex: [], //过渡数据
	dyData: [], //myChart数据
	splitTime: 5000, //刷新时间
	currTime: 0, //买入后当前时间
	stopTime: 60000, //本次买入时间
	timeInterval: '',
}
var kForex ={star: 0,max: 0,min: 0,}
var labelTop = {normal: {position: 'top'}};
// 数据意义：开盘(open)，收盘(close)，最低(lowest)，最高(highest)
var myChartK = echarts.init(document.getElementById('k-line-graph')); //K线图
var myChart = echarts.init(document.getElementById('dynamic-graph')); //实时动态图

function paramterRefresh(){
	kParamter = {
		opTime: 1, //买入时间
		opMoney: 10, //买入金额
		type: 2, //汇率类型
		flag: 0, //涨 跌
		isOperate: false, //是否正在交易
		timeTicket: 0,
		//动态图标
		dyOption: [], //myChart.setOption(dyOption);
		now: '', //时间过渡参数
		base: 0, //时间过渡参数
		time: [], //过渡时间
		dyTime: [], //myChart时间
		forex: [], //过渡数据
		dyData: [], //myChart数据
		splitTime: 5000, //刷新时间
		currTime: 0, //买入后当前时间
		stopTime: 60000, //本次买入时间
		timeInterval: '',
	}
}

//将数据处理为正副值
function setSpcData(spcdata, shift){
	var first = spcdata[0];
	for(var i=0; i<spcdata.length; i++){
		var arr = [];
		if(spcdata[i]<first){
			arr = -spcdata[i];
		}else{
			arr = {value: spcdata[i], label: labelTop};
		}
		if(shift){
			kParamter.forex.push(arr);
		}else{
			kParamter.dyData.push(arr);
		}
		
	}
}

function addData(shift, subTime) {
	if(subTime){//记录，时间减
		kParamter.now = [kParamter.now.getHours(), kParamter.now.getMinutes()-1, kParamter.now.getSeconds()].join(':');
		kParamter.dyTime.push(kParamter.now);
	}else{//时间加
		kParamter.now = [kParamter.now.getHours(), kParamter.now.getMinutes(), kParamter.now.getSeconds()].join(':'); //获取现在的时间
		kParamter.time.push(kParamter.now);
		
	}
    if (shift) {
		//当这样添加一个删一个时，会把原来记录里的数据再重新显示一次
		//所以修改成清空源数据，把新数据添加进去
		kParamter.dyTime.push(kParamter.time[0]);
		kParamter.dyTime.shift();
		kParamter.time.shift();
		
		kParamter.dyData.push(kParamter.forex[0]);
        kParamter.dyData.shift();
		kParamter.forex.shift();
    }
	kParamter.base = kParamter.base + kParamter.splitTime;
    kParamter.now = new Date(kParamter.base);
}

//K线图分离数据
function splitData(rawData) { 
	var categoryData = []; //横坐标，时间轴
	var values = [];  //纵坐标，数据轴
	for (var i = 0; i < rawData.length; i++) {
		categoryData.push(rawData[i].splice(0, 1)[0]);
		values.push(rawData[i])
	}
	return {
		categoryData: categoryData,
		values: values
	};
}

//字符串型数据转number
function StrToNumber(data){
	var values = [];
	for(var i = 0; i < data.length; i++){
		var array = [];
		for(var j = 0; j < data[i].length; j++){
			array[j] = parseFloat(data[i][j]);
		}
		values.push(array);
	}
	return values;
} 


//显示历史数据
function showRecord(type){
	myChartK.clear();
	$.ajax({
		type: "POST",
		data: {type: type},
		url: "/Home/Main/ajaxGetRecord",
		success: function(result){
			if(result['status']){
				var data0 = splitData(result['data']);
				var data1 = StrToNumber(data0.values);
				myChartK.setOption({
					title: { //标题组件
						text: result['remark']+'  历史K线图',
						left: 100
					},
					tooltip: { //提示框组件
						trigger: 'axis',
						axisPointer: {
							type: 'line'
						}
					},
					grid: { // 图标的上下左右留白
						left: '10%',
						right: '10%',
						bottom: '15%'
					},
					xAxis: { // 直角坐标系 grid 中的 x 轴
						type: 'category', //坐标轴类型：value,category,time, log
						data: data0.categoryData,
						scale: true, //是否是脱离 0 值比例。只在数值轴中（type: 'value'）有效。在设置 min 和 max 之后该配置项无效。
						boundaryGap : false, //坐标轴两边留白策略
						axisLine: {onZero: false},
						splitLine: {show: false},
						splitNumber: 5, //坐标轴的分割段数.在类目轴category中无效。
						min: 'dataMin', //坐标轴刻度最小值。可以设置成特殊值 'dataMin'，此时取数据在该轴上的最小值作为最小刻度。
						max: 'dataMax'
					},
					yAxis: {
						scale: true,
						splitArea: {
							show: true
						}
					},
					dataZoom: [ // 用于区域缩放，从而能自由关注细节的数据信息，或者概览数据整体，或者去除离群点的影响
						{
							type: 'inside',
							start: 0,
							end: 100
						},
						{
							show: true,
							type: 'slider',
							y: '90%',
							start: 50,
							end: 100
						}
					],
					series: [ //系列列表。每个系列通过 type 决定自己的图表类型
						{
							name: '实时汇率',
							barWidth: 10, //K线图柱子的宽度
							type: 'candlestick',
							data: data1,
							markPoint: { //图表标注。
								label: {
									normal: {
										formatter: function (param) {
											return param != null ? Math.round(param.value) : '';
										}
									}
								},
								data: [
									{
										name: '汇率标点',
										coord: ['2017/5/31', 2300], //fjw_mark
										itemStyle: {
											normal: {color: 'rgb(41,60,85)'}
										}
									},
									{
										name: 'highest value',
										type: 'max',
										valueDim: 'highest'
									},
									{
										name: 'lowest value',
										type: 'min',
										valueDim: 'lowest'
									},
									{
										name: 'average value on close',
										type: 'average',
										valueDim: 'close'
									}
								],
								tooltip: {
									formatter: function (param) {
										return param.name + '<br>' + (param.data.coord || '');
									}
								}
							},
							markLine: { //标记线：收盘最高线，收盘最低线，高-低线
								symbol: ['none', 'none'],
								data: [
									[
										{
											name: 'from lowest to highest',
											type: 'min',
											valueDim: 'lowest',
											symbol: 'circle',
											symbolSize: 10,
											label: {
												normal: {show: false},
												emphasis: {show: false}
											}
										},
										{
											type: 'max',
											valueDim: 'highest',
											symbol: 'circle',
											symbolSize: 10,
											label: {
												normal: {show: false},
												emphasis: {show: false}
											}
										}
									],
									{
										name: 'min line on close',
										type: 'min',
										valueDim: 'close'
									},
									{
										name: 'max line on close',
										type: 'max',
										valueDim: 'close'
									}
								]
							}
						},

					]
				});
			}else{
				alert('数据错误，请刷新后重试');
			}
		},
		error: function(e){
			console.log(e);
		}
	});
}

//开启新的K线图
function setOperatePanel(){
	myChartK.clear();
	$('.mask').height($('.panel-body').height());
	$('.dynamic-graph-panel').height($('.category-select').height());
	$('.mask').fadeIn(200);
	$('.dynamic-graph-panel').fadeIn(200);
	$.ajax({
		type: 'POST',
		url: '/Home/Main/getOperateItem',
		success: function(data){
			if(data['status']){
				var tHtml = '';
				var mHtml = '';
				for(var i=0; i<data['time'].length; i++){
					tHtml += '<option name="'+data['time'][i]['name']+'" value="'+data['time'][i]['minutes']+'">'+data['time'][i]['title']+'</option>';
				}
				for(var i=0; i<data['money'].length; i++){
					mHtml += '<option name="'+data['money'][i]['name']+'" value="'+data['money'][i]['money']+'">'+data['money'][i]['title']+'</option>';
				}
				$('.operate-time-select').html(tHtml);
				$('.operate-money-select').html(mHtml);
				
			}
		},
		error: function(e){
			console.log(e);
		}
	});
	
}


$(document).ready(function(){
	//关闭遮罩层
	$('.mask').click(function(){
		if(kParamter.isOperate == false){//当处于非操作状态下才能关闭
			myChart.clear();
			$('.dynamic-graph-panel').fadeOut(300);
			$(this).fadeOut(500);
			myChartK.clear();//关闭遮罩层的时候，清除图标
			paramterRefresh(); //重置参数
		}else{
			alert('已买入，不能关闭！');
		}
	});
	
	//涨跌控制按钮
	$('.contral-button').click(function(){
		if(kParamter.isOperate == false){
			kParamter.isOperate = true;
			kParamter.opMoney = $('.operate-money-select').val();
			kParamter.opTime = $('.operate-time-select').val();
			kParamter.flag = $(this).attr('value');
			$.ajax({
				type: "POST",
				data: {type: kParamter.type, time: kParamter.opTime, money: kParamter.opMoney, flag: kParamter.flag},//, start: $('#current-forex').val()},
				url: "/Home/Main/ajaxGetData",
				success: function(result){
					if(result['status']){
						console.log(result['data']);
						setSpcData(result['data'], true);// 把新数据放入forex[];
						kParamter.now = new Date();
						kParamter.base = kParamter.now.getTime();
						for (var i = 1; i < 11; i++) {
							addData();
						}
						myChart.clear();
						myChart.showLoading({
							text: '正在连接数据服务器……',
							effect: 'whirling'
						});
						$('#open-forex').val(result['data'][0]);
						kParamter.timeInterval = setInterval(function(){
							if(kParamter.currTime<(kParamter.stopTime-1000)){ 
								addData(true);
								$('#current-forex').val(Math.abs(kParamter.dyData[kParamter.dyData.length-1])); //设置显示当前汇率
								myChart.hideLoading();
								myChart.setOption(kParamter.dyOption);
								kParamter.currTime += kParamter.splitTime;
							}else{
								clearInterval(kParamter.timeInterval);
								$.ajax({
									type: 'post',
									url: '/Home/Main/getResult',
									success: function(getData){
										console.log(getData);
										if(getData['status']){
											
											$("#amount").html(getData['data']);
											if(result['result'] == 1){
												alert('THAT\'S OVER, CONGRATULATIONS!');
											}else{
												alert('THAT\'S OVER, I\'M SORRY……');
											}
											//paramterRefresh();
										}else{
											//paramterRefresh();
											alert('数据错误');
										}
									},
									error: function(e){
										//paramterRefresh();
										alert('数据链接错误');
									}
								});
								paramterRefresh(); //kParamter参数恢复
							}
							
						}, 5000);//kParamter.splitTime);

					}else{
						paramterRefresh();
						alert(result['data']);
					}
				},
				error: function(e){console.log(e);}
			});
		}else{
			alert('买入状态，不可操作');
		}
	});
	
	
	var timer = null;
	// 单击
	$(".category-select-item").click(function(){
		var number = $(this).attr('value');
		clearTimeout(timer);
		timer = setTimeout(function(){
			showRecord(number);
		}, 300);
	});
	// 双击
	$(".category-select-item").dblclick(function(){
		clearTimeout(timer);
		var kind = $(this).attr('name');
		setOperatePanel();//设置操作面板
		
		kParamter.type = $(this).attr('value');//设置类型
		//动态设置echarts大小
		myChart.resize({
			width: $('#dynamic-graph').width(),
			height: $('#dynamic-graph').height(),
		});
		//设置一下时间
		kParamter.now = new Date();
		kParamter.base = kParamter.now.getTime();
		myChart.showLoading();
		
		for (var i = 1; i < 11; i++) {
			addData(false, true);
		}
		
		kParamter.dyOption = {
			backgroundColor: '#6c6c6c',
			title: {
				text: '',//'实时动态图',
				left: 100
			},
			grid:{
				//left: '10%',
				//right: '10%',
				bottom: '5%'
			},
			tooltip : {
				trigger: 'axis',
				axisPointer : {            // 坐标轴指示器，坐标轴触发有效
					type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
				}
			},
			xAxis: {
				type: 'category',
				boundaryGap: ['0', '0'],
				data: kParamter.dyTime,
			},
			yAxis: {

				type: 'value',
				
				splitArea:{show: true},
				scale: true,								
				position: 'top',
				splitLine: {lineStyle:{type:'dashed'}},
				
			},
			series: [
				{
					name:'汇率',
					//barGap: '1%',
					barWidth: 40,
					type:'bar',
					data: kParamter.dyData,
				}
			]
		};
		//获取十个历史数据
		$.ajax({
			type: 'POST',
			data: {type: kParamter.type},
			url: '/Home/Main/getDyRecord',
			success: function(data){
				if(data['status']){
					kForex.max = parseInt(parseInt(data['data'])*1000*1.03);
					kForex.min = parseInt(parseInt(data['data'])*1000*0.97);
					kParamter.dyOption.title.text = 'USD-'+kind+' 汇率记录图';
					//设置当前汇率
					setInterval(function(){
						if(kParamter.isOperate == false){
							kForex.star = kForex.min+Math.random()*(kForex.max-kForex.min+1);
							$('#current-forex').val((kForex.star/1000).toFixed(4));
						}
					}, kParamter.splitTime);
					myChart.hideLoading();
					setSpcData(data['data']);
					myChart.setOption(kParamter.dyOption); 
				}else{
					alert('数据错误，请刷新后重试');
				}
			},
			error: function(e){
				console.log(e);
			}
		});
		

	});
	
	
	
	
});