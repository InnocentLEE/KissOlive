<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>My JSP 'admin_addbrand.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/admin/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/admin/main.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/admin/bootstrap.file-input.css">



</head>

<body>
	<div class="page-wrapper">
		<!-- start:添加品牌 -->
		<div class="row">
			<div class="col-lg-10">
				<h1 class="page-header">品牌管理--添加品牌</h1>
			</div>
		</div>
		<!-- end:添加品牌 -->

		<!-- start:添加 -->
		<div class="input-group">
			<span class="input-group-addon">品牌名称</span> <input type="text"
				class="form-control" placeholder="请输入品牌名称">
		</div>
		<br>
		<img id="previewImg" src="img/kissolive.png" width="80" height="80" />
		<form action="admin_brand.jsp" method="post" enctype="multipart/form-data">
			<div class="file-input">
				请选择LOGO图片：<input id="myfile" name="myfile" type="file"
					class="fileloading" />
			</div>
			<input type="submit" value="确认添加" class="submit">
		</form>
		<!-- end:添加 -->
	</div>
	<script src="<%=request.getContextPath()%>/js/jquery.js"></script>
	<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/fileupload.js"></script>
</body>
</html>
