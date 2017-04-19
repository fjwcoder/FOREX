<?php
namespace Home\Controller;
use Think\Controller;
define('JH_URL', 'http://web.juhe.cn:8080/finance/exchange/rmbquot');
define('JH_APPKEY', '6f832d648ff472d9115a3089539b304c');
class ForexController extends Controller
{
    public function index(){
        $url = JH_URL.'?key='.JH_APPKEY;
        $result = json_decode($this->http_url($url), true);
        if($result['reason'] == 'SUCCESSED!'){
            $this->saveForex($result['result'][0]);
        }
    }

    private function saveForex($getForex=''){
        $usd = intval(100/$getForex['data1']['fBuyPri']*10000);//人民币：美元 汇率 1RMB=$usd美元(乘以10000)
        $data = array('f_time'=>$getForex['data1']['date'].' '.$getForex['data1']['time'], 'f_timestamp'=>time(),
                    'name1'=>'RMB', 'title1'=>'人民币', 'fBuyPri1'=>sprintf("%.4f", $getForex['data1']['fBuyPri']/100));
        unset($getForex['data1']);
        $i = 2;
        foreach($getForex as $k=>$v){
            $data = array_merge($data, $this->getNameTitle($k));
            $type = intval((100/$v['fBuyPri'])*10000);
            $data['fBuyPri'.$i] = sprintf("%.4f", $usd/$type);
            $i++; 
        }

        unset($getForex);
        $result = M('forex') -> data($data) -> add();
        $forex = array_intersect_key($data, $this->fBuyPri());
        S('forex_data', $forex, 305);
        if($result){
            echo '插入数据库完成';
        }else{
            echo '插入数据库失败';
        }
    }

    private static function fBuyPri(){
        return array('fBuyPri2'=>0, 'fBuyPri3'=>0, 'fBuyPri4'=>0, 'fBuyPri5'=>0, 'fBuyPri6'=>0, 'fBuyPri7'=>0, 'fBuyPri8'=>0, 'fBuyPri9'=>0, 'fBuyPri10'=>0, 'fBuyPri11'=>0, 
                     'fBuypri12'=>0, 'fBuyPri13'=>0, 'fBuyPri14'=>0, 'fBuyPri15'=>0, 'fBuyPri16'=>0, 'fBuyPri17'=>0, 'fBuyPri18'=>0, 'fBuyPri19'=>0, 'fBuyPri20'=>0, 'fBuyPri21'=>0);
                     
    }
    public static function getNameTitle($type=''){
        $data = array(
            'data1' => array('name1'=>'USD', 'title1'=>'美元'),
            'data2' => array('name2'=>'EUR', 'title2'=>'欧元'),
            'data3' => array('name3'=>'HKD', 'title3'=>'港币'),
            'data4' => array('name4'=>'JPY', 'title4'=>'日元'),
            'data5' => array('name5'=>'GBP', 'title5'=>'英镑'),

            'data6' => array('name6'=>'AUD', 'title6'=>'澳大利亚元'),
            'data7' => array('name7'=>'CAD', 'title7'=>'加拿大元'),
            'data8' => array('name8'=>'THB', 'title8'=>'泰国铢'),
            'data9' => array('name9'=>'SGD', 'title9'=>'新加坡元'),
            'data10' => array('name10'=>'DKK', 'title10'=>'丹麦克朗'),

            'data11' => array('name11'=>'NOK', 'title11'=>'挪威克朗'),
            'data12' => array('name12'=>'SEK', 'title12'=>'瑞典克朗'),
            'data13' => array('name13'=>'CHF', 'title13'=>'瑞士法郎'),
            'data14' => array('name14'=>'TWD', 'title14'=>'新台币'),
            'data15' => array('name15'=>'ZAR', 'title15'=>'南非兰特'),

            'data16' => array('name16'=>'RUB', 'title16'=>'卢布'),
            'data17' => array('name17'=>'PHP', 'title17'=>'菲律宾比索'),
            'data18' => array('name18'=>'MYR', 'title18'=>'林吉特'),
            'data19' => array('name19'=>'MOP', 'title19'=>'澳门元'),
            'data20' => array('name20'=>'KRW', 'title20'=>'韩国元'),

            'data21' => array('name21'=>'NZD', 'title21'=>'新西兰元'),
        );
        return $data[$type]?$data[$type]:$data['data1'];
    }

    private function http_url($url,$params=false,$ispost=0){
        $httpInfo = array();
        $ch = curl_init();

        curl_setopt( $ch, CURLOPT_HTTP_VERSION , CURL_HTTP_VERSION_1_1 );
        curl_setopt( $ch, CURLOPT_USERAGENT , 'JuheData' );
        curl_setopt( $ch, CURLOPT_CONNECTTIMEOUT , 60 );
        curl_setopt( $ch, CURLOPT_TIMEOUT , 60);
        curl_setopt( $ch, CURLOPT_RETURNTRANSFER , true );
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
        if( $ispost )
        {
            curl_setopt( $ch , CURLOPT_POST , true );
            curl_setopt( $ch , CURLOPT_POSTFIELDS , $params );
            curl_setopt( $ch , CURLOPT_URL , $url );
        }
        else
        {
            if($params){
                curl_setopt( $ch , CURLOPT_URL , $url.'?'.$params );
            }else{
                curl_setopt( $ch , CURLOPT_URL , $url);
            }
        }
        $response = curl_exec( $ch );
        if ($response === FALSE) {
            return false;
        }
        $httpCode = curl_getinfo( $ch , CURLINFO_HTTP_CODE );
        $httpInfo = array_merge( $httpInfo , curl_getinfo( $ch ) );
        curl_close( $ch );
        return $response;
    }


//==========================================================================================================

}
