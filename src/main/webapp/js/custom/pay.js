//결제 금액 계산 js로
$(document).ready(function(){
	var total=0;
	var price=document.getElementsByName("p_price");
	var qty=document.getElementsByName("qty");
	
	for(var i=0; i<price.length; i++){
		total+=parseInt(qty[i].value)*parseInt(price[i].value)
	}
	document.getElementById("total_price").innerHTML=total;
	document.getElementsByName("pay_total")[0].value=String(total);
})

// 주문디테일 모달창
    $("#modal_open_btn").click(function(){
        $("#modal").attr("style", "display:block");
    });
   
     $("#modal_close_btn").click(function(){
        $("#modal").attr("style", "display:none");
    });      
  
// 결제내역 상세 - 결제list 출력용
	$('.detailBtn').click(function(){
		var pay_no=($(this).val());
		var data = { "pay_no": pay_no };
					$('#productDetail').empty();
					$('#productDetail').load('payItem_detail_form',data);
					e.preventDefault();
	})
	
	
	
	