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
                
	<div class="content-panel-div hp_100 wp_100 just-show-div">
		<!--这就是主页！-->
	</div>

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