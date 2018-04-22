<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'testcheckbox.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form action="/KissOlive/admin/AdminServlet" method="post">
    <input type="hidden" name="method" value="test">
    <input type="hidden" name="face" value="12">
    <input type="hidden" name="face" value="13">
    <input type="hidden" name="face" value="14">
    <input type="hidden" name="face" value="15">
    <input type="hidden" name="face" value="16">
    <input type="checkbox" name="cart" value="cid">cart的信息<br/>
    <input type="checkbox" name="cart" value="cid">cart的信息<br/>
    <input type="checkbox" name="cart" value="cid">cart的信息<br/>
    <input type="checkbox" name="cart" value="cid">cart的信息<br/>
    <input type="submit" value="提交">
    </form>
  </body>
</html>
