//카트 전체 삭제
/*
function cart_delete() {
	document.cartInfo.method = 'POST';
	document.cartInfo.action = 'cart_deleteById_action';
	document.cartInfo.submit();
}
*/
$("button[name=deleteAll]").click(function () {
	var confirmD=confirm( "강의를 전체 삭제하시겠습니까?");
	if(confirmD){
		var sUserId=null;
	    sUserId=($(this).val());
		var data = { "sUserId": sUserId };
    $.ajax({
		url:'cart_deleteById_action',
		method:'POST',
		data: data,
		success: function(){
		location.href="cart_list_form";
		alert("삭제되었습니다");
		}
    });
	}else{
		alert("삭제 취소되었습니다");
	}
});

//카트 선택 삭제
function cart_delete_select_item() {
	alert("선택된 강의를 삭제합니다.")
	document.cartInfo.method = 'POST';
	document.cartInfo.action = 'cart_deleteByNo_action';
	document.cartInfo.submit();
}

//카트 전체선택 전체해제 + 선택강의 수 갱신
$('#check #allCheckbox').on('click',function(){
	if($('#allCheckbox').prop("checked")){
		$("input[type=checkbox]").prop("checked",true);
        $("#checkQty").text($('input:checkbox[name=ci_no]:checked').length);
	}else{
		$("input[type=checkbox]").prop("checked",false);
		$("#checkQty").text($('input:checkbox[name=ci_no]:checked').length);
	}
});

//장바구니 수량증가ajax
$("button[name=up]").click(function () {
	var ci_no=0;
    ci_no=($(this).val());
	var data = { "ci_no": ci_no };
    $.ajax({
		url:'cart_qtyP_action',
		method:'POST',
		data: data,
		success: function(){
		location.href="cart_list_form";
		}
    });
});

//장바구니 수량감소ajax
$("button[name=down]").click(function () {
	var ci_no=0;
    ci_no=($(this).val());
	var data = { "ci_no": ci_no };
    $.ajax({
		url:'cart_qtyM_action',
		method:'POST',
		data: data,
		success: function(){
		location.href="cart_list_form";
		}
    });
});
/*
$(document).ready(function(){
	$("#checkQty").text($('input:checkbox[name=ci_no]:checked').length);
	if($("#checkQty").change(function()){
		location.reload();
	})
})
*/

// 장바구니 선택 강의 수 갱신
$(document).ready(function(){
	$("#checkQty").text($('input:checkbox[name=ci_no]:checked').length);
    $("input[name=ci_no]").change(function(){
        if($("input[name=ci_no]").is(":checked")){
            $("#checkQty").text($('input:checkbox[name=ci_no]:checked').length);
        }else{
            $("#checkQty").text($('input:checkbox[name=ci_no]:checked').length);
		}
    });
});
var total=0;
$("input[name=ci_no]").change(function(){
$(this).each(function() {
	if($(this).is(":checked")){
		var price=parseInt($(this).parents('tr').find(".pr_price").text());
		var qty=parseInt($(this).parents('tr').find("input[name=quantity]").val());
		total=total+(price*qty);
	}else{
		var price=parseInt($(this).parents('tr').find(".pr_price").text());
		var qty=parseInt($(this).parents('tr').find("input[name=quantity]").val());
		total=total-(price*qty);
		}
	
	$("#tot_price").text(total);
	
})
})





