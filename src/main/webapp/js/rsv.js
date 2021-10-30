$('#rsv_date').change(function(){
	
	var date = $('#rsv_date').val();
	
	$.ajax({
		type : 'post',
		url : 'rsv_date_ajax',
		data : date,
		success: function(result){
			// 컨트롤러에서 받아온 데이터는 result에 담아옴.
			// result는 json 형식으로 받아옴
			 alert(result);
			 
			
		}
		
	})
	
});