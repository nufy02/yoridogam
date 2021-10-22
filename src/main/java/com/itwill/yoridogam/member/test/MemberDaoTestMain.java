package com.itwill.yoridogam.member.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.member.MemberDao;

public class MemberDaoTestMain {
	
	public static void main(String[] args)throws Exception{
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		MemberDao memberDao = (MemberDao)applicationContext.getBean("memberDao");
		System.out.println(memberDao);
		
		/*
		 * 회원가입
		 */
		//System.out.println("1. create : "+memberDao.create(new Member("member4","김첨지3","1111","서울시","kkihon@naver.com","010-8888-8888","비건","남자")));
		
		/*
		 * 회원상세 
		 */
		System.out.println("2.findMember :"+memberDao.findMember("member1"));
	
	
	}
}
	
