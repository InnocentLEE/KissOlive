<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Kiss OLive 官方商城网站</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/css/user/home.css'/>">

<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<div class="header-main-bar">
		<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container header">
			<c:choose>
				<c:when test="${empty sessionScope.sessionUser }">
					<div class="navbar-header">
						<ul class="nav navbar-nav navbar-left ">
							<li><a href="<c:url value='/page/user/user_login.jsp'/>"
								class="navbar-brand">登录</a></li>
							<li><a href="<c:url value='/page/user/user_register.jsp'/>"
								class="navbar-brand">注册</a></li>

							<!-- 响应式布局按钮-下拉框 -->
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target="#navbar-collapse">
								<span class="icon-bar"></span> <span class="icon-bar"></span>
							</button>
						</ul>
					</div>
					<div class="collapse navbar-collapse" id="navbar-collapse">
						<ul class="nav navbar-nav navbar-right" style="margin: 0">
							<li></li>
							<li></li>
						</ul>
					</div>
				</c:when>
				<c:otherwise>
					<div class="navbar-header">
						<ul class="nav navbar-nav navbar-left ">
							<li><a href="<c:url value=''/>" class="navbar-brand">${sessionScope.sessionUser.username }</a></li>
							<li><a href="<c:url value='/servlet/UserServlet?method=quit'/>"
								class="navbar-brand">[退出]</a></li>
							<!-- 响应式布局按钮-下拉框 -->
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target="#navbar-collapse">
								<span class="icon-bar"></span> <span class="icon-bar"></span>
							</button>
						</ul>
					</div>
					<div class="collapse navbar-collapse" id="navbar-collapse">
						<ul class="nav navbar-nav navbar-right" style="margin: 0">
							<li><a href="#"><span
									class="glyphicon glyphicon-shopping-cart">&nbsp;<span>我的购物车</span></span></a></li>
							<li><a href="#"><span class="glyphicon glyphicon-list">&nbsp;<span>我的订单</span></span></a></li>
						</ul>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
		</nav>
		<div class="main-bar-content">
			<div class="header-logo row">
				<div class="col-md-4 col-lg-4"></div>
				<div class="col-md-4 col-lg-4">
					<a href="index.jsp"><img src="<c:url value='/img/kissolive.png'/>"
						class="icon-olive" /></a>
				</div>
				<div class="col-md-4 col-lg-4">
					<form action="/KissOlive/MainServlet" method="post">
				    <input type="hidden" name="method" value="search" />
					<div class="nav-search">
						<div class="input-group">
							<input type="text" class="form-control" name="search"
								placeholder="Search for..."> <span
								class="input-group-btn">
								<button class="btn btn-default glyphicon glyphicon-search"
									type="submit"></button>
							</span>
						</div>
						<!-- /input-group -->
					</div>
					</form>
				</div>
			</div>
		</div>
		<!-- end of main-bar-content -->
	</div>
	<div class="container content">
		<div class="main-olive">
			<div class="mgrid">
				<!-- start of 轮播图  -->
				<div class="row cover">
					<div class="col col-md-12 col-lg-12">
						<div id="myCarousel" class="carousel slide">
							<ol class="carousel-indicators">
								<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel" data-slide-to="1"></li>
								<li data-target="#myCarousel" data-slide-to="2"></li>
								<li data-target="#myCarousel" data-slide-to="3"></li>
								<li data-target="#myCarousel" data-slide-to="4"></li>
							</ol>
							<div class="carousel-inner">
								<div class="item active">
									<img src="<c:url value='${src1 }'/>" alt="">
								</div>
								<div class="item">
									<img src="<c:url value='${src2 }'/>" alt="">
								</div>
								<div class="item">
									<img src="<c:url value='${src3 }'/>" alt="">
								</div>
								<div class="item">
									<img src="<c:url value='${src4 }'/>" alt="">
								</div>
								<div class="item">
									<img src="<c:url value='${src5 }'/>" alt="">
								</div>
							</div>
							<a href="#myCarousel" data-slide="prev"
								class="carousel-control left">&lsaquo;</a> <a href="#myCarousel"
								data-slide="next" class="carousel-control right">&rsaquo;</a>
						</div>
					</div>
				</div>
				<!-- end of 轮播图  -->

				<!-- start of 信息部分  -->
				<div class="row brand1">
					<div class="col col-md-4">
						<div class="panel" style="zoom:1;">
							<div class="panel-body">
								<div class="push push-brand">
									<a href="#"><img alt="" class="home_logo"
										src="<c:url value='${recommendresult1.brand.bsrc }'/>"></a>
								</div>
								<div class="push push-good">

									<a href="#"><img alt="" class="home_good"
										src="<c:url value='${recommendresult1.lipstickpicture.lpsrc }'/>" /></a>
									<div class="push-text">
										<a href="#">
											<h4>${recommendresult1.lipstick.lname }</h4> <span class="push-variant"></span>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col col-md-4">
						<div class="panel js-equal-height">
							<div class="panel-body">
								<figure> <a href="#"><img alt=""
									class="home_series" src="<c:url value='${recommendresult1.series1.ssrc }'/>"></a>
								<figcaption class="goods_text"> <a href="#">
									<h5 class="push-suptitle">${recommendresult1.brand.bname }</h5>
								</a> <a href="#"><h4 class="push-title">${recommendresult1.series1.sname }</h4></a> </figcaption> </figure>
							</div>
						</div>
					</div>

					<div class="col col-md-4">
						<div class="panel js-equal-height">
							<div class="panel-body">
								<figure> <a href="#"><img alt=""
									class="home_series" src="<c:url value='${recommendresult1.series2.ssrc }'/>"></a>
								<figcaption class="goods_text"> <a href="#"><h5
										class="push-suptitle">${recommendresult1.brand.bname }</h5></a> <a href="#"><h4
										class="push-title">${recommendresult1.series2.sname }</h4></a> </figcaption> </figure>
							</div>
						</div>
					</div>
				</div>
				<!-- end of 信息部分  -->
				<div style="height:680px"></div>
				<!-- start of 信息部分  -->
				<div class="row brand2">
					<div class="col col-md-4">
						<div class="panel" style="zoom:1;">
							<div class="panel-body">
								<div class="push push-brand">
									<a href="#"><img alt="" class="home_logo"
										src="<c:url value='${recommendresult2.brand.bsrc }'/>"></a>
								</div>
								<div class="push push-good">

									<a href="#"><img alt="" class="home_good"
										src="<c:url value='${recommendresult2.lipstickpicture.lpsrc }'/>"></a>
									<div class="push-text">
										<a href="#">
											<h4>${recommendresult2.lipstick.lname }</h4> <span class="push-variant"></span>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col col-md-4">
						<div class="panel js-equal-height">
							<div class="panel-body">
								<figure> <a href="#"><img alt=""
									class="home_series" src="<c:url value='${recommendresult2.series1.ssrc }'/>"></a>
								<figcaption class="goods_text"> <a href="#">
									<h5 class="push-suptitle">${recommendresult2.brand.bname }</h5>
								</a> <a href="#"><h4 class="push-title">${recommendresult2.series1.sname }</h4></a> </figcaption> </figure>
							</div>
						</div>
					</div>

					<div class="col col-md-4">
						<div class="panel js-equal-height">
							<div class="panel-body">
								<figure> <a href="#"><img alt=""
									class="home_series" src="<c:url value='${recommendresult2.series2.ssrc }'/>"></a>
								<figcaption class="goods_text"> <a href="#"><h5
										class="push-suptitle">${recommendresult2.brand.bname }</h5></a> <a href="#"><h4
										class="push-title">${recommendresult2.series2.sname }</h4></a> </figcaption> </figure>
							</div>
						</div>
					</div>
				</div>
				<!-- end of 信息部分  -->
				<div style="height:680px"></div>
			</div>
		</div>
	</div>

	<!-- start of 尾部  -->
	<footer class="contaniner content">
	<div class="footer-top">
		<div class="row">
			<div class="col-md-3">
				<!-- <span><h6 class="logoname">KISS OLIVE</h6><p>&nbsp;口&nbsp;红&nbsp;热&nbsp;门&nbsp;商&nbsp;城&nbsp;</p></span>
			           -->
				<span class="logoname"><img
					src="<c:url value='/img/user_home/logo_black.png'/>"></span>
			</div>
			<div class="col-md-9">
				<ul style="display:flex">
<c:forEach items="${brandList }" var="brand">
					<li class="branditem" ><a href="<c:url value='/MainServlet?method=searchByBrand&bid=${brand.bid }&bname=${brand.bname }'/>">${brand.bname }</a></li>
</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<div class="footer-bottom">
		<div class="footer-bottom-border">
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-3">
					<span class="title-footer-section">客户服务</span>
					<div class="nav-footer">
						<span class="title-footer-section"><a href="#">联系我们</a></span> <span
							class="title-footer-section wechat"><img
							class="wechat-img"
							src="<c:url value='/img/user_home/wechat.jpg'/>"></span>
					</div>
				</div>
				<div class="col-md-3">
					<span class="title-footer-section">&nbsp;</span>
					<div class="nav-footer">
						<ul class="ul_top">
							<li class="item"><a href="#">精品店</a></li>
							<li class="item"><a href="#">工作机会</a></li>
							<li class="item"><a href="#">使用条款</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4">
					<span class="title-footer-section1">电子通讯</span>
					<div class="nav-footer">
						<span class="title-footer-section font">率先获取最新商品的信息及KISS
							OLIVE的独家优惠：</a>
						</span>
						<div class="input-group title-footer-section">
							<input type="text" class="form-control"
								placeholder="Recipient's username"
								aria-describedby="basic-addon2"> <span
								class="input-group-addon" id="basic-addon2">@example.com</span>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	</footer>
	<!-- end of 尾部 -->



	<script type="text/javascript" src="<c:url value='/js/jquery.js'/>"></script>
	<script src="<c:url value='/js/bootstrap.min.js'/>"></script>
	<script type="text/javascript">
		$(function() {
			//轮播自动播放
			$('myCarousel').carousel({
				//自动3秒播放
				interval : 3000,
			});

			// 设置导航箭头垂直居中，
			$('.carousel-control').css('line-height',
					$('.carousel-inner img').height() + 'px');
			$(window).resize(
					function() {
						var $height = $('.carousel-inner img').eq(0).height()
								|| $('.carousel-inner img').eq(1).height()
								|| $('.carousel-inner img').eq(2).height();
						$('.carousel-control').css('line-height',
								$height + 'px');
					});
		});
	</script>
</body>
</html>
