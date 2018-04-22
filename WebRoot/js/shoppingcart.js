$(function () {

    //全局的checkbox选中和未选中的样式
    var $allCheckbox = $('input[type="checkbox"]'),     //全局的全部checkbox
        $wholeChexbox = $('.whole_check');
        //$cartBox = $('.cartBox'),                       //每个商铺盒子
        //$shopCheckbox = $('.shopChoice'),               //每个商铺的checkbox
         $sonCheckBox = $('.son_check');                 //每个商铺下的商品的checkbox
        // $("i.far.fa-check-square").hide();
    
    //===============================================全局全选与单个商品的关系================================
      $wholeChexbox.click(function () {
    /*	var txt1="<i class=\"far fa-square\"></i>";
    	var txt2="<i class=\"far fa-check-square\"></i>";*/
    	
        if ($(this).is(':checked')) {
        	$sonCheckBox.each(function() {
        		$(this).prop("checked", true);
        	});
        } else {
        	$sonCheckBox.each(function() {
            $(this).prop("checked", false);
        	});
        }
        totalMoney();
    });
      
      $sonCheckBox.each(function () {
          $(this).click(function () {
              if ($(this).is(':checked')) {
                  //判断：所有单个商品是否勾选
                  var len = $sonCheckBox.length;
                  var num = 0;
                  $sonCheckBox.each(function () {
                      if ($(this).is(':checked')) {
                          num++;
                      }
                  });
                  if (num == len) {
                      $wholeChexbox.prop("checked", true);
                  }
              } else {
                  //单个商品取消勾选，全局全选取消勾选
                  $wholeChexbox.prop("checked", false);
                  
              }
              totalMoney();
          })
          
      });

    //=================================================商品数量==============================================
    var $plus = $('.plus'),
        $reduce = $('.reduce'),
        $all_sum = $('.sum');
    $plus.click(function () {
        var $inputVal = $(this).prev('input'),
            $count = parseDouble($inputVal.val())+1,
            $obj = $(this).parents('.amount_box').find('.reduce'),
            $priceTotalObj = $(this).parents('.order_lists').find('.sum_price'),
            $price = $(this).parents('.order_lists').find('.price').html(),  //单价
            $priceTotal = $count*parseDouble($price.substring(1));
            $gid =$("input[type='hidden']").attr("value");
            $inputVal.val($count);
	       // console.log($count);
           
            //数量变化ajax
	        /*$.ajax({
	    		url:"/KissOlive/MainServlet",//要请求的servlet
	    		data:{method:"ajaxAddCart", number:$count , gid:$gid},//给服务器的参数
	    		type:"POST",
	    		dataType:"json",
	    		async:false,//是否异步请求，如果是异步，那么不会等服务器返回，这个函数就向下运行了。
	    		cache:false,
	    		success:function(result) {
	    			if(!result) {//如果校验失败
	    				alert("数量增加失败！请重试！");
	    				return false;
	    			}
	    		}
	    	});*/
        
        $priceTotalObj.html('￥'+$priceTotal);
        if($inputVal.val()>1 && $obj.hasClass('reSty')){
            $obj.removeClass('reSty');
        }
        totalMoney();
    });

    $reduce.click(function () {
        var $inputVal = $(this).next('input'),
            $count = parseDouble($inputVal.val())-1,
            $priceTotalObj = $(this).parents('.order_lists').find('.sum_price'),
            $price = $(this).parents('.order_lists').find('.price').html(),  //单价
            $priceTotal = $count*parseDouble($price.substring(1));
            $gid =$("input[type='hidden']").attr("value");
           
        if($inputVal.val()>1){
            $inputVal.val($count);
           // console.log($count);
           
            //数量变化ajax
            /*$.ajax({
	    		url:"/KissOlive/MainServlet",//要请求的servlet
	    		data:{method:"ajaxAddCart", number:$count , gid:$gid},//给服务器的参数
	    		type:"POST",
	    		dataType:"json",
	    		async:false,//是否异步请求，如果是异步，那么不会等服务器返回，这个函数就向下运行了。
	    		cache:false,
	    		success:function(result) {
	    			if(!result) {//如果校验失败
	    				alert("数量减少失败！请重试！");
	    				return false;
	    			}
	    		}
	    	});*/
            
            $priceTotalObj.html('￥'+$priceTotal);
        }
        if($inputVal.val()==1 && !$(this).hasClass('reSty')){
            $(this).addClass('reSty');
        }
        totalMoney();
    });

    $all_sum.keyup(function () {
        var $count = 0.00,
            $priceTotalObj = $(this).parents('.order_lists').find('.sum_price'),
            $price = $(this).parents('.order_lists').find('.price').html(),  //单价
            $priceTotal = 0.00;
        if($(this).val()==''){
            $(this).val('1');
        }
        $(this).val($(this).val().replace(/\D|^0/g,''));
        $count = $(this).val();
        $priceTotal = $count*parseDouble($price.substring(1));
        $(this).attr('value',$count);
        $priceTotalObj.html('￥'+$priceTotal);
        totalMoney();
    })

    //======================================总计==========================================

    function totalMoney() {
        var total_money = 0.00;
        var total_count = 0.00;
        var calBtn = $('.calBtn a');
        $sonCheckBox.each(function () {
            if ($(this).is(':checked')) {
                var goods = parseDouble($(this).parents('.order_lists').find('.sum_price').html().substring(1));
                var num =  parseDouble($(this).parents('.order_lists').find('.sum').val());
                total_money += goods;
                total_count += num;
            }
        });
        $('.total_text').html('￥'+total_money);
        $('.piece_num').html(total_count);

        // console.log(total_money,total_count);

    }
});
$(document).ready(function(){
	
	//点击立即购买触发函数
	$(".calBtn").click(function (){
		var judge = 0;
    	$(".son_check").each(function() { //遍历每个元素
    		if($('.son_check').is(':checked')) {
    		    // 如果该商品被选中
    			judge = 1;}
    	});
    	if(judge==0)
        	alert("您未选中任何商品，请选择商品再点击购买！！");
      
	    
    });
	
	//点击支付成功触发函数
	$(".surepay").click(function (){
		  $('#codeModal').modal('hide');
		  $('#step3').addClass("active in");
	});
	

});
	    
   
	  
	   
