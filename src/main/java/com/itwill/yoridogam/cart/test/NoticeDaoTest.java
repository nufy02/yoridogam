package com.itwill.yoridogam.cart.test;



import java.sql.Date;
import java.text.SimpleDateFormat;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.notice.Notice;
import com.itwill.yoridogam.notice.NoticeDao;

public class NoticeDaoTest {

	public static void main(String[] args) throws Exception{
		ApplicationContext applicationContext =
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		NoticeDao noticeDao = (NoticeDao)applicationContext.getBean("noticeDao");
		System.out.println(noticeDao);
		System.out.println(noticeDao.selectAllNoti());
		//System.out.println(noticeDao.selectByNotiNo(1));
		String dateStr = "2021/10/23";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
		java.util.Date date = simpleDateFormat.parse(dateStr);
		/*
		System.out.println(noticeDao.insertNoti(new Notice(0, "공지사항입니다2", date, 0, "공지사항 내용입니다2", "admin1")));
		*/
		Notice insertNoti = new Notice(2, "공지사항입니다2", date, 0,  "공지사항 내용입니다2", "admin1");
		System.out.println(noticeDao.insertNoti(insertNoti));
		
		


	}

}
