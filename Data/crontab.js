*　　*　　*　　*　　*　　command 
分　 时　 日　 月　 周　 命令 

//周一到周五8点到17点每隔五分钟从聚合获取一次数据
// */5 8-17 * * 1-5 php /www/web/dm-fx/public_html/App/Home/Controller/
*/5 8-17 * * 1-5 /usr/bin/wget -q -O getForex.txt http://www.dm-fx.com/Home/Forex

//每隔三秒推送一次

* 8-17 * * 1-5 sleep 3; /usr/bin/wget -q -O forexPush.txt http://www.dm-fx.com/Home/Socket
* 8-17 * * 1-5 sleep 6; /usr/bin/wget -q -O forexPush.txt http://www.dm-fx.com/Home/Socket
* 8-17 * * 1-5 sleep 9; /usr/bin/wget -q -O forexPush.txt http://www.dm-fx.com/Home/Socket
* 8-17 * * 1-5 sleep 12; /usr/bin/wget -q -O forexPush.txt http://www.dm-fx.com/Home/Socket
* 8-17 * * 1-5 sleep 15; /usr/bin/wget -q -O forexPush.txt http://www.dm-fx.com/Home/Socket
* 8-17 * * 1-5 sleep 18; /usr/bin/wget -q -O forexPush.txt http://www.dm-fx.com/Home/Socket
* 8-17 * * 1-5 sleep 21; /usr/bin/wget -q -O forexPush.txt http://www.dm-fx.com/Home/Socket
* 8-17 * * 1-5 sleep 24; /usr/bin/wget -q -O forexPush.txt http://www.dm-fx.com/Home/Socket
* 8-17 * * 1-5 sleep 27; /usr/bin/wget -q -O forexPush.txt http://www.dm-fx.com/Home/Socket
* 8-17 * * 1-5 sleep 30; /usr/bin/wget -q -O forexPush.txt http://www.dm-fx.com/Home/Socket

* 8-17 * * 1-5 sleep 33; /usr/bin/wget -q -O forexPush.txt http://www.dm-fx.com/Home/Socket
* 8-17 * * 1-5 sleep 36; /usr/bin/wget -q -O forexPush.txt http://www.dm-fx.com/Home/Socket
* 8-17 * * 1-5 sleep 39; /usr/bin/wget -q -O forexPush.txt http://www.dm-fx.com/Home/Socket
* 8-17 * * 1-5 sleep 42; /usr/bin/wget -q -O forexPush.txt http://www.dm-fx.com/Home/Socket
* 8-17 * * 1-5 sleep 45; /usr/bin/wget -q -O forexPush.txt http://www.dm-fx.com/Home/Socket
* 8-17 * * 1-5 sleep 48; /usr/bin/wget -q -O forexPush.txt http://www.dm-fx.com/Home/Socket
* 8-17 * * 1-5 sleep 51; /usr/bin/wget -q -O forexPush.txt http://www.dm-fx.com/Home/Socket
* 8-17 * * 1-5 sleep 54; /usr/bin/wget -q -O forexPush.txt http://www.dm-fx.com/Home/Socket
* 8-17 * * 1-5 sleep 57; /usr/bin/wget -q -O forexPush.txt http://www.dm-fx.com/Home/Socket
* 8-17 * * 1-5 sleep 60; /usr/bin/wget -q -O forexPush.txt http://www.dm-fx.com/Home/Socket


//资金盘
crontab -e
59 23 * * * sleep 55; /user/bin/wget -q -O cornLogs.txt http://www.zd-dx.com/Home/Index/cronscrons