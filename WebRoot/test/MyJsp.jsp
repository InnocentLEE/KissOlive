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

<title>My JSP 'MyJsp.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="test/test.css">


</head>

<body>

	<!-- <ul>
		parent element
		<li></li>
		first child element
		<li></li>
		second child element
		<li></li>
		third child element
	</ul> -->
	<!-- <div class="grid-container">
	  <div class="grid-item"></div>
	  <div class="grid-item"></div>
	  <div class="grid-item"></div>
	</div> -->
	<!-- <div class="container">
		<div class="header">HEADER</div>
		<div class="menu">MENU</div>
		<div class="content">CONTENT</div>
		<div class="footer">FOOTER</div>
	</div> -->
	<div class="container">
		<div class="header"><img src="http://localhost:8080/KissOlive/img/user_home/1.jpg"></div>
		<div class="home_collapse"><img src="http://localhost:8080/KissOlive/img/user_home/2.jpg"></div>
		<div class="home_content1"><img src="http://localhost:8080/KissOlive/img/user_home/3.jpg"></div>
		<div class="home_content2"><img src="http://localhost:8080/KissOlive/img/user_home/5.jpg"></div>
		<div class="footer1"><img src="http://localhost:8080/KissOlive/img/user_home/6.jpg"></div>
		<div class="footer2"><img src="http://localhost:8080/KissOlive/img/user_home/dior.jpg"></div>
	</div>


</body>
</html>
