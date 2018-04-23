<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Kiss OLive 我的购物袋</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/css/admin/fontawesome-all.css'/>">
<link rel="stylesheet" href="<c:url value='/css/user/home.css'/>">
<link rel="stylesheet" href="<c:url value='/css/user/user_cart.css'/>">
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
							<li><a
								href="<c:url value='/servlet/UserServlet?method=userInfo'/>"
								class="navbar-brand">${sessionScope.sessionUser.username }</a></li>
							<li><a
								href="<c:url value='/servlet/UserServlet?method=quit'/>"
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
							<li><a href="<c:url value='/MainServlet?method=userCart'/>"><span
									class="glyphicon glyphicon-shopping-cart">&nbsp;<span>我的购物车</span></span></a></li>
							<li><a href="<c:url value='/MainServlet?method=userOrder'/>"><span class="glyphicon glyphicon-list">&nbsp;<span>我的订单</span></span></a></li>
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
					<a href="index.jsp"><img
						src="<c:url value='/img/kissolive.png'/>" class="icon-olive" /></a>
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
		<div class="leadertab row">
			<ul id="myTab" class="nav nav-tabs" role="tablist">
				<li id="step1Li" class="active black">
					 1<br>我的购物袋
				</li>
				<li id="step2Li" class="gray"> 2<br>支付及物流
				</li>
				<li id="step3Li" class="gray">3<br>成功提交订单
				</li>
			</ul>
           
			<div id="myTabContent" class="tab-content">
				<!-- 购物车页面 -->
				<div id="step1" class="tab-pane fade active in">
					<div class="back">
						<a class="back" href="<c:url value='/page/user/user_home.jsp'/>">&lt;&lt;&nbsp;继续购物
							<span class="glyphicon glyphicon-shopping-cart"></span>
						</a>
					</div>
					<label class="labelhead">我的购物袋&nbsp;(${size })</label>
					<form action="/KissOlive/MainServlet" method="post">
					<input type="hidden" name="method" value="sentCartItem">
					<table class="table table-hover">
						<thead>
							<tr>
								<th style=" width: 110;">
								<input type="checkbox" id="all" class="whole_check">
									<label for="all" class="lcheck"></label>全选</th>
								<th>&nbsp;</th>
								<th>产品</th>
								<th>&nbsp;&nbsp;&nbsp;&nbsp;单价</th>
								<th>数量</th>
								<th>价格</th>
							</tr>
						</thead>
						<tbody>
						
<c:forEach items="${cartItemList }" var="cartItem">
							<tr class="order_lists" id="cid">
								<th class="headth" scope="row"><input type="checkbox" value="${cartItem.cart.cid }"
									class="son_check" name="cart" > <label for="checkbox_2"></label>
								</th>
								<th>
									<div class="list_img">
										<img src="<c:url value='${cartItem.mainsrc }'/>" alt="">
									</div></th>
								<td><p class="goodname">${cartItem.lname }</p>
								    <p class="goodcolor">${cartItem.cncode }</p>
									<p class="del">
										<a href="MainServlet?method=deleteCart&cid=${cartItem.cart.cid }" class="delBtn" id="cid2">删除</a>
									</p></td>
								<td><p class="price">￥${cartItem.gprice }</p></td>
								<td>
									<div class="amount_box">
										<button class="reduce reSty btn" type="button" id="${cartItem.cart.cid }">-</button>
										<input type="text" value="${cartItem.number }" class="sum" disabled>
										<button class="plus btn" type="button" id="${cartItem.cart.cid }">+</button>
									</div>
								</td>
								<td><p class="sum_price">￥${cartItem.totalprice }</p></td>
							</tr>
</c:forEach>
							
							<tr>
							   <th rowspan="2" colspan="4" style="vertical-align: middle;padding: 0 0 0 50;font-size: 20px;font-weight: normal; ">订单总结</th>
							   <td>商品价格</td>
							   <td><strong class="total_text">0.00</strong></td>
							</tr>
							<tr>
							   <td>运费</td>
							   <td>免邮</td>
							</tr>
							<tr class="bordertop">
								<th colspan="4" ></th>
								<td>
								已选商品
								</td>
								<td>
									<div class="piece">
										<strong class="piece_num">0</strong>件
									</div>
								</td>
							</tr>
							<tr>
								<th colspan="4"></th>
								<td>
								共计
								</td>
								<td >
									<div class="totalMoney">
										<strong class="total_text">0.00</strong>
									</div>
								</td>
							</tr>
							<tr>
								<th colspan="4"></th>
								<td colspan="2">
								   <input style="color: #fff;" type="submit" class="calBtn"  id="buycid" value="立即结算"/>
							    </td>
							  <tr>
					</table>
					</form>
					<!-- 删除物品模态框提示是否删除 -->
					<!-- Start of Modal -->
								<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
												<h4 class="modal-title" id="myModalLabel">删除商品</h4>
											</div>
											<!-- end of modal-header -->
											<div class="modal-body">
												<p>您确认要删除该商品吗？</p>
											</div>
											<!-- end of modal-body -->
											<div class="modal-footer">
												<button type="button" class="btn btn-primary"
													data-dismiss="modal" id="cancel">取消</button>
												<button type="button" class="btn btn-primary" id="check-btn"
													name="check-btn" onclick="del();">确定</button>
											</div>
											<!-- end of modal-footer -->
										</div>
										<!-- end of modal-content -->
									</div>
									<!-- end of modal-dialog -->
								</div>
								<!-- end of modal fade -->
								<!-- End of Modal -->
								
				</div>
				<!-- 购物车页面 -->
			</div>
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
						<li class="branditem"><a
							href="<c:url value='/MainServlet?method=searchByBrand&bid=${brand.bid }&bname=${brand.bname }'/>">${brand.bname }</a></li>
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
	<script type="text/javascript" src="<c:url value='/js/jquery.cityselect.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/js/shoppingcart.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/js/valid.js'/>"></script>


   <script type="text/javascript">
    
      $(function(){
			
				$("#city").citySelect({
					prov:"广东",
					city:"肇庆",
					dist:"端州区",
					nodata:"none"
				});
		       });
      

	   /*
	   * 每个checkbox的id为cid，每个删除后面都要有一个跟checkbox一样的id名，确保删除的时候能够判断返回数据
	   * 点击立即结算，预判所有checkbox是否被勾选，var cid值只等于有勾选的checkbox的id值
	   */
     
     function del(){
   	 
	    	var cid = $("a[class='delBtn']").attr("id");//获取购物车商品的cid
	    	
           $.ajax({
	    		url:"/KissOlive/MainServlet",//要请求的servlet
	    		data:{method:"ajaxAddCart", cid:cid},//给服务器的参数
	    		type:"POST",
	    		dataType:"json",
	    		async:false,//是否异步请求，如果是异步，那么不会等服务器返回，这个函数就向下运行了。
	    		cache:false,
	    		success:function(result) {
	    			if(!result) {//如果校验失败
	    				alert("无法删除！请重试！");
	    				return false;
	    			}
	    			else{
	    				$('#myModal').modal('hide');
	    				//alert("删除成功！");
	    			}
	    		}
	    	});
	    }
	   
       $(".add_addr").click(function(){
		    $(".div_add_addr").slideToggle();
		  });
       
       function judge(){
    	   var i=0;
    	   $("input[name='selectaddr']").each(function(){
    		  if($(this).is(':checked')) 
    			{
    			  i=1;
    			  $('#codeModal').modal('show');
    			}
    	   });
    	   if(i==0)
    	   alert("请选择收货地址！！！");
       }
       
    
    </script>
</body>
</html>
