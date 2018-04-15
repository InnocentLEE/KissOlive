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

<title>My JSP 'admin_addcolor.jsp' starting page</title>

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
		<!-- start:添加色号 -->
		<div class="row">
			<div class="col-lg-10">
				<h1 class="page-header">色号管理--添加色号</h1>
			</div>
		</div>
		<!-- end:添加色号 -->
		<!-- start:添加 -->
		<form action="page/admin/admin_hot.jsp">
			<div class="input-group">
				<span class="input-group-addon">色号名称</span> <input type="text"
					class="form-control" placeholder="请输入热点名称">
			</div>

			<!-- start:获取色值 -->

			<!-- end:获取色值 -->


			<input type="submit" value="提交" class="submit">
		</form>
		<!-- end:添加 -->
	</div>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-select.js"></script>
</body>
</html>
