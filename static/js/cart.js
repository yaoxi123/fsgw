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
            if (response.status == 1){
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
            sum += price*num
            sum1 = price*num
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
})