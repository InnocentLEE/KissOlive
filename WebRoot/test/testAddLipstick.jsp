<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'testAddLipstick.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="<c:url value='/js/jquery.js'/>"></script>
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
  </head>
  
  <body>
    口红名字：<input type="text" />

  品牌：<select name="bid" id="bid" onchange="loadSeries()">
						<option value="">====请选择品牌====</option>
<c:forEach items="${brandList }" var="brand">
			    		<option value="${brand.bid }">${brand.bname }</option>
</c:forEach>
		</select>
  系列：<select name="sid" id="sid">
						<option value="">====请选择系列====</option>
		</select>

</body>
</html>
