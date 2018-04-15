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

<title>My JSP 'admin_addseries.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css"
	href="css/admin/bootstrap.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.css"
	rel="stylesheet">
<link href="css/admin/bootstrap.file-input.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/admin/main.css">

</head>

<body>
	<div class="page-wrapper">
		<!-- start:添加系列 -->
		<div class="row">
			<div class="col-lg-10">
				<h1 class="page-header">品牌管理--添加系列</h1>
			</div>
		</div>
		<!-- end:添加系列 -->

		<!-- start:添加 -->
		<form action="<c:url value='/servlet/AddSeriesServlet'/>"
			enctype="multipart/form-data" method="post">
			<div class="form-group">
				<span class="form-group-addon">所属品牌</span> <select
					class="selectpicker show-tick" title="请选择一项"
					data-live-search="true" data-size="40">
					<option>迪奥</option>
					<option>阿玛尼</option>
					<option>YSL</option>
					<option>植村秀</option>
					<option>美宝莲</option>
					<option>MAC</option>
					<option>妙巴黎</option>
				</select>
			</div>
			<div class="input-group">
				<span class="input-group-addon">系列名称</span> <input type="text"
					class="form-control" placeholder="请输入系列名称">
			</div>
			<!-- 上传图片 -->
			<div class="file-input">
				<input type="file" id="file" name="seriesimg"
					class="custom-file-input">
			</div>
			<!-- end:添加 -->

			<input type="submit" value="提交" class="submit">
		</form>
	</div>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-select.js"></script>

</body>
</html>
