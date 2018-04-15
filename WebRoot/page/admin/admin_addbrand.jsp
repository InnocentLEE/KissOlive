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
	href="css/admin/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/admin/main.css">
<link href="css/admin/bootstrap.file-input.css" rel="stylesheet">



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
		<form action="<c:url value='/servlet/AddBrandServlet'/>"
			enctype="multipart/form-data" method="post">
			<div class="input-group">
				<span class="input-group-addon">品牌名称</span> <input type="text"
					name="brand" class="form-control" placeholder="请输入品牌名称">
			</div>
			<!-- 上传图片 -->
			<div class="file-input">
				<input type="file" id="file" name="brandimg" class="custom-file-input">
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
