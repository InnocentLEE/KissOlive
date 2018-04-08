<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Kiss OLive 官方商城网站</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
     
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <link rel="stylesheet" href="css/home.css">
  </head>
  
  <body>
    <nav class="navbar navbar-default navbar-fixed-top">
		<div class ="container">
			<div class ="navbar-header">
			<ul class="nav navbar-nav navbar-left ">
			    <li><a href="#" class="navbar-brand">登陆</a></li>
			    <li><a href="#" class="navbar-brand">注册</a></li>
				
				
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</ul>
			</div>
			<div class="collapse navbar-collapse" id="navbar-collapse">
			<ul class="nav navbar-nav navbar-right" style="margin: 0">
				<li><a href="#" ><span class="glyphicon glyphicon-shopping-cart"></span>我的购物车</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-list"></span>我的订单</a></li>
			</ul>
		</div>
	</div>
</nav>

<div class="container-fluid">
	<div class="header-main-bar" >
		<div class="main-bar-content">
			<div class="header-logo">
				<a href="#" aria-label="olive"><img src="http://localhost:8080/KissOlive/img/kissolive.png"  class="icon-olive"/></a>
			</div>

			<nav class="rolls-nav js-rolls-nav">
			    <div class="nav-search" role="search">
                <form method="GET" class="main-form" action="#" autocomplete="off">
                    <div class="form-field">
                        <input type="text" id="search-header" name="" placeholder=""  />
                    </div>
                    
                    <button class="icon icon-loop">
                        <span class="glyphicon glyphicon-search"></span>
                    </button>
                    <input type="hidden" name="origin" value="cdc" />
                </form>
            </div>
            <ul>
                                                                            </ul>
			</nav>
		</div>
	
	</div>
	<div class="main-olive" style="width: 100%;padding-bottom: 60px;display: block;">
		<div class="grid" style="max-width: 1440px; height:411px;margin:0px 30px;display: block;border-spacing: 0;border-collapse: separate;">
			<div id="myCarousel" class="carousel slide" style="width: 100%;margin-bottom: 2.9%;" >
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel"  data-slide-to="1"></li>
		<li data-target="#myCarousel"  data-slide-to="2"></li>
	</ol>
	<div class="carousel-inner">
		<div class="item active" >
			<img src="http://localhost:8080/KissOlive/img/1.jpg" alt="">
		</div>
		<div class="item">
			<img src="http://localhost:8080/KissOlive/img/2.jpg" alt="">
		</div>
		<div  class="item">
			<img src="http://localhost:8080/KissOlive/img/3.jpg" alt="">
		</div>
	</div>
	<a href="#myCarousel" data-slide="prev" class="carousel-control left">&lsaquo;</a>
	<a href="#myCarousel" data-slide="next" class="carousel-control right">&rsaquo;</a>
			</div>
		</div>
	</div>
</div>


<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function() {
	  
	   $('myCarousel').carousel({
	      
	      interval:3000, 
	   });
	
		
	    $('.carousel-control').css('line-height',$('.carousel-inner img').height()+'px');
	    $(window).resize(function(){
	    	var $height=$('.carousel-inner img').eq(0).height() ||
		    	$('.carousel-inner img').eq(1).height() ||
		    	$('.carousel-inner img').eq(2).height();
	 	    $('.carousel-control').css('line-height',$height +'px');
	    });
	});

</script>
  </body>
</html>
