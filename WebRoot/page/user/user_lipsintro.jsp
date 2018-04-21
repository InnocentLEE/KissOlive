<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Kiss OLive 商品详情</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/css/admin/fontawesome-all.css'/>">
<link rel="stylesheet" href="<c:url value='/css/user/home.css'/>">
<link rel="stylesheet" href="<c:url value='/css/user/user_lips.css'/>">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>
  
  <body>
    <!-- start of 头部 -->
	<div class="header-main-bar">
		<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container header">
			<c:choose>
				<c:when test="${empty sessionScope.sessionUser }">
				 <input type="hidden" name="validate_user" id="booleanuser" value="${empty sessionScope.sessionUser }">
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
	 <!-- start of 头部 -->
	 <!-- start of 内容 -->
	<div class="container content">
		   <div class="product-pic">
		     <img class="pic" src="<c:url value='${lipstickAndPictureAndGoodsAndColorno.mainPicture.lpsrc }'/>" alt="">
		   </div>
		   <div class="product-intro">
		     <h1 class="product-name">${lipstickAndPictureAndGoodsAndColorno.lipstick.lname }</h1>
		     <h2 class="product-disc">${hotspot.hdescribe }</h2>
		     <h3 class="product-price" id="gprice"></h3>
		     <div class="product-color row" id="wrap">
		        <label class="pro-label">颜色分类&nbsp;</label>
		        <ul class="color-group">
<c:forEach items="${lipstickAndPictureAndGoodsAndColorno.goodsAndColornoList }" var="goodsandcolorno" varStatus="index">
	<c:choose>
	<c:when test="${index.count < 2 }">
				<li class="color-item" id="${goodsandcolorno.goods.gid }" value="${goodsandcolorno.goods.gprice }">
			          <em id="${goodsandcolorno.goods.gid }" title="${goodsandcolorno.colorno.cncode }" style="background: ${goodsandcolorno.colorno.cnRGB }">&nbsp;<i></i></em>
			          <input type="radio" id="${goodsandcolorno.goods.gprice }" value="${goodsandcolorno.goods.gid }" name="gid"checked>
			          <input type="radio" id="${goodsandcolorno.goods.gprice }" value="${goodsandcolorno.goods.gid }" name="gid"checked>
			    
			     </li>
	</c:when>
	<c:otherwise>
				<li class="color-item" id="${goodsandcolorno.goods.gid }" value="${goodsandcolorno.goods.gprice }">
			        <em id="${goodsandcolorno.goods.gid }" style="background: ${goodsandcolorno.colorno.cnRGB }">&nbsp;<i></i></em>
			         <input type="radio" id="${goodsandcolorno.goods.gprice }" value="${goodsandcolorno.goods.gid }" name="gid">
			     </li>
	</c:otherwise>
	</c:choose>
</c:forEach>
               </ul>
		        </div>
		        <div class="product-num row">
		           <label class="pro-label num">数量&nbsp;</label>
		           <div class="input-group count" style="grid-row-start:1;margin:auto 0;">
		              <input class="inputclass" id="reduce" type=button value="-">
                      <input class="inputclass" id="gnumber" type=text name=amount value="1" disabled>
                      <input class="inputclass" id="plus" type=button value="+">
		           </div>
		         </div>
		     <button type="button" class="btn btn-buy" onclick="valid()">>加入购物袋</button>
		 </div>
		 <div class="product-pram mid">
		 	<div class="line"><span class="header">商品详情</span></div>
		 	<div class="pram">
		 		<div class="content">
		 		    <div class="title">
		 			<h2>PRODUCT PARAMETER</h2>
		 			<h3>产品参数</h3>
		 			</div>
		 			<div class="intro-text">
		 			 <label class="lip-label"style="grid-column: 1/6;grid-column-start: 2;">产品名称：&nbsp;${lipstickAndPictureAndGoodsAndColorno.lipstick.lname }&nbsp;</label>
		 			  <label class="lip-label"style="grid-row-start: 2;grid-column-start: 2;">产品品牌：&nbsp;${Brand.bname }&nbsp;</label>
		 			   <label class="lip-label"style="grid-row-start: 3;grid-column-start: 2;">产品系列：&nbsp;${Series.sname }&nbsp;</label>
		 			    <label class="lip-label" style="grid-column: 1/6;grid-row-start:4 ;grid-column-start:2;">选购热点：&nbsp;${hotspot.hdescribe }&nbsp;</label>
		 			     <label class="lip-label"style="grid-row-start: 2;grid-column-start: 4;">所属产地：&nbsp;${lipstickAndPictureAndGoodsAndColorno.lipstick.lorigin }&nbsp;</label>
		 			      <label class="lip-label"style="grid-row-start: 3;grid-column-start: 4;">适合肤质：&nbsp;${lipstickAndPictureAndGoodsAndColorno.lipstick.skin }&nbsp;</label>
		 			       <label class="lip-label"style="grid-row-start: 4;grid-column-start: 4;">保质期限：&nbsp;${lipstickAndPictureAndGoodsAndColorno.lipstick.shelflife }年&nbsp;</label>
		 			</div>
		 		</div>
		 	</div>
		 </div>
		 <div class="product-pic bottom">
		 	 <img class="morecontent" src="<c:url value='${lipstickAndPictureAndGoodsAndColorno.detailPicture.lpsrc }'/>">
		 </div>
	</div>
	<!-- end of 内容 -->
	
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
		document.getElementById("gprice").innerHTML = "选择颜色查看价钱";
		$("li.color-item").click(
				function() {
					$(this).addClass("selected").siblings()
							.removeClass("selected");
					//var value = $('#wrap input[name="gid"]:checked').attr("id");
					document.getElementById("gprice").innerHTML = "￥ "+ $(this).attr("value") + "元";
				})
	  })
	</script>
	<script>  
		$(document).ready(function(){  
		//获得文本框对象  
		var t = $("#gnumber");  
			//初始化数量为1,并失效减  
			$('#reduce').attr('disabled',true); 
			
		    //数量增加操作  
		    $("#plus").click(function(){      
		        // 给获取的val加上绝对值，避免出现负数  
		        t.val(Math.abs(parseInt(t.val()))+1);  
		        if (parseInt(t.val())!=1){  
		        $('#reduce').attr('disabled',false);  
		        };  
		    })   
		    //数量减少操作  
		    $("#reduce").click(function(){  
		    t.val(Math.abs(parseInt(t.val()))-1);  
		    if (parseInt(t.val())==1){  
		    $('#reduce').attr('disabled',true);  
		    };  
		    }) 
});  
		  function valid(){
			  var islogin = $("input[type='hidden']").val();
			  var price = $('#gprice').text();
			 
			  var gid = $("input[type='radio']").attr("value");//获取商品id
			  var gnumber = $('#gnumber').val();//获取商品当前数量gnmber
			  
			   if(islogin==true){
				  alert("您还没有登录！");
			  }else if(price=="选择颜色查看价钱"){
				  alert("请选择想购买的口红颜色！");
			  }else{
				  $.ajax({
						url:"/KissOlive/MainServlet",//要请求的servlet
						data:{method:"ajaxAddCart", gid:gid,gnumber:gnumber},//给服务器的参数
						type:"POST",
						dataType:"json",
						async:false,//是否异步请求，如果是异步，那么不会等服务器返回，这个函数就向下运行了。
						cache:false,
						success:function(result) {
							if(!result) {//如果校验失败
								alert("您还没有登录！");
								return false;
							}else{
								alert("添加成功！");
								return true;
							}
						}
					}); 
			  }
		    }
</script>    
	 
  </body>
</html>
