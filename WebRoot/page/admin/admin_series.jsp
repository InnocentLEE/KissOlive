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

<title>My JSP 'admin_series.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css"
	href="css/admin/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/admin/main.css">
<link rel="stylesheet" type="text/css" href="css/admin/series.css">

</head>

<body>
	<div class="page-wrapper">
		<!-- start:系列管理 -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">系列管理</h1>
				<div class="page-header-right">
					<div class="btn-group">
						<a class="btn btn-primary" href="admin/AdminServlet?method=addSeriespre">添加系列</a>
					</div>

				</div>
			</div>
		</div>
		<!-- end:系列管理 -->

		<!-- start:系列列表 -->
		<!-- start:一个品牌系列 -->
		<div class="row">
			<div class="table-wrap col-lg-10">
<c:forEach items="${brandAndSeriesList }" var="brandandseries">

				<div class="container content">
					<div class="lmenu">
						<div class="lmenu-top">
							<img class="brand-logo" src="${brandandseries.brand.bsrc }"> <span class="brand-name">${brandandseries.brand.bname }</span>
						</div>
					</div>
					<div class="rcontent">
						<div class="rcontent-list">
		<c:forEach items="${brandandseries.seriesList }" var="series">
							<div class="card">
								<figure> <img id="card-series" src="${series.ssrc }">
									 <figcaption class="series_text">
								<span class="mh4">${series.sname }</span>
								<p></p>
								</figcaption>
								<div class="operate">
								<a class="opera" href="page/admin/admin_addbrand.jsp">编辑</a> <a
									class="opera" href="admin/AdminServlet?method=deleteSeries&sid=${series.sid }">删除</a>
									</div>
								</figure>
							</div>
		</c:forEach>			
							
						</div>
					</div>
				</div>
				<!-- end:一个品牌系列 -->
</c:forEach>				
			</div>
		</div>
		<!-- end:系列列表 -->
	</div>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript"></script>
</body>
</html>
