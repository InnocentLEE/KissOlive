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
				<h1 class="page-header">系列管理--添加系列</h1>
			</div>
		</div>
		<!-- end:添加系列 -->

		<!-- start:添加 -->
		<form action="<c:url value='/servlet/AddSeriesServlet'/>"
			enctype="multipart/form-data" method="post">
			<div class="input-group">
				<span class="input-group-addon">系列名称</span> <input type="text"
					class="form-control" placeholder="请输入系列名称">
			</div>
			<div class="form-group">
				<span class="form-group-addon">所属品牌</span> 
				<select name="bid" id="bid" class="selectpicker show-tick" title="请选择一项" data-live-search="true" data-size="40">
					<c:forEach items="${brandList }" var="brand">
					<option value="${brand.bid }">${brand.bname }</option>
					</c:forEach>
				</select>
			</div>
			
			<!-- 上传图片 -->
			<div class="file-input">
				请选择LOGO图片：<input id="myfile" name="myfile" type="file"
					class="fileloading" />
			</div>
			<!-- end:添加 -->
			<input type="submit" value="确认添加" class="submit"><br/>
			<!-- 图片预览 -->
			<img id="previewImg" src="images/6913240BB1704701A6B24F42CD9B12FB.jpg" width="220" height="310" />
		</form>
	</div>
	<script type="text/javascript">
function loadSeries() {

	var bid = $("#bid").val();
	$.ajax({
		async:true,
		cache:false,
		url:"/KissOlive/TestServlet",
		data:{method:"ajaxFindSeries", bid:bid},
		type:"POST",
		dataType:"json",
		success:function(arr) {
			$("#sid").empty();
			$("#sid").append($("<option>====请选择系列====</option>"));
			for(var i = 0; i < arr.length; i++) {
				var option = $("<option>").val(arr[i].sid).text(arr[i].sname);
				$("#sid").append(option);
			}
		}
	});
}
</script>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-select.js"></script>

</body>
</html>
