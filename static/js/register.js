//注册
$(function(){
	//手机号验证
	$('#tel input').blur(function () {
		var reg = new RegExp("^1[3|4|5|7|8][0-9]{9}$"); //手机正则表达式
       if ($(this).val() == '') {
			$('.dd1').html("请填写你的手机号！")
    		return
		}

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

	//用户名验证
	$(".uername").blur(function(){
		// console.log('123')
		var names = /^[a-zA-Z\d]\w{3,11}[a-zA-Z\d]$/;
		if ($(this).val() == '')  {
			$('.dd2').html("请输入你的昵称！")
    		return
		}
		if(!names.test($(".uername").val())){
			$(".dd2").html("请填写正确的昵称！").css("color","red")
		}else{
			$(".dd2").html("ok").css("color","blue")
		}
	})

	//邮箱验证
	$(".uermail").blur(function(){
		var emails = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
		if ($(this).val() == '') {
			$('.dd3').html("订单信息和优惠信息通过邮件发送")
    		return
		}
		if(!emails.test($(".uermail").val())){
			$(".dd3").html("请填写正确的Email地址！").css("color","red")
		}else{
			$(".dd3").html("ok").css("color","blue")
		}
	})

	//第一次输入密码验证
	$(".uerpass").blur(function(){
		// console.log('密码验证')

		var passw = /^[a-zA-Z]\w{5,17}$/;
		if ($(this).val() == ''){
			$('.dd4').html('6-20位，区分大小写')
    		return
		}
		if($(".uerpass").val()==0){
			$(".dd4").html("密码不能为空!").css("color","red");
		}
		else if(!passw.test($(".uerpass").val())){
			$(".dd4").html("密码格式不正确!").css("color","red");
		}else{
			$(".dd4").html("ok").css("color","blue");
		}
	})

	//第二次输入密码验证
    $(".password").blur(function(){
    	if ($(this).val() == ''){
			$('.dd5').html('请再输入一遍上面填写的密码')
    		return
		}
    	if($(".uerpass").val()!= $(".password").val()){
			$(".dd5").html("您两次输出的密码不一致").css("color","red");
		}else{
			$(".dd5").html("ok").css("color","blue");
		}
    })

	//验证信息验证正确后才可以提交
	$('#subButton').click(function () {
		console.log('点击注册提交按钮')
		if($(".dd5").html()== "ok"&& $(".dd1").html()=="ok"){
			 $('.c_right form').submit()
		}else{
			alert('请输入正确的信息')
		}
	})
})

