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
				<h1 class="page-header">轮播图管理--添加轮播</h1>
			</div>
		</div>
		<!-- end:添加品牌 -->

		<!-- start:添加 -->
		<form action="/KissOlive/servlet/UpdateShufflingServlet" method="post" enctype="multipart/form-data">
		<div class="input-group">
		<input type="hidden" class="form-control" name="orderBy" value="${shuffling.orderBy }">
		</div>
		<img id="previewImg" src="${shuffling.src }" width="576" height="232" />
		<br/><br/><br/><br/><br/><br/><br/><br/>
			<div class="file-input">
				请选择图片：<input id="myfile" name="myfile" type="file"
					class="fileloading" />
			</div>
			<input type="submit" value="确认更换" class="submit">
		</form>
		
	<!-- end:添加 -->
	</div>
	<script src="<%=request.getContextPath()%>/js/jquery.js"></script>
	<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/fileupload.js"></script>
</body>
</html>
