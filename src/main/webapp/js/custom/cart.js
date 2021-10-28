Number.prototype.formatNumber = function(){
    if(this==0) return 0;
    let regex = /(^[+-]?\d+)(\d)/;
    let nstr = (this + '');
    while (regex.test(nstr)) nstr = nstr.replace(regex, '$1' + ',' + '$2');
    return nstr;
    
};

//카트 전체 삭제
function cart_delete() {
	document.cartInfo.method = 'POST';
	document.cartInfo.action = 'cart_deleteById_action';
	document.cartInfo.submit();
}

//카트 선택 삭제
function cart_delete_select_item() {
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


