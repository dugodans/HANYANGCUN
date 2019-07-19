<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css" media="screen">
    #main3{background:#FFEFD5; height:850px;}
    
     .box123 {position: relative; margin: 50px auto; padding: 0; width: 100%; height: 700px;}
  .box123 h1 {position: absolute; top: 50px; left: 0; width: 100%; height: 700px; 
    background: rgba(255,255,255,0.4); text-align: center; line-height: 100px; font-size: 68px; font-weight: bold;}
  .box123 img {width: 100%;}
    
    
    
    
    
    
.box {

    margin: 0 auto;
    height: 600px;
    width: 600px;
    position: relative;
    border: 5px solid #FFF;
}

#box {

  overflow: auto;
  position: relative;
}

h2 {
  background: #999;
  margin: 0;
  opacity: 1;
  padding: 10px;
  color: #fff;
}

#box p {
  margin: 10px;
}

/* JS required styles */
.box .box {
    border: 0;
}
#p{
margin:0 auto;
text-align:center;
color:#000;
margin-top:-50px;
font-size:40px;
z-index:9999;
}
</style>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
    // 1. grab a bunch of variables
    var $container = $('#box');
    var $headers = $container.find('h2');
    var zIndex = 2;
    var containerTop = $container.offset().top + parseInt($container.css('marginTop')) + parseInt($container.css('borderTopWidth'));
    var $fakeHeader = $headers.filter(':first').clone();
    
    // 2. absolute position on the h2, and fix the z-index so they increase
    $headers.each(function () {
       // set position absolute, etc
       var $header = $(this), height = $header.outerHeight(), width = $header.outerWidth();

       zIndex += 2;
       
       $header.css({
           position: 'absolute',
           width: $header.width(),
           zIndex: zIndex
       });
       
       // create the white space
       var $spacer = $header.after('<div ></div>').next();
       $spacer.css({
           height: height,
           width: width
       });
    });
    
    // 3. bind a scroll event and change the text of the take heading
    $container.scroll(function () {
        $headers.each(function () {
            var $header = $(this);
            var top = $header.offset().top;
            
            if (top < containerTop) {
                $fakeHeader.text($header.text());
                $fakeHeader.css('zIndex', parseInt($header.css('zIndex'))+1);
            }
        });
    });
    
    // 4. initialisation
    $container.wrap('<div class="box" ></div>');
    $fakeHeader.css({ zIndex: 1, position: 'absolute', width: $headers.filter(':first').width() });
    $container.before($fakeHeader.text($headers.filter(':first').text()));
    
});
</script>
</head>
<body>

    
    <div id="main3">
    <div class="box123">
    <br><br> <br><br> 
    
    <h1><div id="p">顾客评价</div></h1><br><br>
  <!-- <h1>Fixed Header Slide</h1> -->
  <div class="box" id="box">
    <h2> 张* 
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     ★★★★★</h2>
    <p>很好，位置离景区入口很近，在乌镇景区旁边的一条街的最里面，很安静，没有多少车，适合居住，环境比较好，很干净，房间很大，标准间有两张双人床，还有小桌子，要去景区店主会开车送到景区旁边，服务态度很好，推荐。</p>
    <h2> 李瑶* 
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     ★★★★★</h2>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    <h2> 毛雨* 
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     ★★★★★</h2>

    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
   <h2> 刘* 
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     ★★★★☆</h2>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    <h2> 王威* 
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     ★★★★★</h2>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
<h2> 严炜* 
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     ★★★★☆</h2>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
  </div>
  </div></div>
</body>
</html>
    </body>