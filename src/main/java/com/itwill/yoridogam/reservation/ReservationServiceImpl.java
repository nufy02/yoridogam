package com.itwill.yoridogam.reservation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.yoridogam.productTime.ProductTime;
import com.itwill.yoridogam.productTime.ProductTimeDao;

@Service("reservationService")
public class ReservationServiceImpl implements ReservationService {
	@Autowired
	private ReservationDao reservationDao;
	@Autowired
	private ProductTimeDao productTimeDao;
	
	// 상품 예약
	@Override
	public int insert(Reservation reservation,ProductTime productTime/*,String sUserId*/) throws Exception {
		reservation.setRsv_date(productTime.getPt_date());
		reservation.setRsv_time(productTime.getPt_time());
		// 컨트롤러로 prouductTime 값을 받기 위해서는 숨어있는 pt_no 값도 웹에서 받아주기!
		/*
		공백인 reservaion에 날짜와 시간을 productTime에서 날짜와 시간을 가져와서 대입해줌
		단, 컨트롤러로 이 코드가 넘어갈때는 컨트롤러에서
		Reservation reservation = new Reservaion(0,가격,타입,인원,pt_date,~)이런식으로 넣어줘서
		안해줘도됨
		*/
		reservationDao.create(reservation);
		// 웹에서 받아온 reservation값을 넣어서 DB reservaion insert
		ProductTime PTrsv = productTimeDao.selectPtNo(productTime.getPt_no());
		// selectPtNo 데이터를 PTrsv에 넣어준다
		int i = PTrsv.getPt_rsv();
		PTrsv.setPt_rsv(reservation.getRsv_qty()+i);
		productTimeDao.addPt_rsv(PTrsv);
		
		return 0;
	}

	// 회원의 예약내역 조회
	@Override
	public List<Reservation> selectAll(String sUserId) throws Exception {
		
		return reservationDao.selectAll(sUserId);
	}

	// 회원의 예약 특정 상세 조회
	@Override
	public List<Reservation> selectById(String sUserId) throws Exception {
		
		return reservationDao.selectById(sUserId);
	}

	// 회원의 특정 예약 취소
	@Override
	public int deletByRsv(Reservation reservation) throws Exception {
		
		return reservationDao.deleteById(reservation);
	}

	// 회원의 전체 예약 삭제
	@Override
	public int deleteAll(String sUserId) throws Exception {
	
		return reservationDao.deleteAll(sUserId);
	}

}
