<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Kiss Olive 口红管理</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/css/admin/main.css'/>">
<link rel="stylesheet" href="<c:url value='/css/user/user_brand.css'/>">
<link rel="stylesheet" href="<c:url value='/css/admin/lipsticks.css'/>">

<style type="text/css">
    span.mh4 {
    color: #333;
   }
</style>
	

</head>
<body>
      <div class="page-wrapper">
		<!-- start:口红管理 -->
		<div class="row">
			<div class="col-lg-10">
				<h1 class="page-header">口红管理</h1>
				<div class="page-header-right">
					<div class="btn-group">
						<a class="btn btn-primary" href="<c:url value='/admin/AdminServlet?method=addLipstickpre'/>">口红添加</a>
					</div>
				</div>
			</div>
		</div>
		<!-- end:口红管理 -->

		<!-- start:口红卡片布局列表 -->
		<div class="row">
			<div class="table-wrap col-lg-10">
			    <div class="rcontent-list">
							<a id="link" href="<c:url value='/page/admin/admin_lipstickdetail.jsp'/>"><div class="card">
								<figure> <img id="card-series"
									src="<c:url value='/img/user_home/6.jpg'/>"> 
								<figcaption class="lip_text">
								<span class="mh4">Dior迪奥魅惑润唇膏Dior迪奥魅惑润唇膏Dior迪奥魅惑润唇膏Dior迪奥魅惑润唇膏</span>
								</figcaption>
								</figure>
							</div></a>
							<div class="card">
								<figure> <img id="card-series"
									src="<c:url value='/img/user_home/6.jpg'/>"> 
								<figcaption class="lip_text">
								<span class="mh4">Dior迪奥魅惑润唇膏</span>
								</figcaption>
								</figure>
							</div>
							<div class="card">
								<figure> <img id="card-series"
									src="<c:url value='/img/user_home/6.jpg'/>"> 
								<figcaption class="lip_text">
								<span class="mh4">Dior迪奥魅惑润唇膏</span>
								</figcaption>
								</figure>
							</div>
							<div class="card">
								<figure> <img id="card-series"
									src="<c:url value='/img/user_home/6.jpg'/>"> 
								<figcaption class="lip_text">
								<span class="mh4">Dior迪奥魅惑润唇膏</span>
								</figcaption>
								</figure>
							</div>
							<div class="card">
								<figure> <img id="card-series"
									src="<c:url value='/img/user_home/6.jpg'/>"> 
								<figcaption class="lip_text">
								<span class="mh4">Dior迪奥魅惑润唇膏</span>
								</figcaption>
								</figure>
							</div>
						
				 
			</div>
		</div>
		<!-- end:口红卡片列表 -->
	</div>
	
	<script type="text/javascript" src="<c:url value='/js/jquery.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/js/bootstrap.min.js'/>"></script>
  </body>
</html>
