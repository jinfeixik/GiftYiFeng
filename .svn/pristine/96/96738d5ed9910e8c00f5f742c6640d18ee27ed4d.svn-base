$(function() {

	$("#cart_list").find(".count-box").each(function(ind, ele) {
		var $ele = $(ele);
		console.log("qqqq");
		$(ele).children(".icon-sub").on("click", function() {
			var $input = $ele.children("input"),
				count = $input.val();
			var rec_id = $input.data('rec_id');
			if (isNumber(count)) {
				count = parseInt(count);
				if (count > 1) {
					count--;
					$input.val(count);
				}
			} else {
				count = 1;
				$input.val(count);
			}
			console.log(rec_id, count);
			flowUpdateCart(rec_id, count);
		});
		$(ele).children(".icon-add").on("click", function() {
			var $input = $ele.children("input"),
				count = $input.val();
			var rec_id = $input.data('rec_id');
			if (isNumber(count)) {
				count = parseInt(count);
				count++;
				$input.val(count);
			} else {
				count = 1;
				$input.val(count);
			}
			console.log(rec_id, count);
			flowUpdateCart(rec_id, count);
		});
		$(ele).children('.icon-number').on('change', function() {
			var count = $(this).val();
			var rec_id = $(this).data('rec_id');
			if (isNumber(count)) {
				count = parseInt(count);
				$(this).val(count);
			} else {
				count = 1;
				$(this).val(count);
			}
			flowUpdateCart(rec_id, count);
		});

	});
	$(".slider").slider();
	$('.icon-delete').on('click', function() {
		var rec_id = $(this).data('rec_id');
		flowDeleteCart(rec_id);
	});
});
//更新购物车状态
function flowUpdateCart($cart_id, $number) {
	console.log("flowUpdateCart");
	var url = 'changeItemNumber?shoppingCarId='+$cart_id+'&itemNumber='+$number;
	$.post(url, {}, function(data) {
		console.log(data);
		if (data.error == 0) {
			$('.icon-number[data-rec_id="' + $cart_id + '"]').val(data.content);
			for (var i = 0; i < data.cart_info.goods_list.length; i++) {
				if (data.cart_info.goods_list[i].rec_id == $cart_id) {
					$('#sub_total_' + $cart_id).html(data.cart_info.goods_list[i].subtotal);
					$('#sub_total_' + $cart_id).prev().html('有库存');
					break;
				}
			}
			$('#goods-total').html(data.cart_info.total.goods_price);
		} else {
			//layer.alert(data.message);
			art.dialog({
				id: "no_stock",
				title: "",
				lock: true,
				background: "#000",
				opacity: 0.15,
				content: data.message
			});
			flowUpdateCart($cart_id, 1)
		}
		//window.location.reload();
	}, 'json');
}
//删除购物车里的商品
function flowDeleteCart($cart_id) {
	var url = 'deleteShoppingCar?shoppingCarId=' + $cart_id;
	$.post(url, {}, function(data) {
		console.log(data);
		window.location.reload();
	}, 'json');
}
