<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'message.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/bootstrap.min.css'/>">
   <link rel="stylesheet" type="text/css" href="<c:url value='/css/admin/main.css'/>">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <style type="text/css">
     label{
     color:#72331b;
     }
     body {
           background-image:url(<c:url value='/img/msg.jpg'/>);
           background-repeat: no-repeat;
           background-size:100%;
		   text-align: center;
           }
      
      div {
		    margin: 500 auto 50 auto;
		    width: fit-content;
		    font-size: 22;
		  }
	 a{
	  font-size:20;
	 }
	</style>
    
  </head>
  
  <body>
    <div>
    <label class="msg"> ${message }</label>
    </div>
    
    <a href="<c:url value='${href }'/>" class="btn btn-primary" >返&nbsp;&nbsp;回</a>
    
  </body>
</html>
