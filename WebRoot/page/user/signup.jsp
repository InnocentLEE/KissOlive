<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Kiss Olive 官方商城 注册页面</title>

	
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">  
	<meta http-equiv="keywords" content="ajax，jQuery，省市联动">
	
	 <link rel="stylesheet" href="css/bootstrap.min.css">
	 <link rel="stylesheet" href="css/sign.css">


  </head>
  
  <body>
  
   <div class="container-fluid">
    	<div class="logo_header row">
      		<div class="ko col-xs-12 col-md-12">
    	 		<img  src="http://localhost:8080/KissOlive/img/kissolive.png" alt="">
      		</div>
    	</div>
    	<div class="row">
    	    <div class="center-block">
    			<div class="panel panel-default sign-panel ">
    				<span class="zhuce">&nbsp;&nbsp;&nbsp;注  册</span>
    		 			<form class="form-horizontal" action="#">
				              <div class="sum-group">
				              <div class="form-group">
				                <label for="tel" class="col-sm-3 control-label">手机号</label>
				    			   <div class="col-sm-7">
				                 <input type="text" class="form-control" id="" placeholder="请输入手机号">
				                 </div>
				              </div>
				                <div class="form-group">
				                <label for="password" class="col-sm-3 control-label">密码</label>
				    			  <div class="col-sm-7">
				                 <input type="text" class="form-control" id="" placeholder="请输入数字/字母/_"/>
				                 </div>
				              </div>
				                <div class="form-group">
				                <label for="repassword" class="col-sm-3 control-label">确认密码</label>
				    			  <div class="col-sm-7">
				                 <input type="text" class="form-control" id="" placeholder="请重复输入密码">
				                 </div>
				              </div>
				                <div class="form-group">
				                <label for="address_1" class="col-sm-3 control-label">收货地址</label>
				    			  <div class="col-sm-7" id="city">
							        <select class="prov"></select> 		
									<select class="city" disabled="disabled"></select>
									<select class="dist" disabled="disabled"></select>			
				                 </div>
				              </div>
				               <div class="form-group">
				                <label for="address_2" class="col-sm-3 control-label">详细地址</label>
				    			  <div class="col-sm-7">
				                 <input type="text" class="form-control" id="" placeholder="请输入详细地址">
				                 </div>
				              </div>
				               <div class="form-group">
				                <label for="adapter" class="col-sm-3 control-label">收件人</label>
				    			  <div class="col-sm-7">
				                 <input type="text" class="form-control" id="" placeholder="请输入收件人姓名">
				                 </div>
				              </div>
				               <div class="form-group">
				                <label for="atel" class="col-sm-3 control-label">联系方式</label>
				    			  <div class="col-sm-7">
				                 <input type="text" class="form-control" id="" placeholder="请输入收件人联系方式">
				                 </div>
				              </div>
				               <div class="form-group">
				                <label for="vali" class="col-sm-3 control-label">短信验证码</label>
				    			  <div class="col-sm-7">
				                 <input type="text" class="form-control" id=""/>
				                 </div>
				              </div>
				              <div class="form-group">
				             	 <div class="col-sm-12 col-md-12" style="left:25px">
				                    <label>
						           <a href="#" class="agreement">请阅读《Kiss Olive 相关协议》</a>
						      	   </label>
							     </div>
							  </div>
							
							  <div class="form-group">
							  <div class="summit_btn col-md-12" style="text-align: right">
				              <button class="btn btn-default" type="submit">同意协议并注册</button>
				              </div>
				              </div>
					       </div>
			   			</form>
			   </div>
    	    </div>
    	</div>
    </div>
    
    <script src="./js/jquery.cookie.js"></script>
    <script src="./js/jquery.js"></script>
    <script type="text/javascript" src="./js/jquery.cityselect.js"></script>
    <script type="text/javascript">
    $(function(){
			
				$("#city").citySelect({
					prov:"-请选择省-",
					nodata:"none"
				});
		       });		
    </script>
  </body>
</html>