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
						<a class="btn btn-primary" href="page/admin/admin_addbrand.jsp">添加系列</a>
					</div>

				</div>
			</div>
		</div>
		<!-- end:系列管理 -->

		<!-- start:系列列表 -->
		<!-- start:一个品牌系列 -->
		<div class="row">
			<div class="table-wrap col-lg-10">
				<div class="container content">
					<div class="lmenu">
						<div class="lmenu-top">
							<img class="brand-logo" src="img/kissolive.png"> <span class="brand-name">Dior迪奥</span>
						</div>
					</div>
					<div class="rcontent">
						<div class="rcontent-list">
							<div class="card">
								<figure> <img id="card-series"
									src="images/6913240BB1704701A6B24F42CD9B12FB.jpg"> <figcaption class="series_text">
								<span class="mh4">Dior迪奥魅惑润唇膏Dior迪奥魅惑润唇膏Dior迪奥魅惑润唇膏</span>
								<p></p>
								<a class="opera" href="page/admin/admin_addbrand.jsp">编辑</a> <a
									class="opera">删除</a>
								</td></figure>
							</div>
							<div class="card">
								<figure> <img id="card-series"
									src="images/6913240BB1704701A6B24F42CD9B12FB.jpg"> <figcaption class="series_text">
								<span class="mh4">Dior迪奥魅惑润唇膏</span>
								<p></p>
								<a class="opera" href="page/admin/admin_addbrand.jsp">编辑</a> <a
									class="opera">删除</a>
								</td></figure>
							</div>
							<div class="card">
								<figure> <img id="card-series"
									src="images/6913240BB1704701A6B24F42CD9B12FB.jpg"> <figcaption class="series_text">
								<span class="mh4">Dior迪奥魅惑润唇膏</span>
								<p></p>
								<a class="opera" href="page/admin/admin_addbrand.jsp">编辑</a> <a
									class="opera">删除</a>
								</td></figure>
							</div>
							<div class="card">
								<figure> <img id="card-series"
									src="images/6913240BB1704701A6B24F42CD9B12FB.jpg"> <figcaption class="series_text">
								<span class="mh4">Dior迪奥魅惑润唇膏</span>
								<p></p>
								<a class="opera" href="page/admin/admin_addbrand.jsp">编辑</a> <a
									class="opera">删除</a>
								</td></figure>
							</div>
							<div class="card">
								<figure> <img id="card-series"
									src="images/6913240BB1704701A6B24F42CD9B12FB.jpg"> <figcaption class="series_text">
								<span class="mh4">Dior迪奥魅惑润唇膏</span>
								<p></p>
								<a class="opera" href="page/admin/admin_addbrand.jsp">编辑</a> <a
									class="opera">删除</a>
								</td></figure>
							</div>
							<div class="card">
								<figure> <img id="card-series"
									src="images/6913240BB1704701A6B24F42CD9B12FB.jpg"> <figcaption class="series_text">
								<span class="mh4">Dior迪奥魅惑润唇膏</span>
								<p></p>
								<a class="opera" href="page/admin/admin_addbrand.jsp">编辑</a> <a
									class="opera">删除</a>
								</td></figure>
							</div>
							<div class="card">
								<figure> <img id="card-series"
									src="images/6913240BB1704701A6B24F42CD9B12FB.jpg"> <figcaption class="series_text">
								<span class="mh4">Dior迪奥魅惑润唇膏</span>
								<p></p>
								<a class="opera" href="page/admin/admin_addbrand.jsp">编辑</a> <a
									class="opera">删除</a>
								</td></figure>
							</div>
							<div class="card">
								<figure> <img id="card-series"
									src="images/6913240BB1704701A6B24F42CD9B12FB.jpg"> <figcaption class="series_text">
								<span class="mh4">Dior迪奥魅惑润唇膏</span>
								<p></p>
								<a class="opera" href="page/admin/admin_addbrand.jsp">编辑</a> <a
									class="opera">删除</a>
								</td></figure>
							</div>
							<div class="card">
								<figure> <img id="card-series"
									src="images/6913240BB1704701A6B24F42CD9B12FB.jpg"> <figcaption class="series_text">
								<span class="mh4">Dior迪奥魅惑润唇膏</span>
								<p></p>
								<a class="opera" href="page/admin/admin_addbrand.jsp">编辑</a> <a
									class="opera">删除</a>
								</td></figure>
							</div>
							<div class="card">
								<figure> <img id="card-series"
									src="images/6913240BB1704701A6B24F42CD9B12FB.jpg"> <figcaption class="series_text">
								<span class="mh4">Dior迪奥魅惑润唇膏</span>
								<p></p>
								<a class="opera" href="page/admin/admin_addbrand.jsp">编辑</a> <a
									class="opera">删除</a>
								</td></figure>
							</div>
						</div>
					</div>
				</div>
				<!-- end:一个品牌系列 -->
				
				<!-- start:一个品牌系列 -->
				<div class="container content">
					<div class="lmenu">
						<div class="lmenu-top">
							<img class="brand-logo" src="img/kissolive.png"> <span class="brand-name">Dior迪奥</span>
						</div>
					</div>
					<div class="rcontent">
						<div class="rcontent-list">
							<div class="card">
								<figure> <img id="card-series"
									src="images/6913240BB1704701A6B24F42CD9B12FB.jpg"> <figcaption class="series_text">
								<span class="mh4">Dior迪奥魅惑润唇膏</span>
								<p></p>
								<a class="opera" href="page/admin/admin_addbrand.jsp">编辑</a> <a
									class="opera">删除</a>
								</td></figure>
							</div>
							<div class="card">
								<figure> <img id="card-series"
									src="images/6913240BB1704701A6B24F42CD9B12FB.jpg"> <figcaption class="series_text">
								<span class="mh4">Dior迪奥魅惑润唇膏</span>
								<p></p>
								<a class="opera" href="page/admin/admin_addbrand.jsp">编辑</a> <a
									class="opera">删除</a>
								</td></figure>
							</div>
							<div class="card">
								<figure> <img id="card-series"
									src="images/6913240BB1704701A6B24F42CD9B12FB.jpg"> <figcaption class="series_text">
								<span class="mh4">Dior迪奥魅惑润唇膏</span>
								<p></p>
								<a class="opera" href="page/admin/admin_addbrand.jsp">编辑</a> <a
									class="opera">删除</a>
								</td></figure>
							</div>
							<div class="card">
								<figure> <img id="card-series"
									src="images/6913240BB1704701A6B24F42CD9B12FB.jpg"> <figcaption class="series_text">
								<span class="mh4">Dior迪奥魅惑润唇膏</span>
								<p></p>
								<a class="opera" href="page/admin/admin_addbrand.jsp">编辑</a> <a
									class="opera">删除</a>
								</td></figure>
							</div>
							<div class="card">
								<figure> <img id="card-series"
									src="images/6913240BB1704701A6B24F42CD9B12FB.jpg"> <figcaption class="series_text">
								<span class="mh4">Dior迪奥魅惑润唇膏</span>
								<p></p>
								<a class="opera" href="page/admin/admin_addbrand.jsp">编辑</a> <a
									class="opera">删除</a>
								</td></figure>
							</div>
							<div class="card">
								<figure> <img id="card-series"
									src="images/6913240BB1704701A6B24F42CD9B12FB.jpg"> <figcaption class="series_text">
								<span class="mh4">Dior迪奥魅惑润唇膏</span>
								<p></p>
								<a class="opera" href="page/admin/admin_addbrand.jsp">编辑</a> <a
									class="opera">删除</a>
								</td></figure>
							</div>
							<div class="card">
								<figure> <img id="card-series"
									src="images/6913240BB1704701A6B24F42CD9B12FB.jpg"> <figcaption class="series_text">
								<span class="mh4">Dior迪奥魅惑润唇膏</span>
								<p></p>
								<a class="opera" href="page/admin/admin_addbrand.jsp">编辑</a> <a
									class="opera">删除</a>
								</td></figure>
							</div>
							<div class="card">
								<figure> <img id="card-series"
									src="images/6913240BB1704701A6B24F42CD9B12FB.jpg"> <figcaption class="series_text">
								<span class="mh4">Dior迪奥魅惑润唇膏</span>
								<p></p>
								<a class="opera" href="page/admin/admin_addbrand.jsp">编辑</a> <a
									class="opera">删除</a>
								</td></figure>
							</div>
							<div class="card">
								<figure> <img id="card-series"
									src="images/6913240BB1704701A6B24F42CD9B12FB.jpg"> <figcaption class="series_text">
								<span class="mh4">Dior迪奥魅惑润唇膏</span>
								<p></p>
								<a class="opera" href="page/admin/admin_addbrand.jsp">编辑</a> <a
									class="opera">删除</a>
								</td></figure>
							</div>
							<div class="card">
								<figure> <img id="card-series"
									src="images/6913240BB1704701A6B24F42CD9B12FB.jpg"> <figcaption class="series_text">
								<span class="mh4">Dior迪奥魅惑润唇膏</span>
								<p></p>
								<a class="opera" href="page/admin/admin_addbrand.jsp">编辑</a> <a
									class="opera">删除</a>
								</td></figure>
							</div>
						</div>
					</div>
				</div>
				<!-- end:一个品牌系列 -->
			</div>
		</div>
		<!-- end:系列列表 -->
	</div>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript"></script>
</body>
</html>
