<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Kiss OLive 官方商城网站</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">  
	
	 <link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>">
	 <link rel="stylesheet" href="<c:url value='/css/home.css'/>">
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
       <nav class="navbar navbar-default navbar-fixed-top">
		<div class ="container">
			<div class ="navbar-header">
			<ul class="nav navbar-nav navbar-left ">
			    <li><a href="<c:url value='/page/user/user_login.jsp'/>" class="navbar-brand">登陆</a></li>
			    <li><a href="<c:url value='/page/user/user_register.jsp'/>" class="navbar-brand">注册</a></li>
				
				
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
				<a href="#" ><img src="http://localhost:8080/KissOlive/img/kissolive.png"  class="icon-olive"/></a>
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
		<div class="grid" >
		     <section class="row cover">
    			 <div class="col col-md-12">
					<div id="myCarousel" class="carousel slide" >
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel"  data-slide-to="1"></li>
							<li data-target="#myCarousel"  data-slide-to="2"></li>
						</ol>
							<div class="carousel-inner">
								<div class="item active" >
									<img src="http://localhost:8080/KissOlive/img/user_home/1.jpg" alt="">
								</div>
								<div class="item">
									<img src="http://localhost:8080/KissOlive/img/user_home/2.jpg" alt="">
								</div>
								<div  class="item">
									<img src="http://localhost:8080/KissOlive/img/user_home/3.jpg" alt="">
								</div>
							</div>
							<a href="#myCarousel" data-slide="prev" class="carousel-control left">&lsaquo;</a>
							<a href="#myCarousel" data-slide="next" class="carousel-control right">&rsaquo;</a>
					</div>
			</div>
			</section>
		    <section class="row brand" >
		       <div class="col-md-4">
		       		<div class="panel js-equal-height">
		       		   <div class="push push-brand">
		       		        <a href="#" ><img alt="" src="http://localhost:8080/KissOlive/img/user_home/dior.jpg"></a>
		       		   </div>
		       		   <div class="push push-good">
		       		   		<a href="#" ><img alt="" src="http://localhost:8080/KissOlive/img/user_home/6.jpg"></a>
		       		   		<div class="push-text"></div>
		       		   </div>
		       		</div><!-- end of panel -->
		       </div><!-- end of col -->
		        <div class="col-md-4">
		           <div class="panel js-equal-height">
		             <div class="intro">
		             	<div class="goods">
		             	  <a href="#" ><img alt="" src="http://localhost:8080/KissOlive/img/user_home/4.jpg"></a>
		             	</div>
		             	<div class="goods_text">
		             	  <span><a href="#">全新DIOR迪奥烈艳蓝金液唇膏</a></span>
		             	</div>
		             </div>
		           </div><!-- end of panel -->
		       </div><!-- end of col -->
		        <div class="col-md-4">
		       		<div class="panel js-equal-height">
		             <div class="intro">
		             	<div class="goods">
		             	  <a href="#" ><img alt="" src="http://localhost:8080/KissOlive/img/user_home/5.jpg"></a>
		             	</div>
		             	<div class="goods_text">
		             	  <span><a href="#">全新DIOR迪奥烈艳蓝金液唇膏</a></span>
		             	</div>
		             </div>
		           </div><!-- end of panel -->
		       </div><!-- end of col -->
		    </section>
		     
		</div>
	</div>
</div>
      <script type="text/javascript" src="<c:url value='/js/jquery.js'/>"></script>
      <script src="<c:url value='/js/bootstrap.min.js'/>"></script>

  </body>
</html>
