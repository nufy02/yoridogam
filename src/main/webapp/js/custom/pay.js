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
  


