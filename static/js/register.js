//注册
$(function(){
    var users = $.cookie("users")?JSON.parse($.cookie("users")):[];
	$(".uerphone").blur(function(){
		for(i=0;i<users.length;i++){
			if(users[i].phone == $(".uerphone").val()){
				$(".dd1").html("用户名已存在！").css("color","red");
				return;
			}	
		}
		var phonenum = /^1[3|4|5|7|8][0-9]{9}$/;
		if($(".uerphone").val()==0){
			$(".dd1").html("请输入手机号！").css("color","red");
		}else if(!phonenum.test($(".uerphone").val())){
			$(".dd1").html("请输入正确的手机号！").css("color","red");
		}else{
			$(".dd1").html("ok").css("color","blue");
		}
	})
	
	$(".uermail").blur(function(){
		var emails = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
		if(!emails.test($(".uermail").val())){
			$(".dd3").html("请填写正确的Email地址！").css("color","red")
		}else{
			$(".dd3").html("ok").css("color","blue")
		}
	})
	
	$(".uerpass").blur(function(){
		var passw = /^[a-zA-Z]\w{5,17}$/;
		if($(".uerpass").val()==0){
			$(".dd4").html("密码不能为空!").css("color","red");
		}
		else if(!passw.test($(".uerpass").val())){
			$(".dd4").html("密码格式不正确!").css("color","red");
		}else{
			$(".dd4").html("ok").css("color","blue");
		}
	})
			
    $(".password").blur(function(){
    	if($(".uerpass").val()!= $(".password").val()){
			$(".dd5").html("您两次输出的密码不一致").css("color","red");
		}else{
			$(".dd5").html("ok").css("color","blue");
		}
    })
    $("#uerform").click(function(){
        if($(".dd5").html()== "ok"&& $(".dd1").html()=="ok"){
        		var user = {
			phone :$(".uerphone").val(),
			key :$(".uerpass").val(),
		    }
		    users.push(user);
		    $.cookie("users",JSON.stringify(users),{expires:22,path:"/"});
		    console.log($.cookie("users"));
		    window.location.href="login.html";
        }else{
        	alert("请填写正确信息")
        }
        	
    })
     
})

