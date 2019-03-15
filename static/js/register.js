//注册
$(function(){
	$('#tel input').blur(function () {
		var reg = new RegExp("^1[3|4|5|7|8][0-9]{9}$"); //手机正则表达式
        if ($(this).val() == '') return
        if (reg.test( $(this).val() ) ){  // 符合
            request_data = {
                'tel': $(this).val()
            }
            $.get('/app/checketel/', request_data, function (response) {
                console.log(response)
                if (response.status){   // 1可用
                    $(".dd1").html("ok").css("color","blue");
                } else {    // 0不可用已被注册
                    $(".dd1").html("该手机号已注册！").css("color","red");
                }
            })
        } else {    // 手机号输入不正确不符合
            $(".dd1").html("请输入正确的手机号！").css("color","red");
        }


	})

	$(".uername").blur(function(){
		var names = /^[a-zA-Z\d]\w{3,11}[a-zA-Z\d]$/;
		if ($(this).val() == '') return
		if(!names.test($(".uername").val())){
			$(".dd2").html("请填写正确的昵称！").css("color","red")
		}else{
			$(".dd2").html("ok").css("color","blue")
		}
	})

	
	$(".uermail").blur(function(){
		var emails = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
		if ($(this).val() == '') return
		if(!emails.test($(".uermail").val())){
			$(".dd3").html("请填写正确的Email地址！").css("color","red")
		}else{
			$(".dd3").html("ok").css("color","blue")
		}
	})
	
	$(".uerpass").blur(function(){
		var passw = /^[a-zA-Z]\w{5,17}$/;
		if ($(this).val() == '') return
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
    	if ($(this).val() == '') return
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
	// $('#uerform').click(function () {
    // 	if($(".dd1").html()== "ok"&& $(".dd2").html()=="ok"&& $(".dd3").html()=="ok"&& $(".dd4").html()=="ok"&& $(".dd5").html()=="ok"){
    // 	$('c_right form').submit()
    // }
	//
    // }
        	
    })
	// 注册
	// $('#subButton').click(function () {
    //     console.log('注册')
	//
    //     // var isregister = true
	// 	//
    //     // $('.c_right form').each(function () {
    //     //     if( !$(this).is('.has-success') ) {
    //     //         isregister = false
    //     //     }
    //     // })
	// 	//
    //     // if (isregister){    // 允许注册
    //         $('.c_right  form').submit()
    //     }
    // })
     
})

