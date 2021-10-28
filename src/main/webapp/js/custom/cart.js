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

//카트 전체선택 전체해제
$('#check #allCheckbox').on('click',function(){
	if($('#allCheckbox').prop("checked")){
		$("input[type=checkbox]").prop("checked",true);
	}else{
		$("input[type=checkbox]").prop("checked",false);
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

Number.prototype.formatNumber = function(){
    if(this==0) return 0;
    let regex = /(^[+-]?\d+)(\d)/;
    let nstr = (this + '');
    while (regex.test(nstr)) nstr = nstr.replace(regex, '$1' + ',' + '$2');
    return nstr;
};

