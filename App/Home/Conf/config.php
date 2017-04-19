<?php

$config_base = array(

	'USER_AUTH_KEY'   => 'uid',			//用户认证识别号
	'USER_ID' => 'uid', // 用户id
	'USER_INFO' => 'user_info', //用户信息
	'ACCOUNT_ID' => 'account_id', //系统编号
	'AMOUNT' => 'amount',

	
	'ORDER_NO' => 'order_no', //交易单号
	'OPEN_VALUE' => 'open_value', //开盘值
	'CLOSE_VALUE' => 'close_value', //停盘值
	'MAX_VALUE' => 'max_value', //最大值
	'MIN_VALUE' => 'min_value', //最小值
	'USD_RMB' => 'usd_rmb',//人民币和美元的汇率
	'TRADE_MONEY' => 'trade_money', //交易金额
	'TRADE_TIME' => 'trade_time', //交易时间长度
	'TRADE_RESULT'=>'trade_result', //交易结果
	'UPPER_PERCENT' => 'upper_percent', //上线收取的比例
	'WIN_PERCENT' => 'win_percent', //利润比例

	'QR_CODE' => 'qr_code', //二维码
	'CHARGE_VALUE' => 'charge_value', //本次充值金额
	'CHARGE_WAY' => 'charge_way', //支付方式
	
	'ADMIN_OP' => 'admin_op', //后台操作

	//'FOREX_KIND' => 'forex_kind', // 货币种类
	//'OPERATE_TYPE' => 'operate_type', //用户中心操作种类

	'LOGIN_STATUS' => 'login_status',//登录状态
	'PRE_USER' => 'pre_user', //用户前端显示


	'OPERATE_ITEM' => 'operate_item',//用户中心操作选项



	'DATA_OPENID'=>'_openid', //数据接口openid
	'DATA_APPKEY'=>'_appkey', //数据接口appkey
	'DATA_URL'=>'_url',//数据接口请求url
	// 'DATA_SIGN' => '_sign',











	
	//加载自定义标签
	'TAGLIB_PRE_LOAD'=>'Common\\LibTag\\Yang,Common\\LibTag\\Other',//预加载的tag
	'TAGLIB_BUILD_IN' => 'cx', //内置标签

	//URL模式 ,0普通模式 ,1:PATHINFO模式（默认模式）,2:REWRITE模式,
    'URL_MODEL' => get_meta_value('HOME_URL_MODEL'),
    'URL_PATHINFO_DEPR' => get_meta_value('HOME_URL_PATHINFO_DEPR'),
    
    //路由
    'URL_ROUTER_ON' => get_meta_value('HOME_URL_ROUTER_ON'),
    'URL_ROUTE_RULES' => get_meta_value('HOME_URL_ROUTE_RULES'),

	//开启静态缓存
	'HTML_CACHE_ON' => get_meta_value('HOME_HTML_CACHE_ON'),
	'HTML_CACHE_RULES' => get_meta_value('HTML_CACHE_RULES_COMMON'),



	'VIEW_PATH'=>'./Public/'.MODULE_NAME .'/',
	'DEFAULT_THEME'  => get_cfg_value('CFG_THEMESTYLE'),//默认主题风格
	//'TMPL_DETECT_THEME' => false, // 自动侦测模板主题
	//'THEME_LIST'=>'default,blog',//支持的模板主题项

	'TMPL_PARSE_STRING' => array(
		'__PUBLIC__' => __ROOT__. '/Public/'.MODULE_NAME. '/' . get_cfg_value('CFG_THEMESTYLE'),		
		'__DATA__' => __ROOT__. '/Data',
		'__AVATAR__' => __ROOT__. '/avatar',

	),

);

return array_merge(get_cfg_value(),$config_base);


?>