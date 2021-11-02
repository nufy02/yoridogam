$('#rsv_date').change(function(e){
	
	var date = $('#rsv_date').val();
	$.ajax({
		type : 'post',
		url : 'rsv_date_ajax',
		data : {'rsv_date' : date,
				'p_no' : $(e.target).attr('p-no')
				},
		dataType:'json',
		success: function(result){
			// 컨트롤러에서 받아온 데이터는 result에 담아옴.
			// result는 json 형식으로 받아옴
			 alert(result);
			 console.log(result);
			 $('#sdsdasd').empty();
			 var html1 = '';
			 html1+= `<select class="w-100" name ="rsv_time" id="rsv_time">`
		
			$('#sdsdasd').append(
				html1
			)
			$('#sdsdasd').append(
				$.each(result, function(i, jsonObject){
				 `<option value="${jsonObject.pt_time}">${jsonObject.pt_time}</option></select>`
				})
			)
		}
	});
});