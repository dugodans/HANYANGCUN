<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="ko">
	<head>
	<meta charset="UTF-8">
	<title>한양촌</title>
	<body>
		<header>
			<h1><a href="#"><img src="http://www.high1.com/high1/new/images/common/h1_logo.png" alt="logo" width="300" height="90"></a></h1>
			
			<div id="lnb">
			<nav>
			<jsp:include page="menu.jsp"/>
			</nav>
			</div>
	<div class="visual"><jsp:include page="블루비.jsp"/></div>	
		</header>
		</body>
		
		
		
		<style>
		header{background:linear-gradient(to right, #dcdcdc, #dcdcdc 50%, #000000 50%, #000000;)}
		header .visual img{width:100%; margin-top:-90px;}
		header h1{position: absolute; left:0; top:0; margin-left:50px;}
		
		header nav{position:absolute; }
		
		header #lnb{position: absolute; left:0; top:0; padding:0 250px; width:100%; box-sizing:border-box; margin-left:100px;}
		header #lnb nav {border-bottom: 1px solid rgba(255,255,255,.5);}
		header #lnb nav > ul {text-align:center;}
		header #lnb nav > ul> li {display: inline-block; position:relative;}
		header #lnb nav > ul > li > a:hover:after {left:0; width:100%;}
		header #lnb nav > ul > li >a{display:block; width:160px; height:69px; font-size:18px; color:#fff; line-height:69px;}
		header #lnb nav > ul ul{position:absolute; width:100%; text-align:center;}
		header #lnb nav > ul ul a{color:#fff;font-size:14px;}
		
		
		
		
		
		
		
		</style>