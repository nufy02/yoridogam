package com.itwill.yoridogam.productTime;

import java.util.List;

public interface ProductTimeDao {
// <create> (강사) 오프라인 강의시간 등록
	int create(ProductTime productTime) throws Exception;
	
// <selectPossible> 예약가능한 강의 시간 리스트 조회
	List<ProductTime> selectPi(int p_no) throws Exception;
	
// <selectReserved> 예약된 강의 시간 리스트 조회
	List<ProductTime> selectRv(int p_no) throws Exception;
	
// <update> 특정 강의시간 수정
	int update(ProductTime productTime) throws Exception;
	
// <delete> 특정 강의시간 삭제
	int dalete(int pt_no) throws Exception;
}
