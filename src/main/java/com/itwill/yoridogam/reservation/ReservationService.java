package com.itwill.yoridogam.reservation;

import java.util.List;

import com.itwill.yoridogam.productTime.ProductTime;

public interface ReservationService {
	
	/*
	 <<예약하면 오프라인예약에 넣어주고 상품시간의 예약된 인원 늘려주기!>>
	 
	reservationDao.insert(resvation reservation,ProductTime productTime,String sUserId);
	reservationDao.insert(인자)
	ProductTime pt =  pt.setpt_rsv(reservaion.rsv_qty+product_timeDao.selectPtNo(productTime.pi_no))
	// pt에 웹에서 받은 rsv_qty랑 selectPtNo의 pt_rsv값을더해서 set한것
	//(selectptNo 은 pt_rsv만 가져오기)
	int rsv = pt.pt_rsv // int에 찾은상품시간 인원 넣고 
	productTimeDao.update(rsv)
	*/
	// 상품 예약
	int insert(Reservation reservation,ProductTime productTime/*,String sUserId*/) throws Exception;
	
	// 회원의 예약내역 조회
	List<Reservation> selectAll(String sUserId)throws Exception;
	
	// 회원의 예약 특정 상세 조회
	Reservation selectById(String sUserId)throws Exception;
	
	// 회원의 특정 예약 취소
	int deletByRsv(Reservation reservation)throws Exception;
	
	// 회원의 전체 예약 삭제
	int deleteAll(String sUserId) throws Exception;
}
