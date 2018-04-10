$(function(){
		//$(".registerform").Validform();  //就这一行代码！;
		$.Datatype.m=/^13[0-9]{9}$|14[0-9]{9}$|15[0-9]{9}$|15[0-9]{9}$|17[0-9]{9}$|18[0-9]{9}$/;
	   
		//$.Datatype.pw=/^[a-zA-Z]\w{5,17}$/,
		/** 自定义密码验证 **/
		$.extend($.Datatype, {
    
		    //pw你定义的验证名称
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
			
			datatype:{  
				//自定义手机验证
		         'tel':function(gets,obj,curform,regxp){   
		            var reg = /^13[0-9]{9}$|14[0-9]{9}$|15[0-9]{9}$|15[0-9]{9}$|17[0-9]{9}$|18[0-9]{9}$/;  
		            if(!reg.test(gets)) {  
		            	//若手机号不符合规格，获取验证码按钮不可点击且隐藏；
		            	var obj1 = document.getElementById('mobilebtn');
                        obj1.style.display = 'none';
                        obj1.disabled = true;
                        
                        if( obj.attr('name') == 'tel' )
    		            {
    		                obj.attr('errormsg', '请输入正确的11位手机号码！');
    		                return false;
    		            }else
    		            {
    		                return false;
    		            } 
		            }  
		            //验证手机号是否存在  
		            var result; 
		            var value = $(usertel).val();//获取输入框内容
		            $.ajax({  
		                url:"/KissOlive/servlet/UserServlet",  
		                data:{method:"ajaxValidateUsertel", usertel:value},  
		                dataType:'json',  
		                type:'post',  
		                async:false,  
		                success:function(){  
		                    if(data.status == 0){
		                        console.log(data.info)  
		                        result = data.info;  
		                    }else{  
                                 console.log(data.info)  
		                         result = true;  
		                    }  
		              
		                    },  
		                error:function(data){  
		                    console.log(data);  
		                    }  
		            });  
		          
		            return result;  
		            var obj1 = document.getElementById('mobilebtn');
                    obj1.style.display = 'block';
                    obj1.disabled = false;
		            return true; 
		          }  
		         },  
		   
		});
	})