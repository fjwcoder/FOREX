<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <title><?php echo ($seo["title"]); ?></title>

    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="/Public/Home/default/css/idangerous.swiper.css"/>
    <link rel="stylesheet" href="/Public/Home/default/css/layout.css" type="text/css"/>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="/Public/Home/default/js/echarts.js"></script>
    <script src="/Public/Home/default/js/idangerous.swiper.min.js"></script>
    <script src="/Public/Home/default/js/layout.js"></script>

</head>
<body>
    <div class="panel panel-default">
        <div class="panel-body public_index">
            <!--写个顶部-->
            <div class="public-top-div w1200">
                <div class="top-logo-div wp_20 hp_100 f_l">
                    <a href="/Home/Main.html">
                        <img class="top-logo-img wp_100 hp_100" src="/Public/Home/default/images/top_logo.png"/>
                    </a>
                </div>
                <div class="top-unlogin-div wp_10 hp_100 f_r">
                    <a href="/Home/Login.html">
                        <img class="unlogin-img w25" src="/Public/Home/default/images/unlogin.png"/> <?php echo ($login["status"]); ?>
                    </a>
                    <a href="/Home/Regist.html">
                        <?php echo ($login["regist"]); ?>
                    </a>
                </div>
                <!--余额-->
                <div class="top-money-div wp_20 hp_100 f_r">
                    <a href="/Home/Acharge.html">
                        <div class="money-div top-button-color-change wp_80">
                            <img class="top-money-img top-img w25" src="/Public/Home/default/images/money.png"/> 余额: <span id="amount"><?php echo ($login["money"]); ?></span>
                        </div>
                    </a>
                </div>
                <!--账户-->
                <div class="top-account-div wp_20 hp_100 f_r">
                    <a href="/Home/User.html">
                        <div class="account-div top-button-color-change wp_80">
                            <img class="top-account-img top-img w25" src="/Public/Home/default/images/account.png"/> ID：<?php echo ($login["pre_user"]); ?>
                        </div>
                    </a>
                </div>
            </div>

            <!--写个头部-->
            <div class="public-head-div wp_100">
                <div class="head-bar-div w1200 hp_100">
                    <div class="currency-category-div wp_20 hp_100 f_l t_c">
                        <!--外汇币种-->
                        <?php echo ($seo["name"]); ?>
                    </div>
                    <div class="announcement-bar wp_80 hp_100 f_r">

                    </div>
                </div>
            </div>

            <!--内容-->
            <div class="public-content-div w1200 ">
                
	<div class="content-panel-div hp_100 wp_100">
		<!--币种选择-->
		<div class="category-select swiper-container wp_20 hp_65 f_l o_h">
			<div class="swiper-wrapper wp_100 f_l">
				<?php if(is_array($kind)): foreach($kind as $key=>$v): ?><div class="swiper-slide category-select-item wp_95 f_l" id="<?php echo ($v["id"]); ?>" value="<?php echo ($v["id"]); ?>" name="<?php echo ($v["name"]); ?>">
						<div class="wp_40 hp_100 f_l category-name"><?php echo ($v["remark"]); ?> </div>
						<div id="category-number-open-<?php echo ($v["id"]); ?>" class="wp_30 hp_100 f_l category-number category-number-open t_c"><?php echo ($v["open"]); ?></div>
						<div id="category-number-current-<?php echo ($v["id"]); ?>" class="wp_30 hp_100 f_l category-number category-number-current t_c"><?php echo ($v["open"]); ?></div>
					</div><?php endforeach; endif; ?>
			</div>
		</div>
		<!--时间选择-->
		<div class="time-select-bar wp_80 h30 f_l">
			<?php if(is_array($time)): foreach($time as $key=>$v): ?><div class="time-select-button hp_100 w80 f_l t_c" value="<?php echo ($v["minutes"]); ?>" name="<?php echo ($v["name"]); ?>">
					<?php echo ($v["name"]); ?>
				</div><?php endforeach; endif; ?>
		</div>
		<!--动态K线图-->
		<div id="k-line-graph" class="k-line-graph wp_80 f_l"></div>
		
		<!--实时数据变动-->
		<div class="dynamic-graph-panel w450 h350">
			<div class="h30 wp_85 f_l" style="line-height: 30px; color: white;padding-left: 5px;">
				DM-FX Micro-Trade
			</div>
			<div class="dynamic-panel-close h30 wp_15 f_l t_c">关闭</div>
			<div class="div-operate-panel f_l">
				<div class="wp_50 hp_80 f_l operate-select-panel">
					<label for="goods-type">商品品种：</label><input id="goods-type" type="text" class="operate-select" value="USD-EUR" readonly/><br>
					<label for="trade-type">交易类型：</label><input id="trade-type" type="text" class="operate-select" value="及时开盘，固定间隔" readonly/><br>
					<label for="time-select">结算时限：</label><select id="time-select" class="operate-time-select operate-select" name="operate-time"></select><br>
					<label for="money-select">交易金额：</label><select id="money-select" class="operate-money-select operate-select" name="operate-money"></select>
				</div>
				<div class="wp_25 hp_80 f_l forex-contral-forex">
					<div class="forex-contral-up w90 contral-button t_c" value="1">买涨</div>
					<div class="forex-contral-down w90 contral-button t_c" value="2">买跌</div>
				</div>
				<div class="wp_25 hp_80 f_l win-money-div">
					<div class="win-font win-div wp_100 f_l t_c">盈利</div>
					<div class="win-money win-div wp_100 f_l t_c"></div>
					<div class="win-info win-div wp_100 f_l t_c">EUR</div>
				</div>
				<div class="info-display wp_100 h20 t_c f_l">注意：市场交易模式下，实际成交价格可能会和请求价格有一定差异</div>
				<div class="current-table-head f_l wp_100 h20">
					<div class="table-head-info f_l">#</div>
					<div class="table-head-info f_l">币种</div>
					<div class="table-head-info f_l">方向</div>
					<div class="table-head-info f_l">买价</div>
					<div class="table-head-info f_l">价格</div>
					<div class="table-head-info f_l">盈利$</div>
					<div class="table-head-info f_l">进度</div>
				</div>
			</div>

			<div class="div-current-record f_l">
				<table id="table-trade-record" class="table-trade-record wp_100"></table>
			</div>
		</div>

		<!--交易记录-->
		<div class="deal-record-div wp_100 f_l">
			<div class="deal-record-head h30 f_l">
				<div class="deal-head-div f_l">ORDER_NO</div>
				<div class="deal-head-div f_l">TRADER</div>
				<div class="deal-head-div f_l">TYPE</div>
				<div class="deal-head-div f_l">TIME</div>
				<div class="deal-head-div f_l">MONEY</div>
				<div class="deal-head-div f_l">OPEN</div>
				<div class="deal-head-div f_l">CLOSE</div>
				<div class="deal-head-div f_l">RESULT</div>
			</div>
			<table id="current-record-table" class="current-record table-trade-record current-record-table"></table>
			
		</div>

	</div>
	<script src="http://cdn.bootcss.com/socket.io/1.7.3/socket.io.js"></script>
	<script src="/Public/Home/default/js/k-line.js"></script>
	<!--<script>
		
	</script>-->
	

            </div>

            <!--页脚-->
            <div class="public-foot-div wp_100">
                <div class="">

                </div>
            </div>
            <div class="mask wp_100"></div>

        </div>
        
    </div>
</body>
</html>