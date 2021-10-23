package com.itwill.yoridogam.pay.cart.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.notice.NoticeDao;

public class NoticeDaoTest {

	public static void main(String[] args) {
		ApplicationContext applicationContext =
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		NoticeDao noticeDao = (NoticeDao)applicationContext.getBean("noticeDao");
		
		
		
	}

}
