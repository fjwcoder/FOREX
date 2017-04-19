<?php

namespace Home\Controller;

class AchargeController extends HomeCommonController
{
    public static $operate = '';

    public function index(){
        //如果没有登录，请首先登录
        if(!isset($_SESSION[C('USER_ID')])){
            header('Location:/Home/Login/index');
            exit;
        }

        if(!isset($_SESSION[C('USD_RMB')])){ 
            $data = S('forex_data');
            if(empty($data) || (R('Forex/compareTime'))){
                R('Forex/getForex');
                $data = S('forex_data');
            }
            $_SESSION[C('USD_RMB')] = $data['fBuyPri1'];
        }
        $this->assign('charge', array('forex'=>$_SESSION[C('USD_RMB')]));
        $this->assign('operate', R('Public/getOperateCache'));
        $this->assign('login', R('Public/getLoginInfo'));
        $this->assign('seo', array('title'=>'账户入金', 'name'=>'账户入金'));
        $this->display();
    }
    
    public function chargeGate(){
        $money = I('money', 0, 'intval');
        $way = I('way' , 0, 'intval');
        if($money <= 0){
            //$this->error('请核对充值金额', 'Acharge/index');
            die('请核对充值金额');
        }

        if($way === 0){
            $_SESSION[C('CHARGE_WAY')] = '微信支付';
            R('Charge/wxSwiftPay', array($money));
        }else if($way === 1){
            $_SESSION[C('CHARGE_WAY')] = '支付宝支付';
            R('Charge/aliSwiftPay', array($money));
        }else{
            die('支付方式错误');
        }
        
    }


}
