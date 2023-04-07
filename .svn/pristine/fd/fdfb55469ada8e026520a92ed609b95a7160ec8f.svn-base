$(function(){
	$(".myfavorite-list li").each(function(ind, ele) {
        $(ele).hover(function(){$(this).addClass("hover");},function(){$(this).removeClass("hover");});
		$(ele).find('i.icon-delete').on("click",function(){
			if(confirm("确定删除收藏的这个礼物？")){
				var collection_id = $(this).data('collection_id');
				$.get('user.php?act=delete_collection&collection_id='+collection_id,function(data){
					if(data.error == 0){
						$(ele).remove();
					}

				},'json');

			}
		});
    });
});