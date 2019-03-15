$(function() {
            
		$(".addtocart").click(function() {
			
			var goodsnum = $(this).parent().parent().parent().find(".num input").val(); //商品ID
			var goodsName = $(this).parent().parent().parent().find("h4").html(); //商品名称
			var goodsid = $(".id").html();
			var goodssrc = $("#boost img").attr("src");
			// console.log(goodssrc)
			var goodsPrice = $(".goodsprice").html(); //商品价格
			var goodslist = $.cookie("carts") ? JSON.parse($.cookie("carts")) : [];
            //显示数量
            var h = $(".h_contR p").html();
			if(goodsnum==1){
				h++
			}else if(goodsnum>1){
				h=goodsnum*1+h*1;
			}
			$(".h_contR p").html(h);

     
			var isExists = false;
			for(var i = 0; i < goodslist.length; i++) {
				if(goodslist[i].name == goodsName) {
					goodslist[i].num++;
					isExists = true;
				}
			}
			if(!isExists) {
				var goods = {
					name: goodsName,
					price: goodsPrice,
					num: goodsnum,
					id: goodsid,
					src: goodssrc,
				}
				goodslist.push(goods)
			}
			$.cookie("carts", JSON.stringify(goodslist), {
				expires: 22,
				path: "/"
			});
			// console.log($.cookie("carts"))
		})

		$(".removecart").click(function() { //清除购物车
			$.cookie("carts", "", {
				expires: 0,
				path: "/"
			})
			$("#car_tbody tr").empty();
			$(".sum").html(0);
			$(".paybox2 b").html(0)
		})

	})
	//购物车
$(function() {
		refresh();

		function refresh() {
			$('#car_tbody tr').not($('#car_tbody tr:eq(0)')).remove();
			var goodslist = $.cookie("carts");
			//console.log(goodslist)
			var numbers = 0;
			var h = $(".h_contR p").html();
			if(goodslist) {
				goodslist = JSON.parse($.cookie("carts"));
				//console.log(goodslist);
				for(var i = 0; i < goodslist.length; i++) {
					var num = goodslist[i].num;
					var name = goodslist[i].name;
					var price = goodslist[i].price;
					var id = goodslist[i].id;
					var src = goodslist[i].src;
					$(".h_contR p").html(num);
					// console.log(src)
					var tr = $(".tr").clone();
					tr.removeClass("tr")
					tr.find(".c_src img").attr("src", src);
					tr.find(".td1div a").html(name);
					tr.find(".td1div em").html(id);
					tr.find(".td2 p").html(price);
					tr.find(".td4 input").val(num);

					var value = price.replace(/[^0-9]/ig, "");
					//console.log(value)
					var sum = value * num;
					console.log(num);
					h = h * 1 + num * 1;

					tr.find(".td5 p").html(sum);
					numbers += sum;
					tr.appendTo("#car_tbody")
				}
				console.log(h)
                $(".h_contR p").html(h);//显示商品数量
				
				$(".paybox2 b").html(numbers)
				$(".sum").html(numbers);

				//	     
				$(".remove").click(function() {
					for(var n = 0; n < goodslist.length; n++) {
						var serch = $(this).parents("tr").find("img").attr("src");
						if(serch == goodslist[n].src) {
							console.log(n)
							goodslist.splice(n, 1);
							$.cookie("carts", JSON.stringify(goodslist), {
								expires: 22,
								path: "/"
							})
						}
						refresh()
					}
				})
			}
		}
})