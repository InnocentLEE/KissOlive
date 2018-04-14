<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'admin_addgoods.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css"
	href="css/admin/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/admin/main.css">
<link href="css/admin/bootstrap.file-input.css" rel="stylesheet">

</head>

<body>
	<div class="page-wrapper">
		<!-- start:添加商品 -->
		<div class="row">
			<div class="col-lg-10">
				<h1 class="page-header">商品管理--添加商品</h1>
			</div>
		</div>
		<!-- end:添加品牌 -->

		<!-- start:添加 -->
		<form action="page/admin/admin_goods.jsp">
			<div class="form-group">
				<span class="form-group-addon">商品描述</span> <select
					class="selectpicker show-tick" title="请选择选购热点"
					data-live-search="true" data-size="40">
					<option>保湿</option>
					<option>防晒</option>
					<option>哑光</option>
				</select>
			</div>
			<div class="form-group">
				<span class="form-group-addon">商品描述</span> 
				<div class="col-sm-6" id="brand">
				<select
					class="selectpicker show-tick" title="请选择所属品牌"
					data-live-search="true" data-size="40">
					<option>保湿</option>
					<option>防晒</option>
					<option>哑光</option>
				</select>
				<select
					class="selectpicker show-tick" title="请选择所属系列"
					data-live-search="true" data-size="40">
					<option>保湿</option>
					<option>防晒</option>
					<option>哑光</option>
				</select>
				</div>
			</div>
			<!-- 上传图片 -->
			<div class="file-input">
				<input type="file" id="file" class="custom-file-input">
			</div>
			<!-- end:添加 -->

			<input type="submit" value="提交" class="submit">
			<!-- end:提交&取消 -->
		</form>
	</div>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap.file-input.js"></script>
</body>
</html>
