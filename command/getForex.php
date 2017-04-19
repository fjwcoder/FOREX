<?php
define('JH_URL', 'http://web.juhe.cn:8080/finance/exchange/rmbquot');
define('JH_APPKEY', '6f832d648ff472d9115a3089539b304c');
define('DBHOST', '127.0.0.1');
define('DBUSER', 'root');
define('DBPWD', '19920104');
define('DBNAME', 'forex');

$url = JH_URL.'?key='.JH_APPKEY;
$result = json_decode(http_url($url), true);
if($result['reason'] == 'SUCCESSED!'){
	saveForex($result['result'][0]);
}

//存入数据库
function saveForex($getForex=''){
	$usd = intval(100/$getForex['data1']['fBuyPri']*10000);//人民币：美元 汇率 1RMB=$usd美元(乘以10000)
	$data = array('f_time'=>$getForex['data1']['date'].' '.$getForex['data1']['time'],
				  'name1'=>'RMB', 'title1'=>'人民币', 'fBuyPri1'=>sprintf("%.4f", $getForex['data1']['fBuyPri']/100));
	unset($getForex['data1']);
	$i = 2;
	foreach($getForex as $k=>$v){
		$data = array_merge($data, getNameTitle($k));
		$type = intval((100/$v['fBuyPri'])*10000);
		$data['fBuyPri'.$i] = sprintf("%.4f", $usd/$type);
		$i++; 
	}

	unset($getForex);
	//var_export($data); die;
	$conn = mysql_connect(DBHOST, DBUSER, DBPWD) or die('数据库连接错误');
	mysql_select_db(DBNAME, $conn); //选择某个数据库
	mysql_query("set names 'utf8'");
	$sql = "";
	$sql .= " INSERT INTO fx_forex (f_time, name1, title1, fBuyPri1, name2, title2, fBuyPri2, name3, title3, fBuyPri3,";
	$sql .= " name4, title4, fBuyPri4, name5, title5, fBuyPri5, name6, title6, fBuyPri6, name7, title7, fBuyPri7,";
	$sql .= " name8, title8, fBuyPri8, name9, title9, fBuyPri9, name10, title10, fBuyPri10, name11, title11, fBuyPri11,";
	$sql .= " name12, title12, fBuyPri12, name13, title13, fBuyPri13, name14, title14, fBuyPri14, name15, title15, fBuyPri15,";
	$sql .= " name16, title16, fBuyPri16, name17, title17, fBuyPri17, name18, title18, fBuyPri18, name19, title19, fBuyPri19,";
	$sql .= " name20, title20, fBuyPri20, name21, title21, fBuyPri21 ) VALUES ('$data[f_time]', '$data[name1]', '$data[title1]', $data[fBuyPri1], ";
	$sql .= " '$data[name2]', '$data[title2]', $data[fBuyPri2], '$data[name3]', '$data[title3]', $data[fBuyPri3],";
	$sql .= " '$data[name4]', '$data[title4]', $data[fBuyPri4], '$data[name5]', '$data[title5]', $data[fBuyPri5],";
	$sql .= " '$data[name6]', '$data[title6]', $data[fBuyPri6], '$data[name7]', '$data[title7]', $data[fBuyPri7],";
	$sql .= " '$data[name8]', '$data[title8]', $data[fBuyPri8], '$data[name9]', '$data[title9]', $data[fBuyPri9],";
	$sql .= " '$data[name10]', '$data[title10]', $data[fBuyPri10], '$data[name11]', '$data[title11]', $data[fBuyPri11],";
	$sql .= " '$data[name12]', '$data[title12]', $data[fBuyPri12], '$data[name13]', '$data[title13]', $data[fBuyPri13],";
	$sql .= " '$data[name14]', '$data[title14]', $data[fBuyPri14], '$data[name15]', '$data[title15]', $data[fBuyPri15],";
	$sql .= " '$data[name16]', '$data[title16]', $data[fBuyPri16], '$data[name17]', '$data[title17]', $data[fBuyPri17],";
	$sql .= " '$data[name18]', '$data[title18]', $data[fBuyPri18], '$data[name19]', '$data[title19]', $data[fBuyPri19],";
	$sql .= " '$data[name20]', '$data[title20]', $data[fBuyPri20], '$data[name21]', '$data[title21]', $data[fBuyPri21] ";
	$sql .= " )";
	//插入数据库
	$result = mysql_query($sql, $conn);
	var_export($result);
	if($result){
		echo '插入数据库完成';
	}else{
		echo '插入数据库失败';
	}
	unset($sql);
	mysql_close();//关闭数据库
}



function getNameTitle($type=''){
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

function http_url($url,$params=false,$ispost=0){
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



?>