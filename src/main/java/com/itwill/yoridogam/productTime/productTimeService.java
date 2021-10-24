package com.itwill.yoridogam.productTime;

import java.util.List;



public interface productTimeService {

	// 상품별 시간 리스트
	List<ProductTime> selectAll(int p_no)throws Exception;
	
	// productTime pt_no으로 찾기
	ProductTime selectByNo(int pt_no)throws Exception;
	
	// 상품별 시간 insert
}
