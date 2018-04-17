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

<title>My JSP 'admin_addhot.jsp' starting page</title>

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
		<!-- start:热点系列 -->
		<div class="row">
			<div class="col-lg-10">
				<h1 class="page-header">选购热点管理--添加热点</h1>
			</div>
		</div>
		<!-- end:添加热点 -->

		<!-- start:添加 -->
		<form action="/KissOlive/admin/AdminServlet" method="post">
			<input type="hidden" name="method" value="addHotspot" />
			<div class="input-group">
				<span class="input-group-addon">热点名称</span> <input type="text"
					class="form-control" placeholder="请输入热点名称" name="hdescribe">
			</div>


			<!-- end:添加 -->
				<input type="submit" value="确认添加" class="submit">
		</form>
	</div>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-select.js"></script>
</body>
</html>
