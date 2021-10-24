package com.itwill.yoridogam.inquiry.test;


import java.sql.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.inquiry.InquiryDao;


public class InquiryDaoTestMain {
	
	public static void main(String[] args)throws Exception{
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		InquiryDao inquiryDao = (InquiryDao)applicationContext.getBean("inquiryDao");
		System.out.println(inquiryDao);
		
		/*문의사항 전체 보기*/
		System.out.println(inquiryDao.selectByAllInquiry());
		
		/*문의사항 추가*/
		
	}
}
	
