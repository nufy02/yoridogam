package com.itwill.yoridogam.reservation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.yoridogam.product.Product;
import com.itwill.yoridogam.productTime.ProductTime;
import com.itwill.yoridogam.productTime.ProductTimeDao;
import com.itwill.yoridogam.productTime.ProductTimeService;
import com.itwill.yoridogam.teacher.Teacher;
import com.itwill.yoridogam.product.ProductDao;

@Service("reservationService")
public class ReservationServiceImpl implements ReservationService {
	@Autowired
	private ReservationDao reservationDao;
	@Autowired
	private ProductTimeDao productTimeDao;
	@Autowired
	private ProductDao productDao;
	
	// 상품 예약
	@Override
	public int insert(Reservation reservation,String sUserId) throws Exception {
		String date = reservation.getRsv_date();
		String time = reservation.getRsv_time();
		int p_no = reservation.getProduct().getP_no();
		ProductTime pt = new ProductTime(0, date, time, 0, 0, new Product(p_no, null, null, null, null, null, null, null));
		ProductTime PTrsv = productTimeDao.selectPtNo2(pt);
		// 웹에서 받아온 reservation값을 넣어서 DB reservaion insert
		// selectPtNo 데이터를 PTrsv에 넣어준다	
		PTrsv.setPt_rsv(reservation.getRsv_qty());
		 productTimeDao.updatePt_rsv(PTrsv);
		return reservationDao.create(reservation);
	}

	// 회원의 예약내역 조회
	@Override
	public List<Reservation> selectAll(String sUserId) throws Exception {
		
		return reservationDao.selectAll(sUserId);
	}
	
	@Override
	public Reservation selectRsv_no(int rsv_no) throws Exception {
		
		return reservationDao.selectRsv_no(rsv_no);
	}

	// 회원의 예약 특정 상세 조회
	@Override
	public List<Reservation> selectById(String sUserId) throws Exception {
		
		return reservationDao.selectById(sUserId);
	}
	
	// 회원의 DB에 예약할 상품이 있는지 확인하기 위함
	public Reservation selectByP_no(Reservation reservation)throws Exception{
		
		return  reservationDao.selectByP_no(reservation);
	}

	// 회원의 특정 예약 취소
	@Override
	public int deletByRsv(int rsv_no) throws Exception {
		Reservation reservation = reservationDao.selectRsv_no(rsv_no);
		int p_no = reservation.getProduct().getP_no();
		String rsv_date = reservation.getRsv_date();
		String rsv_time = reservation.getRsv_time();
		int rsv = reservation.getRsv_qty();
		ProductTime pt= productTimeDao.selectPtNo2(new ProductTime(0, rsv_date, rsv_time, 0, 0, new Product(p_no, null, null, null, null, null, null, null)));
		pt.setPt_rsv(rsv);
		productTimeDao.updatePt_rsv(pt);
		return reservationDao.deleteById(rsv_no);
	}

	// 회원의 전체 예약 삭제
	@Override
	public int deleteAll(String sUserId) throws Exception {
	
		return reservationDao.deleteAll(sUserId);
	}
	
	//p_no 이용해서 강사 찾기
	@Override
	public Teacher SelectTByP_no(int p_no) throws Exception {

		return productDao.selectTByP_no(p_no);
	}



}
