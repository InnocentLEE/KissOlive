<!DOCTYPE html>
<html lang="zh-cn">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
	<title>Kiss OLive 官方商城</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
      <link rel="stylesheet" href="css/home.css">
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
		<div class ="container">
			<div class ="navbar-header">
				<!-- <a href="#" class="navbar-brand">品牌LOGO</a> -->
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
				<li><a href="#" ><span class="glyphicon glyphicon-shopping-cart"></span>  我的购物袋</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-list"></span>  我的订单</a></li>
			</ul>
		</div>
	</div>
</nav>

<div class="container-fluid">
	<div class="header-main-bar" >
		<div class="main-bar-content">
			<div class="header-logo">
				<a href="#" aria-label="olive"><img src="img/kissolive.png"  class="icon-olive"/></a>
			</div>

			<nav class="rolls-nav">
			
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
			<img src="img/1.jpg" alt="">
		</div>
		<div class="item">
			<img src="img/2.jpg" alt="">
		</div>
		<div  class="item">
			<img src="img/3.jpg" alt="">
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
   //轮播自动播放
   $('myCarousel').carousel({
      //自动3秒播放
      interval:3000, 
   });

	// 设置导航箭头垂直居中，
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
