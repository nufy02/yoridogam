$("select[name=p_type]").change(function(){ // select 옵션 값이 변한다면
	var p_type=($(this).val()); // 옵션 value 가져오기
	if(p_type=='온라인'){ // 해당 옵션 value가 온라인강의 등록이면
		$(".rowCustom").attr("style", "display:flex"); // rowCustom div css접근, none설정->flex셋팅
	}
	if(p_type=='오프라인'){
		$(".rowCustom").empty(); //오프라인 강의 등록이면 div 하위 태그삭제
		$(".rowCustom").attr("style", "display:flex"); 
		//오프라인 강의 등록용 html apend
		$(".rowCustom").html(`<div class="col-2 mb-3">
                                        <select name="p_category">
                                        	<option value="제빵">제빵</option>
                                        	<option value="뭐가">뭐가</option>
                                        	<option value="있지">있니</option>
                                        </select>
                                    </div>
                                        <input type="hidden" class="form-control" name="teacher.t_id" value="teacher1" >
                                    <div class="col-12 mb-3">
                                        <input type="text" class="form-control" name="p_name" placeholder="상품명" value="">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input type="text" class="form-control mb-3" name="p_price"placeholder="가격" value="">
                                    </div>
                                    <div class="col-3 mb-2">
                                        <input type="text" class="form-control mb-3" id="" placeholder="사진업로드" value="" disabled="disabled">
                                    </div>
                                    <div class="col-5 mb-2">
                                        <input type="file" class="form-control mb-3" name="p_photo" accept="">
                                    </div>
                                    <div class="col-3 mb-2">
                                        <input type="text" class="form-control mb-3" id="" name="pt_max" placeholder="수강인원 ex)30" value="" >
                                    </div>
                                    <div class="col-6 mb-3">
                                        <input type="date" class="form-control mb-3" name="pt_date" value="">
                                    </div>
                                    <div class="col-6 mb-3">
                                        <input type="text" class="form-control mb-3" name="pt_time" placeholder="ex)10:00~11:00,11:00~12:00,13:00,~14:00" value="">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <textarea name="p_detail" class="form-control w-100" id="" cols="30" rows="10" placeholder="상품설명"></textarea>
                                    </div>

                                    <div class="col-12">
                                        <div class="custom-control custom-checkbox d-block mb-2">
                                            <input type="checkbox" class="custom-control-input" id="customCheck2">
                                            <label class="custom-control-label" for="customCheck2">Create an accout</label>
                                        </div>
                                        <div class="custom-control custom-checkbox d-block">
                                            <input type="checkbox" class="custom-control-input" id="customCheck3">
                                            <label class="custom-control-label" for="customCheck3">Ship to a different address</label>
                                        </div>
                                        <div class="cart-btn mt-100">
                                			<input type="submit"  class="btn amado-btn w-100" value="결제하기" onclick="javascript: form.action='product_insert_off_action';"/><br><br/>
                                			<a href="home" class="btn amado-btn w-100">취소하기</a>
                           				</div>
                                    </div>`);
	}
}); //간단히 변경하ㄹ 수 있으면 좋을 듯..


