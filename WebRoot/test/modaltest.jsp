<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'modaltest.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="css/admin/bootstrap.min.css">
<!-- <link rel="stylesheet" type="text/css" href="test/test.css"> -->
<link rel="stylesheet" href="css/admin/fontawesome-all.css">

</head>

<body>
	<table class="table table-hover table-striped">
		<thead>
			<tr>
				<th><input type="checkbox" id="all" class="whole_check">
					<label for="all" class="lcheck"></label></th>
				<th>产品</th>
				<th>单价</th>
				<th>数量</th>
				<th>价格</th>
			</tr>
		</thead>
		<tbody>
			<tr class="order_lists">
				<th scope="row"><input type="checkbox" id="checkbox_2"
					class="son_check"> <label for="checkbox_2"></label>
					<div class="list_img">
						<a href="javascript:;"><img
							src="<c:url value='/img/user_home/6.jpg'/>" alt=""></a>
					</div></th>
				<td>
				<a href="javascript:;">夏季男士迷彩无袖T恤圆领潮流韩版修身男装背心青年时尚打底衫男</a>
				 <p class="del"><a href="javascript:;" class="delBtn">删除</a></p>
				</td>
				<td><p class="price">￥980</p></td>
				<td>
				<div class="amount_box">
                     <a href="javascript:;" class="reduce reSty">-</a>
                     <input type="text" value="1" class="sum">
                     <a href="javascript:;" class="plus">+</a>
                </div>
				</td>
				<td><p class="sum_price">￥980</p></td>
			</tr>
			<tr class="order_lists">
				<th scope="row"><input type="checkbox" id="checkbox_3"
					class="son_check"> <label for="checkbox_3"></label>
					<div class="list_img">
						<a href="javascript:;"><img
							src="<c:url value='/img/user_home/6.jpg'/>" alt=""></a>
					</div></th>
				<td>
				<a href="javascript:;">夏季男士迷彩无袖T恤圆领潮流韩版修身男装背心青年时尚打底衫男</a>
				 <p class="del"><a href="javascript:;" class="delBtn">删除</a></p>
				</td>
				<td><p class="price">￥780</p></td>
				<td>
				<div class="amount_box">
                     <a href="javascript:;" class="reduce reSty">-</a>
                     <input type="text" value="1" class="sum">
                     <a href="javascript:;" class="plus">+</a>
                </div>
				</td>
				<td><p class="sum_price">￥780</p></td>
			</tr>
			<tr>
			<td></td>
			<td></td>
			<td></td>
			<td>
			  <div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
			</td>
			<td>
			  <div class="totalMoney">共计: <strong class="total_text">0.00</strong></div>
			</td>
			</tr>
			<tr>
			  <td> <div class="calBtn"><a href="javascript:;">结算</a></div></td>
			<tr>
	</table>

   <div class="model_bg"></div>
    <div class="my_model">
        <p class="title">删除宝贝<span class="closeModel">X</span></p>
        <p>您确认要删除该宝贝吗？</p>
        <div class="opBtn"><a href="javascript:;" class="dialog-sure">确定</a><a href="javascript:;" class="dialog-close">关闭</a></div>
    </div> 


	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="test/carts.js"></script>

</body>
</html>
