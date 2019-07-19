<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
	<
<style>
#slideCont {
	margin: 10px;
	border: solid 1px #000;
	text-align: center;
}
#slideCont img {
	margin: 5px;
}

</style>

<script>
function clip() {
 	// width of the banner container
 	var contWidth = 160;
 	// height of the banner container
 	var contHeight = 250;

 	var id1 = document.getElementById('slideA');
 	var id2 = document.getElementById('slideB');
 	var height = id1.offsetHeight;
 	
 	id1.style.top = parseInt(id1.style.top)-1 + 'px';
 	
 	document.getElementById('slideCont').style.height = contHeight + "px";
 	document.getElementById('slideCont').style.clip = 'rect(auto,'+ contWidth +'px,' + contHeight +'px,auto)';
 	id2.style.display = '';
 	if(parseFloat(id1.style.top) == -(height/2)) {
  		id1.style.top = '0px';
 	}
 	setTimeout(clip,50)
}

function addLoadEvent(func) {
  var oldonload = window.onload;
  if (typeof window.onload != 'function') {
    window.onload = func;
  } else {
    window.onload = function() {
      if (oldonload) {
        oldonload();
      }
      func();
    }
  }
}

addLoadEvent(function() {
  clip();
});
</script>
<body>

<div id="slideCont" style="position:relative;z-index:1;width:160px;overflow:hidden;">
  <div id="slideA" style="position:absolute;z-index:1;top:0px;left:0px;width:160px;overflow:hidden;">
	<a href=http://www.blueb.co.kr target=_><img src=http://www.blueb.co.kr/SRC/javascript/image5/banner.gif border=0 width=141 height=48></a>
	<a href=http://www.blueb.co.kr target=_><img src=http://www.blueb.co.kr/SRC/javascript/image5/banner.gif border=0 width=141 height=48></a>
	<a href=http://www.blueb.co.kr target=_><img src=http://www.blueb.co.kr/SRC/javascript/image5/banner.gif border=0 width=141 height=48></a>
	<a href=http://www.blueb.co.kr target=_><img src=http://www.blueb.co.kr/SRC/javascript/image5/banner.gif border=0 width=141 height=48></a>
	<a href=http://www.blueb.co.kr target=_><img src=http://www.blueb.co.kr/SRC/javascript/image5/banner.gif border=0 width=141 height=48></a>

    <div id="slideB" style="position:relative;z-index:1;top:0px;left:0px;width:160px;overflow:hidden;">
	<a href=http://www.blueb.co.kr target=_><img src=http://www.blueb.co.kr/SRC/javascript/image5/banner1.gif border=0 width=141 height=48></a>
	<a href=http://www.blueb.co.kr target=_><img src=http://www.blueb.co.kr/SRC/javascript/image5/banner1.gif border=0 width=141 height=48></a>
	<a href=http://www.blueb.co.kr target=_><img src=http://www.blueb.co.kr/SRC/javascript/image5/banner1.gif border=0 width=141 height=48></a>
	<a href=http://www.blueb.co.kr target=_><img src=http://www.blueb.co.kr/SRC/javascript/image5/banner1.gif border=0 width=141 height=48></a>
	<a href=http://www.blueb.co.kr target=_><img src=http://www.blueb.co.kr/SRC/javascript/image5/banner1.gif border=0 width=141 height=48></a>
	<a href=http://www.blueb.co.kr target=_><img src=http://www.blueb.co.kr/SRC/javascript/image5/banner1.gif border=0 width=141 height=48></a>
	<a href=http://www.blueb.co.kr target=_><img src=http://www.blueb.co.kr/SRC/javascript/image5/banner1.gif border=0 width=141 height=48></a>
    </div>
  </div>
</div>
