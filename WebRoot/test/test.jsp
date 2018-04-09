<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="<c:url value='/js/jquery.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/js/test.js'/>"></script>
  </head>
  
  <body>
    ${MSG } <br>
	昵称：<input class="inputClass" type="text" name="username" id="username"/>
	<label class="errorClass" id="usernameError"></label><br>
	密码：<input text="password"/>

  </body>
</html>
