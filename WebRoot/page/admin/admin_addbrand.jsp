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

<title>My JSP 'admin_addbrand.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css"
	href="css/admin/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/admin/main.css">


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
			<span class="input-group-addon">品牌名称</span> 
			<input type="text"class="form-control"  placeholder="请输入品牌名称">
		</div>
		<div class="upload">
			<span class="upload-picture">logo上传</span>

		</div>
		<!-- end:添加 -->
	</div>

</body>
</html>
