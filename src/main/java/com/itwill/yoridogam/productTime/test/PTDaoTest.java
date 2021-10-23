package com.itwill.yoridogam.productTime.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.product.Product;
import com.itwill.yoridogam.productTime.ProductTime;
import com.itwill.yoridogam.productTime.ProductTimeDao;
import com.itwill.yoridogam.reservation.ReservationDao;

public class PTDaoTest {

	public static void main(String[] args) throws Exception {
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		ProductTimeDao productTimeDao=(ProductTimeDao)applicationContext.getBean("ProductTimeDao");
		// <create> (강사) 오프라인 강의시간 등록
		/*
		System.out.println(productTimeDao.create(new ProductTime(0, "2021/10/22", "10:00-11:00",
																	new Product(1, null, null, null, null, null, null))));
		*/
		
		
		
		// <delete> 특정 강의시간 삭제
		
		
		
		
		
	}

}
