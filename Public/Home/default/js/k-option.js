//mychart 的 option
option = {
	//backgroundColor: '#21202D',
	animation: false,
	//color: colorList,
	title: { //标题组件
		text: '',//result['remark']+'  历史K线图',
		left: 50
	},
	tooltip: { //提示框组件
		trigger: 'axis',
		axisPointer: {
			type: 'line'
		}
	},
	grid: { // 图标的上下左右留白
		left: '5%',
		right: '5%',
		bottom: '15%'
	},
	xAxis: { // 直角坐标系 grid 中的 x 轴
		type: 'category', //坐标轴类型：value,category,time, log
		data: [],//data0.categoryData,
		scale: true, //是否是脱离 0 值比例。只在数值轴中（type: 'value'）有效。在设置 min 和 max 之后该配置项无效。
		boundaryGap : true, //坐标轴两边留白策略
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
			data: [],//data1,
			itemStyle:{
				normal: {
                    color: '#FD1050',
                    color0: '#0CF49B',
                    borderColor: '#FD1050',
                    borderColor0: '#0CF49B'
                }
			},
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
};