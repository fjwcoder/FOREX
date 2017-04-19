var kParamter = {
	//opTime: 1, //买入时间
	//opMoney: 10, //买入金额
	type: 2, //汇率类型
	flag: 0, //涨 跌
	isOperate: false, //是否正在交易
	ktime: 1, //生成K线柱的时间间隔 default 1min
	oneMin: 20, //一分钟推多少次
	allTime: 20, // 需要推送几次才能生成K线柱 默认1分钟（20次）
	kdata: [], //series 的 data
	current: 0, //通过后台获取到的最新的一个数据
	timeInterval: '', // setInterval
	timeTicket: 0,	//买入时间段 毫秒计算
	nowTime: 0, //倒计时 秒计算
	currTime: 0, //本手买入的当前时间(倒计时用)
	recordCount: 0, // 加载记录后，当前K线柱的剩余时间
	lowest: 0, //最低值
	highest: 0, //最高值
	order_no: ''//单号
};

// 数据意义：开盘(open)，收盘(close)，最低(lowest)，最高(highest)
var myChart = echarts.init(document.getElementById('k-line-graph')); //K线图

function refreshParamter(){
	kParamter.flag = 0;
	kParamter.isOperate = false;
	clearInterval(kParamter.timeInterval);
	kParamter.timeTicket = 0;
	kParamter.currTime = 0;
	kParamter.lowest = 0;
	kParamter.highest = 0;
	kParamter.order_no = 0;
}
function calculateMA(dayCount, data) {
    var result = [];
    for (var i = 0, len = data.length; i < len; i++) {
        if (i < dayCount) {
            result.push('-');
            continue;
        }
        var sum = 0;
        for (var j = 0; j < dayCount; j++) {
            sum += data[i - j][1];
        }
        result.push(sum / dayCount);
    }
    return result;
}

/*shift:判断是否生成新的K线柱
	true 生成
	false 不生成
*/
function addData(shift){
	var array = new Array();
	if(shift){ //生成新的K线柱
		array = [kParamter.current, kParamter.current, kParamter.current, kParamter.current];
		kParamter.kdata.shift(); //删除该数组最前边的一个
		kParamter.allTime = kParamter.ktime*kParamter.oneMin;
	}else{
		array = kParamter.kdata.pop();//删除最后一个，并返回
		array[1] = kParamter.current; //收盘值
		//判断最低值
		if(array[2]>kParamter.current){
			array[2] = kParamter.current;
		}
		//判断最高值
		if(array[3]<kParamter.current){
			array[3] = kParamter.current; 
		}
	}
	kParamter.kdata.push(array);
}

//增加横坐标数值
function categoryAdd(rawData){
	var categoryData = []; //横坐标，时间轴
	var values = [];  //纵坐标，数据轴
	/* var block = new Array();
	block = ['0', '0', '0', '0'];
	console.log(typeof(block));
	console.log(typeof(rawData[0])); */

	for(var i=0;i<rawData.length;i++){
		categoryData.push(i);
	}
	for(var i=rawData.length-1; i>=0; i--){
		values.push(rawData[i]);
	}
	return {
		categoryData: categoryData,
		values: values
	}
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
//option
var option = {
    backgroundColor: '#21202D',
	animation: false,
    legend: {
        data: ['TIME-K', 'MA5', 'MA10', 'MA20', 'MA30'],
        inactiveColor: '#777',
        textStyle: {
            color: '#fff'
        },
		left: 400,
    },
	title: {
		text: '',//result['remark']+'  历史K线图',
		left: 50,
		textStyle:{
			color: '#fff'
		}
	},
    tooltip: {
        trigger: 'axis',
        axisPointer: {
            animation: false,
            type: 'cross',
            lineStyle: {
                color: '#376df4', //376df4
                width: 2,
                opacity: 1
            }
        }
    },
    xAxis: {
        type: 'category',
        data: [],
        axisLine: { lineStyle: { color: '#8392A5' } },
		min: 'dataMin', //坐标轴刻度最小值。可以设置成特殊值 'dataMin'，此时取数据在该轴上的最小值作为最小刻度。
		max: 'dataMax'
    },
    yAxis: {
        scale: true,
        axisLine: { lineStyle: { color: '#8392A5' } }, //8392A5
        splitLine: { show: false }
    },
    grid: {
        left: '5%',
		right: '5%',
		bottom: '15%'
    },
    dataZoom: [{
        textStyle: {
            color: '#8392A5'
        },
        handleIcon: 'M10.7,11.9v-1.3H9.3v1.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4v1.3h1.3v-1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7V23h6.6V24.4z M13.3,19.6H6.7v-1.4h6.6V19.6z',
        handleSize: '80%',
        dataBackground: {
            areaStyle: {
                color: '#8392A5'
            },
            lineStyle: {
                opacity: 0.8,
                color: '#8392A5'
            }
        },
        handleStyle: {
            color: '#fff',
            shadowBlur: 3,
            shadowColor: 'rgba(0, 0, 0, 0.6)',
            shadowOffsetX: 2,
            shadowOffsetY: 2
        }
    }, 
	{
        type: 'inside',
		start: 0,
		end: 100
    }],
    series: [
        {
            type: 'candlestick',
            name: 'TIME-K',
            data: [],
            itemStyle: {
                normal: {
                    color: '#FD1050',
                    color0: '#0CF49B',
                    borderColor: '#FD1050',
                    borderColor0: '#0CF49B'
                }
            },
			markLine:{
				symbol: ['none', 'none'],
				data: [
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
        {
            name: 'MA5',
            type: 'line',
            data: [],
            smooth: true,
            showSymbol: false,
            lineStyle: {
                normal: {
                    width: 2
                }
            }
        },
        {
            name: 'MA10',
            type: 'line',
            data: [],
            smooth: true,
            showSymbol: false,
            lineStyle: {
                normal: {
                    width: 2
                }
            }
        },
        {
            name: 'MA20',
            type: 'line',
            data: [],
            smooth: true,
            showSymbol: false,
            lineStyle: {
                normal: {
                    width: 2
                }
            }
        },
        {
            name: 'MA30',
            type: 'line',
            data: [],
            smooth: true,
            showSymbol: false,
            lineStyle: {
                normal: {
                    width: 2
                }
            }
        }
    ]
};



//设置操作面板
function setOperatePanel(){
	$('.dynamic-graph-panel').fadeIn(200);
	$.ajax({
		type: 'POST',
		url: '/Home/Main/getOperateItem',
		success: function(data){
			//console.log(data);
			if(data['status']){
				var tHtml = '';
				var mHtml = '';
				for(var i=0; i<data['time'].length; i++){
					tHtml += '<option name="'+data['time'][i]['name']+'" value="'+data['time'][i]['minutes']+'" percent="'+data['time'][i]['percent']+'">'+data['time'][i]['title']+'--'+data['time'][i]['percent']*100+'%</option>';
				}
				for(var i=0; i<data['money'].length; i++){
					mHtml += '<option name="'+data['money'][i]['name']+'" value="'+data['money'][i]['money']+'">'+data['money'][i]['title']+'</option>';
				}
				$('.operate-time-select').html(tHtml);
				$('.operate-money-select').html(mHtml);
				
				var percent = 0.76;
				var money = $('.operate-money-select').val();
				$('.win-money').html(money*percent);
			}
		},
		error: function(e){
			console.log(e);
		}
	});
	
}


//js set random current value
function jsSetValue(){
	var max = kParamter.current*10000*1.01;
	var min = kParamter.current*10000*0.99;
	kParamter.current = parseInt(min+Math.floor(Math.random()*(max-min+1)))/10000;
	if(kParamter.current>kParamter.highest){
		kParamter.highest = kParamter.current;
	}
	if(kParamter.current<kParamter.lowest){
		kParamter.lowest = kParamter.current;
	}
}

//str -> json Object
function strToJson(str){
	var strNew = str.replace(/&quot;/g, '\"');
	var jsonObj = JSON.parse(strNew); ;
	return jsonObj;

}

var k_timeout = '';
//显示历史数据
function showK_line(type){
	myChart.clear();
	$.ajax({
		type: "POST",
		data: {type: type, time: kParamter.ktime},
		url: "/Home/Main/ajaxGetRecord",
		async: false, 
		success: function(result){
			if(result['status']){
				kParamter.recordCount = parseInt(result['count']);
				var data0 = categoryAdd(result['data']);
				kParamter.kdata = StrToNumber(data0.values);
				kParamter.current = kParamter.kdata[kParamter.kdata.length-1][1];
				option.title.text = kParamter.ktime+'m     '+result['remark']+' 汇率K线图   ';
				option.xAxis.data = data0.categoryData;
				option.series[0].data = kParamter.kdata;
				option.series[1].data = calculateMA(5, kParamter.kdata);
				option.series[2].data = calculateMA(10, kParamter.kdata);
				option.series[3].data = calculateMA(20, kParamter.kdata);
				option.series[4].data = calculateMA(30, kParamter.kdata);
				myChart.setOption(option);
			}else{
				alert('数据错误，请刷新后重试');
			}
		},
		error: function(e){
			console.log(e);
		}
	});
	kParamter.allTime -= parseInt(kParamter.recordCount); //计算当前没跑完的K线柱还需要几次推送
	console.log(kParamter.recordCount);
	console.log(kParamter.allTime);
}

//插入实时记录
function insertRecord(data){
	var table = document.getElementById('current-record-table').insertRow(0);
	var cell0 = table.insertCell(0); //单号
	var cell1 = table.insertCell(1); //交易人
	var cell2 = table.insertCell(2); //方向
	cell2.setAttribute('class', 'table-cell-flag');
	var cell3 = table.insertCell(3); //时间
	var cell4 = table.insertCell(4); //金额
	// cell4.setAttribute('class', 'table-cell-current');
	var cell5 = table.insertCell(5); //open
	var cell6 = table.insertCell(6); //close
	var cell7 = table.insertCell(7); //result
	// cell6.setAttribute('class', 'table-cell-time');
	
	cell0.innerHTML = data['order_no'];
	cell1.innerHTML = data['nickname'];
	cell2.innerHTML = data['type'];
	cell3.innerHTML = data['time'];
	cell4.innerHTML = data['money'];
	cell5.innerHTML = data['open'];
	cell6.innerHTML = data['close'];
	cell7.innerHTML = data['result'];
}

//各种汇率实时显示
function allForexShow(data){
	for(var i=2; i<22; i++){
		$('#category-number-current-'+i).html(data['fbuypri'+i]);
		if(data['fbuypri'+i]>$('#category-number-open-'+i).html()){
			$('#category-number-open-'+i).css({"color": "#f00"});
			$('#category-number-current-'+i).css({"color": "#f00"});
		}else{
			$('#category-number-open-'+i).css({"color": "#0b0"});
			$('#category-number-current-'+i).css({"color": "#0b0"});
		}
	}
}

//刷新时，各种数据显示（红绿）
function refreshRedGreen(){
	$.ajax({
		type: 'post',
		url: '/Home/Main/ajaxRedGreen',
		success: function(data){
			// console.log(data);
			if(data['status']){
				allForexShow(data['data']);
			}
		},
		error: function(e){
			console.log(e);
		}
	});
}

$(document).ready(function(){
	//1.显示历史数据
	showK_line(2, kParamter.ktime);
	refreshRedGreen();
	//2.动态数据开始显示
	var uid="000000";
	var socket =io('http://'+document.domain+':2120');
	socket.on('connect',function(){socket.emit('login',uid);});//连接后登录
	socket.on('new_msg',function(msg){
		var jsonObj = strToJson(msg);
		kParamter.current = jsonObj['fbuypri'+kParamter.type.toString()];
		kParamter.allTime -= 1;
		if(kParamter.allTime == 0){ //增加K线柱
			addData(true);
		}else{
			addData(false);
		}
		option.series[0].data = kParamter.kdata;
		option.series[1].data = calculateMA(5, kParamter.kdata);
		option.series[2].data = calculateMA(10, kParamter.kdata);
		option.series[3].data = calculateMA(20, kParamter.kdata);
		option.series[4].data = calculateMA(30, kParamter.kdata);
		myChart.setOption(option);
		if(kParamter.current>kParamter.highest){
			kParamter.highest = kParamter.current;
		}
		if(kParamter.current<kParamter.lowest){
			kParamter.lowest = kParamter.current;
		}
		allForexShow(jsonObj);
		var cell = $('.table-cell-current');
		if(typeof(cell) != 'undefined'){
			cell.html(kParamter.current);
		}
		
	});
	socket.on('update_online_count',function(online_stat){});// 后端推送来在线数据时
	
	// 单击 选择类型
	var timer = null;
	$(".category-select-item").click(function(){
		kParamter.type = $(this).attr('value');
		kParamter.allTime = kParamter.ktime*kParamter.oneMin; //一共需要推送几次
		clearTimeout(timer);
		timer = setTimeout(function(){
			showK_line(kParamter.type);
		}, 300);
	});
	// 双击
	$(".category-select-item").dblclick(function(){
		clearTimeout(timer);
		var kind = $(this).attr('name');
		kParamter.type = $(this).attr('value');
		showK_line(kParamter.type);
		setOperatePanel();//设置操作面板
	});
	
	$(".time-select-button").click(function(){
		kParamter.ktime = $(this).attr('value');
		kParamter.allTime = kParamter.ktime*kParamter.oneMin; //一共需要推送几次
		showK_line(kParamter.type);
	});
	
	$('.dynamic-panel-close').click(function(){
		if(kParamter.isOperate == false){
			$('.dynamic-graph-panel').fadeOut();
		}else{
			alert('已经买入，不可关闭该窗口');
		}
	});
	
	$('.operate-select').change(function(){
		var percent = 0.76;
		var money = $('.operate-money-select').val();
		$('.win-money').html(money*percent);
	});
	
	//涨跌控制按钮
	$('.contral-button').click(function(){
		
		if(kParamter.isOperate == false){
			clearInterval(kParamter.timeInterval);
			kParamter.timeTicket = $('.operate-time-select').val()*60*1000;
			kParamter.nowTime = 60*$('.operate-time-select').val();
			kParamter.isOperate = true;
			kParamter.lowest = kParamter.current;
			kParamter.highest = kParamter.current;
			var table = document.getElementById('table-trade-record').insertRow(0); //插入一行
			var cell0 = table.insertCell(0);
			var cell1 = table.insertCell(1);
			var cell2 = table.insertCell(2);//方向
			cell2.setAttribute('class', 'table-cell-flag');
			var cell3 = table.insertCell(3);
			var cell4 = table.insertCell(4);//价格
			cell4.setAttribute('class', 'table-cell-current');
			var cell5 = table.insertCell(5);
			var cell6 = table.insertCell(6);//进度
			cell6.setAttribute('class', 'table-cell-time');
			
			// alert('买入');
			
			var flag = $(this).attr('value');
			var money = $('.win-money').html();
			$.ajax({
				type: 'post',
				url: '/Home/Main/tradeOpen',
				data: {type: kParamter.type, money: $('.operate-money-select').val(),
					   time: $('.operate-time-select').val(), flag: $(this).attr('value'), f_open: kParamter.current},
				success: function(result){
					console.log(result);
					if(result['status']){
						kParamter.order_no = result['order_no'];
						cell0.innerHTML = result['order_no']; //单号
						cell1.innerHTML = result['type']; //币种
						if(flag == 1){
							var flag_html = '涨';
							cell2.setAttribute('style', 'color:#ff0000');
						}else{
							var flag_html = '跌';
							cell2.setAttribute('style', 'color:#00db00');
						}
						cell2.innerHTML = flag_html; //方向
						cell3.innerHTML = result['open']; //买价
						cell4.innerHTML = kParamter.current; //价格
						cell5.innerHTML = money; //盈利
						cell6.innerHTML = kParamter.nowTime;
						
						kParamter.timeInterval = setInterval(function(){
							
							kParamter.currTime += 1000;
							kParamter.nowTime -= 1;
							$('.table-cell-time').html(kParamter.nowTime);
							if(kParamter.currTime>=kParamter.timeTicket){
								clearInterval(kParamter.timeInterval);
								$.ajax({
									type: 'post',
									url: '/Home/Main/tradeClose',
									data: {order_no: kParamter.order_no, f_close: kParamter.current, highest: kParamter.highest, lowest: kParamter.lowest},
									success: function(back){
										insertRecord(back['data']);
										refreshParamter();//清空数据
										alert(back['remark']);
										
									},
									error: function(e){
										
										console.log(e);
									}
								});
							}
						}, 1000);
						
					}else{
						refreshParamter();//清空数据
						alert(result['data']);
					}
				},
				error: function(e){
					refreshParamter();//清空数据
					console.log(e);
				}
			});
		}else{
			alert('已买入，请等候');
		}
		
		
	});
	
	
	
	
});