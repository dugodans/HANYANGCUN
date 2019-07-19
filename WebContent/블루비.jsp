<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>자동슬라이드쇼</title>
<script language =javascript >
var curIndex=0;
//时间间隔(单位毫秒)，每秒钟显示一张，数组共有5张图片放在Photos文件夹下。
var timeInterval=3000;
var arr=new Array();
arr[0]="http://www.macheng.gov.cn/__local/0/C9/B2/3F0AE7D28D407B0C7A135F45AD3_4D43502E_E0FE4.gif";
arr[1]="http://www.macheng.gov.cn/__local/B/BD/42/BF2383FD5A6925384D0729497BE_6B022250_123850.gif";
arr[2]="http://www.macheng.gov.cn/__local/F/9A/EA/1D6E1C250AA5639128F848DF03E_03F50EE1_121B5B.gif";
arr[3]="http://dingyue.nosdn.127.net/wJr=ImmI=oYQEcDzKXWf9FGg9qt870lLr6aMtQXg7TKbT1542759426555compressflag.jpg";
arr[4]="http://dingyue.nosdn.127.net/INpuhQV1El4LGfPPHEA9vXP=vyzXoHM8zaMux9xI6x0mf1542759426550compressflag.jpg";
setInterval(changeImg,timeInterval);
function changeImg()
{
var obj=document.getElementById("obj");
if (curIndex==arr.length-1)
{
curIndex=0;
}
else
{
curIndex+=1;
}
obj.src=arr[curIndex];
}
</script>
<img id=obj src ="http://www.macheng.gov.cn/__local/0/C9/B2/3F0AE7D28D407B0C7A135F45AD3_4D43502E_E0FE4.gif" width=100% height=700 border =0> </head></html>