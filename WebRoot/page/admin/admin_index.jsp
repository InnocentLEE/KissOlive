<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin_index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
    <link rel="stylesheet" type="text/css" href="css/admin/style.min.css">
    <link rel="stylesheet" type="text/css" href="css/admin/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/admin/bootstrap.min.css">
     <link rel="stylesheet" type="text/css" href="css/admin/main.css">
  </head>
  
  <body>
  <!-- start: Header -->
  <div class="mm-page">
	<div class="navbar navbar-fixed-top" role="navigation">
		<div class="container-fluid">
		  <form class="navbar-form navbar-left">
				<button type="submit" class="fa fa-search"></button>
				<input type="text" class="form-control" placeholder="搜索...">
		</form>
		<ul class="nav navbar-nav navbar-right">
		  <li class="dropDown"><span>欢迎，admin</span>
		  <li><a href="#"><i class="fa fa-power-off"></i></a></li>
		  </ul>
		  </ul>
		</div>
	</div>

  

  </div>
<!-- end: Header -->
<!-- start: sidebar -->
			<div class="sidebar ">						
				<div class="sidebar-collapse">
					<div class="sidebar-header t-center">
                        <span><img class="text-logo" src="img/admin/logo1.png"></span>
                    </div>										
					<div class="sidebar-menu">						
						<ul class="nav nav-sidebar">
							<li><a href="page/admin/adamin_home.jsp" target="test"><i class="fa fa-home"></i><span class="text"> &nbsp;商城首页</span></a></li>
							<li><a href="#"><i class="fa fa-picture-o"></i><span class="text"> &nbsp;轮播图管理</span></a></li>
							<li><a href="#"><i class="fa fa-tag"></i><span class="text"> &nbsp;品牌管理</span></a></li>
							<li><a href="#"><i class="fa fa-shopping-cart"></i><span class="text"> &nbsp;商品管理</span></a></li>
							<li><a href="#"><i class="fa fa-circle"></i><span class="text"> &nbsp;色号管理</span></a></li>
							<li><a href="#"><i class="fa fa-heart"></i><span class="text"> &nbsp;选购热点管理</span></a></li>
							<li><a href="#"><i class="fa fa-list-alt"></i><span class="text"> &nbsp;订单管理</span></a></li>
							
						</ul>
					</div>					
				</div>
			</div>
	<!-- end: sidebar -->
	<!-- start: body -->
	<div class="container-fluid content">
      <div class="ppap" >
         <iframe src="http://localhost:8080/KissOlive/page/admin/adamin_home.jsp" frameborder="0" 
                 scrolling="yes" width="100%" height="100%" id="test"  name="test"></iframe>  
          </div>
       </div>
     </div>
   </div>
  
	<!-- end: body -->

  </body>
</html>
