package com.itwill.yoridogam.reservation;



public interface ReservationService {
	
	/*
	 <<예약하면 오프라인예약에 넣어주고 상품시간의 예약된 인원 늘려주기!>>
	 
	reservation.insert(resvation reservation,ProductTime productTime,String sUserId);
	reservationDao.insert(인자)
	ProductTime pt =  pt.setpt_rsv(reservaion.rsv_qty+product_timeDao.selectPtNo(productTime.pi_no))
	// pt에 웹에서 받은 rsv_qty랑 selectPtNo의 pt_rsv값을더해서 set한것
	//(selectptNo 은 pt_rsv만 가져오기)
	int rsv = pt.pt_rsv // int에 찾은상품시간 인원 넣고 
	productTimeDao.update(rsv)
	
	*/
	
	
	
	
	
	
	// 오프라인 상품 예약하기
	
	// 회원 예약 전체조회
	
	// 
}
