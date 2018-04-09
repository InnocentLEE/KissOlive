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
	 <link rel="stylesheet" href="css/validform/style.css">
	 <link rel="stylesheet" href="css/validform/demo.css">


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
    		 			<form class="registerform form-horizontal " action="#">
				              <div class="sum-group">
				              <div class="form-group">
				                <label for="tel" class="col-sm-3 control-label">手机号</label>
				    			   <div class="col-sm-6">
				                    <input type="text" class="form-control inputxt" id="usertel" placeholder="请输入手机号" value="" name="tel" datatype="m" errormsg="请输入11位正确手机号码！" nullmsg="手机号不得为空！"/>
				                 </div>
				                  <div class="col-sm-3 tip">
				                   <div class="Validform_checktip"></div>
				                   </div>
				              </div>
				                <div class="form-group">
				                <label for="userpassword" class="col-sm-3 control-label">密码</label>
				    			  <div class="col-sm-6">
				                  <input type="password" value="" name="password" class="form-control inputxt"  datatype="pw"   placeholder="6-18位以字母开头，含数字/字母/'_'"errormsg="密码以字母开头，长度6-18位，只包含数字、字母或下划线！" nullmsg="密码不得为空！"/>
                        		</div>
				                  <div class="col-sm-3 tip">
				                    <div class="Validform_checktip"></div>
				                  </div>
				                 </div>
				                <div class="form-group">
				                <label for="repassword" class="col-sm-3 control-label" >确认密码</label>
				    			  <div class="col-sm-6">
				                   <input type="password" class="form-control inputxt"  placeholder="请重复输入密码" value="" name="userpassword2" recheck="password"  datatype="*" errormsg="两次输入的密码不一致！"/>
				                 </div>
				                  <div class="col-sm-3 tip">
				                   <div class="Validform_checktip"></div>
				                   </div>
				              </div>
				                <div class="form-group">
				                <label for="address_1" class="col-sm-3 control-label">收货地址</label>
				    			  <div class="col-sm-6" id="city">
							        <select class="prov"></select> 		
									<select class="city" disabled="disabled"></select>
									<select class="dist" disabled="disabled"></select>			
				                 </div>
				                  <div class="col-sm-3 tip">
				                   <div class="Validform_checktip"></div>
				                   </div>
				              </div>
				               <div class="form-group">
				                <label for="address_2" class="col-sm-3 control-label">详细地址</label>
				    			  <div class="col-sm-6">
				                 <input type="text" class="form-control inputxt" datatype="*" id="detail" placeholder="请输入详细地址" nullmsg="详细地址不得为空！">
				                 </div>
				                  <div class="col-sm-3 tip">
				                   <div class="Validform_checktip"></div>
				                   </div>
				              </div>
				               <div class="form-group">
				                <label for="adapter" class="col-sm-3 control-label">收件人</label>
				    			  <div class="col-sm-6">
				                 <input type="text" class="form-control inputxt" datatype="*"  id="username" placeholder="请输入收件人姓名" nullmsg="收件人姓名不得为空！">
				                 </div>
				                  <div class="col-sm-3 tip">
				                   <div class="Validform_checktip"></div>
				                   </div>
				              </div>
				               <div class="form-group">
				                <label for="atel" class="col-sm-3 control-label">联系方式</label>
				    			  <div class="col-sm-6">
				                 <input type="text" class="form-control inputxt" id="tel" datatype="*"  placeholder="请输入收件人联系方式" nullmsg="收件人联系方式不得为空！">
				                 </div>
				                  <div class="col-sm-3 tip">
				                   <div class="Validform_checktip"></div>
				                   </div>
				              </div>
				               <div class="form-group">
				                <label for="vali" class="col-sm-3 control-label">短信验证码</label>
				    			  <div class="col-sm-6">
				                 <input type="text" class="form-control"/>
				                 </div>
				                  <div class="col-sm-3 tip">
				                   <div class="Validform_checktip"></div>
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
    
    <script src="./js/jquery.js"></script>
    <script src="./js/validform/Validform_v5.3.2.js"></script>
    <script type="text/javascript" src="./js/jquery.cityselect.js"></script>
    <!-- <script type="text/javascript" src="./js/validform/passwordStrength.js"></script> -->

	<script type="text/javascript">
	$(function(){
		//$(".registerform").Validform();  //就这一行代码！;
		$.Datatype.m=/^13[0-9]{9}$|14[0-9]{9}$|15[0-9]{9}$|15[0-9]{9}$|17[0-9]{9}$|18[0-9]{9}$/;
	   
		//$.Datatype.pw=/^[a-zA-Z]\w{5,17}$/,
		$.extend($.Datatype, {
    
		    //stock你定义的验证名称
		    'pw':function ( gets, obj, curform, regxp)
		    {  
		        //你需要处理的业务  返回 true 和false
		        var reg = /^[a-zA-Z]\w{5,17}$/;
		        if ( reg.test(gets) )
		        {
		        	return true;
		
		        }else
		        {
		            if( obj.attr('name') == 'pw' )
		            {
		                obj.attr('errormsg', '密码以字母开头，长度6-18位，只包含数字、字母或下划线!');
		                return false;
		            }else
		            {
		                return false;
		            }
		        }
		      }  
		  })
		
		
		$(".registerform").Validform({
			tiptype:2,
		   
		});
	})
	</script>
	
    <script type="text/javascript">
    $(function(){
			
				$("#city").citySelect({
					prov:"北京",
					nodata:"none"
				});
		       });		
    </script>
  </body>
</html>
