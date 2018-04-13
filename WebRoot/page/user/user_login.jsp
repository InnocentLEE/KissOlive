<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <title>Kiss Olive 官方商城 注册页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">   
	<meta http-equiv="X-UA-Compatible" content="IE-edge,chrome=1">

	 <link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>">
	 <link rel="stylesheet" href="<c:url value='/css/sign.css'/>">
	 
	 <link rel="stylesheet" href="<c:url value='/css/validform/style.css'/>">
	 <link rel="stylesheet" href="<c:url value='/css/validform/demo.css'/>">
	 <link rel="stylesheet" href="<c:url value='/css/slide-unlock.css'/>" >
	
  </head>
  
  <body>
       <div class="container-fluid">
    	<div class="logo_header row">
      		<div class="ko col-xs-12 col-md-12">
    	 		<img  src="http://localhost:8080/KissOlive/img/kissolive.png" alt="">
      		</div>
    	</div><!-- end of logo_header -->
    	<div class="row">
    	    <div class="center-block">
    			<div class="panel panel-default sign-panel ">
    				<span class="zhuce">&nbsp;&nbsp;&nbsp;登  录</span>
    		 			<form class="registerform form-horizontal " action="/KissOlive/servlet/UserServlet" method="post">
    		 			 <input type="hidden" name="method" value="login" />
				              <div class="sum-group">
				              <div class="form-group">
				                   <label for="tel" class="col-sm-3 control-label">手机号</label>
				    			   <div class="col-sm-6">
				                     <input type="text" class="form-control inputxt" id="usertel" name="usertel" placeholder="请输入手机号" value="${usertel }" required="required" />
				                   </div>
				              </div><!-- end of form-group -->
				                <div class="form-group">
					                  <label for="userpassword" class="col-sm-3 control-label">密码</label>
					    			  <div class="col-sm-6">
					                  <input type="password" value="" id="password" name="password" class="inputClass form-control inputxt" placeholder="6-18位以字母开头，含数字/字母/'_'" value="${password }" required="required" />
	                        	     </div>
	                        	</div><!-- end of form-group -->
				                <div class="form-group">
				                    <!-- <label for="vali" class="col-sm-3 control-label">拖动滑块验证</label> -->
				    			    <div class="col-md-8">
					                   <div id="slider">
										    <div id="slider_bg"></div>
										    <span id="label">>></span> <span id="labelTip">向右拖动滑块验证</span> 
									    </div>
				                 	</div>
				               </div><!-- end of form-group -->
							   <div class="form-group">
								  <div class="summit_btn col-md-12" style="text-align: right">
					              <button class="btn btn-default" type="submit" id="submit" disabled="true">登  录</button>
					              </div>
				               </div><!-- end of form-group -->
					       </div><!-- end of sum-group -->
			   			</form><!-- end of loginform -->
			   </div><!-- end of panel -->
    	    </div><!-- end of center-block -->
    	</div><!-- end of row -->
    </div><!-- container_fluid -->
  
    <script type="text/javascript" src="<c:url value='/js/jquery.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/js/slideunlock.js'/>"></script>
    <script>
    /*
     * 滑动验证码验证结果判断
     */
    $(function () {
        var slider = new SliderUnlock("#slider",{
				successLabelTip : "欢迎访问 Kiss Olive 官方商城"	
			},function(){
				//alert("验证成功,即将跳转至商城首页");
            	//window.location.href="http://localhost:8080/KissOlive/page/user/user_home.jsp"
            	//document.getElementByIdx("btn").disabled=true;
				$("#submit").attr("disabled", false);
        	});
        slider.init();
    })
	</script> 
 
  </body>
</html>
