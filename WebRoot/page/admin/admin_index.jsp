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
<base href="<%=basePath%>" target="rightFrame">

<title>My JSP 'admin_index.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/admin/style.min.css">
<link rel="stylesheet" type="text/css"
	href="css/admin/fontawesome-all.css">
<link rel="stylesheet" type="text/css"
	href="css/admin/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/admin/main.css">
</head>

<body>

	<!-- start: sidebar -->
	<div class="sidebar ">
		<div class="sidebar-collapse">
			<div class="sidebar-header t-center">
				<span><img class="text-logo" src="img/admin/logo1.png"></span>
			</div>
			<div class="username">
				<span>欢迎，admin</span>
			</div>
			<div class="sidebar-menu">
				<ul class="nav nav-sidebar">
					<li><a
						href="<c:url value='/admin/AdminServlet?method=adminHomePage'/>"
						target="right"><i class="fas fa-home"></i><span class="text">
								&nbsp;首页管理</span></a></li>
					<li><a
						href="<c:url value='/admin/AdminServlet?method=adminHotspot'/>"
						target="right"><i class="fas fa-heart"></i><span class="text">
								&nbsp;选购热点管理</span></a></li>
					<li><a
						href="<c:url value='/admin/AdminServlet?method=adminColorno'/>"
						target="right"><i class="fas fa-circle"></i><span class="text">
								&nbsp;色号管理</span></a></li>
					<li><a
						href="<c:url value='/admin/AdminServlet?method=adminBrand'/>"
						target="right"><i class="fas fa-tag"></i><span class="text">
								&nbsp;品牌管理</span></a></li>
					<li><a
						href="<c:url value='/admin/AdminServlet?method=adminSeries'/>"
						target="right"><i class="fas fa-tags"></i><span class="text">
								&nbsp;系列管理</span></a></li>
					<li><a
						href="<c:url value='/admin/AdminServlet?method=adminLipstick'/>"
						target="right"><i class="fas fa-square"></i><span class="text">
								&nbsp;口红管理</span></a></li>
					<li><a
						href="<c:url value='/admin/AdminServlet?method=adminGoods'/>"
						target="right"><i class="fas fa-shopping-cart"></i><span
							class="text"> &nbsp;商品管理</span></a></li>
					<li><a
						href="<c:url value='/admin/AdminServlet?method=adminOrder'/>"
						target="right"><i class="fas fa-list-alt"></i><span
							class="text"> &nbsp;订单管理</span></a></li>

				</ul>
			</div>
		</div>
	</div>
</body>
</html>
