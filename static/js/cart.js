$(function() {
    // 点击加操作
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

            }
        })

    })
        total()
    //计算总价
    function total() {
        var sum = 0
        $('.cart li').each(function () {
            console.log('遍历每一个li')
            var price = $(this).find('.price').attr('data-price')
            var num = $(this).find('.num').attr('data-number')
            sum += num * price
        })
        // 显示
        $('.total .pay_2 strong').html(sum)
    }

})