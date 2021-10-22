package com.itwill.yoridogam.cart.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.reservation.Reservation;
import com.itwill.yoridogam.reservation.ReservationDao;

public class ReservationDaoTest {

	public static void main(String[] args) throws Exception {
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		ReservationDao reservationDao=(ReservationDao)applicationContext.getBean("ReservationDao");
		
		//insert
		// reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
		System.out.println(reservationDao.create(null));
		
		//selectAll
		// select * from reservation where m_id=#{m_id};
		
		//selectByNo
		//select * from product p join reservation rsv on rsv.p_no=p.p_no where rsv.m_id=#{m_id};
		
		//deleteByNo
		System.out.println(reservationDao.deleteById(new Reservation(1, 1, null, 0, null, null, null, null, null)));
		
		//deleteAll
		System.out.println(reservationDao.deleteAll("eogus2"));
	}

}
