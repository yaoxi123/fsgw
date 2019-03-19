$(function() {
    // 点击加操作
    total()
    $('.bt-wrapper>.glyphicon-plus').click(function () {
        console.log('点击+')

        request_data = {
            'goodsid': $(this).attr('data-goodsid'),
            'cartsnumber': $(this).attr('data-number')
        }
        var $that = $(this)
        $.get('/app/pluscart/', request_data, function (response) {
            console.log(response)
            if (response.status == 1) {
                $that.prev().html(response.number)
                total()
            }
        })

    })
    // 点击减操作
    $('.bt-wrapper>.glyphicon-minus').click(function () {
        console.log('点击-')

        request_data = {
            'goodsid': $(this).attr('data-goodsid'),
            'cartsnumber': $(this).attr('data-number')
        }
        var $that = $(this)
        $.get('/app/minuscart/', request_data, function (response) {
            console.log(response)
            if (response.status == 1) {
                $that.next().html(response.number)
                total()
            }

        })

    })
    total()

    //计算总价
    function total() {
        var sum = 0
        var sum1 = 0
        $('.cart li').each(function () {
            // console.log('遍历每一个li')
            var price = $(this).find('.price').attr('data-price')
            var num = parseInt($(this).find('.num').html());
            // console.log(price);
            // console.log(num)
            // console.log(sum)
            sum += price * num
            sum1 = price * num
            console.log(sum1)
            // $('this').children().children('.sumnum').html(sum1)
            $(this).find('.sumnum').html(sum1)
        })
        // 显示
        $('.total .pay_2 strong').html(sum)

    }

    // $('.foot_end').click(function () {
    //     console.log('点击去结算')
    //     $.get('/app/generateorder/', request_data, function (response) {
    //   console.log(response)
    //     })
    // })

    //清空购物车
    $('.removecart').click(function () {
        console.log('清空购物车')
        $.get('/app/removecart/', function (response) {
             if (response.status == 1) {
                 $('.cart li').css('display','none')
                  $('.total .pay_2 strong').html(0)
             }
        })
    })


    //选中处理
    $('.cart .confirm-wrapper input').click(function () {
      console.log('选中处理')
        var $that = $(this)
        request_data = {
            'cartid':$(this).attr('data-cardid')
        }
        console.log(request_data['cartid'])

         $.get('/app/changecartselect/', request_data, function (response) {
            console.log(response)

            if (response.status == 1) {
                if (response.isselect == 1 ){
                    $that.attr('checked','true')
                } else {
                   $that.attr('checked','false')
                }
            }
        })
    })

    //全选与取消全选
    $('.all').click(function () {
        console.log('全选')
    //     $("[name='checkbox']").attr('checked','true');
    //     $("[name='checkbox']").removeAttr('checked');
    // })

        console.log('全选')
         var isall = $(this).attr('data-all')
        // $input = $(this).find(input)
        // console.log($input)
       // console.log(isall)
        // 点击后去反
        isall = (isall == 'false') ? true : false
        console.log(isall)

        $(this).attr('data-all', isall)
         request_data = {
            'isall':isall
        }

        if (isall){
           $('.all').attr('checked','true')
            console.log('选择全选')
        } else {
            $('.all').attr('checked','false')
            console.log('取消全选')
        }

        $.get('/app/changecartall/', request_data, function (response) {
            console.log(response)

            if (response.status == 1){
                $('.confirm-wrapper').each(function () {
                    if (isall){ // 全选
                        $(this).find('input').attr('checked','true')
                        console.log('执行选择全选')
                    }else{
                        $(this).find('input').attr('checked','false')
                        console.log('执行取消全选')
                    }


                })
            }
        })

    })
})