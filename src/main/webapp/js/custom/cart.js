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
		location.href="cart_list_form"; // 수정해야함
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

//장바구니 수량증가
$("button[name=up]").click(function () {
	var ci_no=($(this).val());
	var data = { "ci_no": ci_no, };
    $.ajax({
		url:'cart_qtyP_action',
		method:'POST',
		data: data,
		success: function(result){
			$("#qty"+ci_no).val(result.qty); // 수량 셋팅
			$("#tot").text(comma(result.tot)); // 전체금액 셋팅
			if($("input[name=ci_no]").is(":checked")){ //해당 강의가 선택되어있다면
				var nowTotal=parseInt($("#tot_price").text()); // 선택된 강의 총금액 값 가져오기
				$("#tot_price").text(nowTotal+result.price); // 가져온 총금액 값에 올라간 수량 값 증가 후 셋팅
			}
		}
    });
});

//장바구니 수량감소
$("button[name=down]").click(function () {
    var ci_no=($(this).val());
	var data = { "ci_no": ci_no };
    $.ajax({
		url:'cart_qtyM_action',
		method:'POST',
		data: data,
		success: function(result){
			$("#qty"+ci_no).val(result.qty);
			$("#tot").text(comma(result.tot));
			if($("input[name=ci_no]").is(":checked")){
				var nowTotal=parseInt($("#tot_price").text());
				$("#tot_price").text(nowTotal-result.price);
			}
    	}
    });
});

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

//장바구니 선택 강의 수에 따른 금액
var total=0;
$("input[name=ci_no]").change(function(){
	if($(this).is(":checked")){
    var ci_no=($(this).val());
	var data = { "ci_no": ci_no };
    $.ajax({
		url:'cart_item_select',
		method:'POST',
		data: data,
		success: function(total){
			var nowTotal=parseInt($("#tot_price").text());
			$("#tot_price").text(nowTotal+total);
			}
		})
	}else{
		var ci_no=($(this).val());
	var data = { "ci_no": ci_no };
    $.ajax({
		url:'cart_item_select',
		method:'POST',
		data: data,
		success: function(total){
			var nowTotal=parseInt($("#tot_price").text());
			$("#tot_price").text(nowTotal-total);
			}
		})
	}
})

//천단위 끊기 common함수
function comma(value) {
    value = String(value);
    return value.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}



