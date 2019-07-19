<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>


<script>
$(document).ready(function () { 
    $(window).scroll(function () { 
        if ($(this).scrollTop() > 50) { 
            $('#back-to-top').fadeIn(); 
        } else { 
            $('#back-to-top').fadeOut(); 
        } 
    }); 
    // scroll body to 0px on click 
    $('#back-to-top').click(function () { 
        $('#back-to-top').tooltip('hide'); 
        $('body,html').animate({ 
            scrollTop: 0 
        }, 800); 
        return false; 
    }); 

    $('#back-to-top').tooltip('show'); 

}); 
</script>

<body>

<a id="back-to-top" href=" " class="btn btn-primary btn-sm back-to-top-css" role="button" title="Move Top" data-toggle="tooltip" 
data-placement="left">
<span class="glyphicon glyphicon-chevron-up">T O P</span></a>
</body>

<style>
.back-to-top-css{
position: fixed;
right:2%;
bottom:2%;
width:40px;
height:40px;
line-height:40px;
display:block;
background:orange;
color:#fff;
text-decoration:none;
font-size:10px;
text-align:center;
border-radius:5px;
}
</style>