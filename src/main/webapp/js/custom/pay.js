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
	$('button[name=detailBtn]').click(function(){
		var pay_no=($(this).val());
		var data = { "pay_no": pay_no };
					$('#productDetail').empty();
					$('#productDetail').load('payItem_detail_form',data).hide().fadeIn("3000")
	})
// 결제내역 삭제 - 결제list 출력용
	$('button[name=deleteBtn]').click(function(){
		var confirmD=confirm( "해당 결제내역을 삭제하시겠습니까?");
		if(confirmD){
			var pay_no=($(this).val());
			var data = { "pay_no": pay_no };
			$.ajax({
				url:'pay_delNo_action',
				method:'POST',
				data: data,
				success: function(){
						$('#check').empty();
						$('#check').load('pay_list_form').hide().fadeIn("slow");
					}
			})
		}
	})
	
	
	
	