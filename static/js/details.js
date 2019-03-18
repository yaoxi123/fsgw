$(function() {
    //点击添加购物车操作事件
    $('.addtocart').click(function () {
        console.log('点击加入购物车')   //验证点击是否可以触发
        request_data = {
            'goodsid': $(this).attr('data-goodsid'),
            'number1': $('#number1').val()
        }
        console.log(request_data['number1'])
        // var $that = $(this)
        $.get('/app/addcart/', request_data, function (response) {
            console.log(response)
            if (response.status == -1) {
                window.open('/app/login/', '_self')
            }else{
                alert('加入购物车成功')
            }
        })
    })


    //点击快速购买
     $('.kuaisu').click(function () {
         console.log('点击快速购买')
         request_data = {
             'goodsid': $(this).attr('data-goodsid'),
             'number1': $('#number1').val()
         }
         console.log(request_data['number1'])
         // var $that = $(this)
         $.get('/app/quicklybuy/', request_data, function (response) {
             console.log(response)
             if (response.status == -1) {
                 window.open('/app/login/', '_self')
             }
         })
     })

    //点击+按钮
    $('#plus').click(function () {
        console.log('点击+')
            num=0
           var number = parseInt($('.number').val())
        console.log(number)
            num = number +1
        console.log(num)
            $(this).prev().val(num)
    })

    //点击-按钮
    $('#minus').click(function () {
        console.log('点击-')
            num=0
           var number = parseInt($('.number').val())
       // console.log(number)
        if (number==1){
            return
        }
          if (number > 1 ){
            num = number - 1
        //  console.log(num)
            $(this).next().val(num)
        }
    })

    // $('.kuaisu').click(function () {
    //      console.log('点击快速购买')
    //      request_data = {
    //          'goodsid': $(this).attr('data-goodsid'),
    //          'number1': $('#number1').val()
    //      }
    //      console.log(request_data['number1'])
    //     console.log(request_data['goodsid'])
    //      // var $that = $(this)
    //      $.get('/app/quicklybuy/', request_data, function (response) {
    //          console.log(response)
    //          if (response.status == -1) {
    //              window.open('/app/login/', '_self')
    //          }
    //          if (response.status == 1){
    //              window.open('/app/orderdetail/'+order.identifier+'/','_self')
    //          }
    //      })
    //  })


})












































