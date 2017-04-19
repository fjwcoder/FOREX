<?php
namespace Home\Controller;
vendor('lib.WxPay#JsApiPay');
define('SWIFT_QR_PAY', 'https://pay.swiftpass.cn/pay/gateway');
class ChargeController extends HomeCommonController
{

    //方法：index
    public function index()
    {
        
        $this->assign('seo', array('title'=>'账户入金', 'qr_code'=>$_SESSION[C('QR_CODE')],
         'money'=>$_SESSION[C('CHARGE_VALUE')], 'nickname'=>$this->user['nickname'], 'way'=>$_SESSION[C('CHARGE_WAY')]));
         unset($_SESSION[C('CHARGE_WAY')]);
        $this -> display();
    }

    
    //威富通扫码支付 —— 微信
    public function wxSwiftPay($currency = 0){
       if($currency<=0){
           die('请核对充值金额');
       }
       
       //需要获取一下当前汇率
       $money = sprintf("%.2f", $currency*$_SESSION[C('USD_RMB')]);//计算汇率
       $_SESSION[C('CHARGE_VALUE')] = $money;
       $tools = new \JsApiPay();
        //2.统一下单
        $trade_no = \WxPayConfig::XINGYEID.date('ymdHis').strval($this->user['id']);
        $input = new \WxPayUnifiedOrder();
        $input -> SetService('pay.weixin.native');
        $input -> SetOut_trade_no($trade_no);
        $input -> SetBody('DM金融充值');
        $input -> SetTotal_fee(intval(1)); //测试
        // $input -> SetTotal_fee(intval($money*100)); //正式
        $input -> SetNotify_url('http://fjwinter.vicp.io/Home/Chargeresult');//需要修改
        // $input -> SetNotify_url('http://www.dm-fx.com/Home/Chargeresult');//需要修改
        $input -> SetGoods_tag('charge');
        $order = \WxPayApi::swift_pay_submit($input);
        if(($order['status'] == 0)&&($order['result_code'] == 0)){
            if($this->addRecord($trade_no, $money, $currency, '微信支付')){
                //unset($_SESSION[C('CHARGE_WAY')]);
                $_SESSION[C('QR_CODE')] = $order['code_img_url'];
                header('Location: /Home/Charge.html');
            }else{
                $this->error('数据错误，请刷新后重新充值', '/Home/Acharge/index');
            }
        }else{
            var_export($order);
            die('充值二维码获取失败');
        }
    }

    public function aliSwiftPay($currency = 0){
        // $userid = $this->user['id'];
        if($currency<=0){
            die('请核对充值金额');
        }
         //需要获取一下当前汇率
        $money = sprintf("%.2f", $currency*$_SESSION[C('USD_RMB')]);//计算汇率
        $_SESSION[C('CHARGE_VALUE')] = $money;
        //2.统一下单
        $trade_no = \WxPayConfig::XINGYEID.date('ymdHis').strval($this->user['id']);
        $input = new \WxPayUnifiedOrder();
        $input -> SetService('pay.alipay.nativev2');
        $input -> SetOut_trade_no($trade_no);
        $input -> SetBody('DM金融充值');
        $input -> SetTotal_fee(intval(1)); //测试
        // $input -> SetTotal_fee(intval($money*100)); //正式
        $input -> SetNotify_url('http://fjwinter.vicp.io/Home/Chargeresult');//需要修改
        // $input -> SetNotify_url('http://www.dm-fx.com/Home/Chargeresult');//需要修改
        $input -> SetGoods_tag('charge');
        $order = \WxPayApi::swift_pay_submit($input);
        if(($order['status'] == 0)&&($order['result_code'] == 0)){
            if($this->addRecord($trade_no, $money, $currency, '支付宝支付')){
                //unset($_SESSION[C('CHARGE_WAY')]);
                $_SESSION[C('QR_CODE')] = $order['code_img_url'];
                header('Location: /Home/Charge.html');
            }else{
                $this->error('数据错误，请刷新后重新充值', '/Home/Acharge/index');
            }
            
        }else{
            var_export($order);
            die('充值二维码获取失败');
        }
    }

    private function addRecord($order_no, $rmb=0, $usd=0, $way = ''){
        $array = array('order_no'=>$order_no, 'userid'=>$this->user['userid'], 'accountid'=>$this->user['accountid'], 
        'nickname'=>$this->user['nickname'], 'charge_rmb'=>$rmb, 'charge_usd'=>$usd, 'forex'=>$_SESSION[C('USD_RMB')],
        'charge_time'=>date('Y-m-d H:i:s', time()), 'pay_way'=>$way );
        $add = M('charge_record') -> data($array) -> add();
        if($add){
            return true;
        }else{
            return false;
        }
    }

//最后一个花括号
}