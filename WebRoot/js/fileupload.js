/**
 * 图片上传
 */
  $(function(){  
            $(".thumbs a").click(function(){  
                var largePath  = $(this).attr("href");  
                var largeAlt = $(this).attr("title");  
                $("#largeImg").attr({  
                    src : largePath,  
                    alt : largeAlt  
                });  
                return false;  
            });  
              
            //实现预览即将上传的图片的功能  
            $("#myfile").change(function(){  
                 var file = this.files[0];  
                    var reader = new FileReader();  
                    reader.readAsDataURL(file);  
                    reader.onload = function(e){  
                        $("#previewImg").attr("src", e.target.result);  
                    };  
            });  
              
            var la = $("#large");  
            la.hide();  
              
            $("#previewImg").mousemove(function(e){  
                la.css({  
                    top : e.pageY,  
                    left : e.pageX  
                }).html('<img src = "' + this.src + '" />').show();  
            }).mouseout(function(){  
                la.hide();  
            });  
        });   