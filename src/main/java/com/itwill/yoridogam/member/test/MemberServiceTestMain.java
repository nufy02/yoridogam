package com.itwill.yoridogam.member.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.member.MemberService;
import com.itwill.yoridogam.memberInterest.MemberInterest;

public class MemberServiceTestMain {

	public static void main(String[] args)throws Exception{
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		MemberService memberService=(MemberService) applicationContext.getBean("memberService");
		System.out.println(memberService);
		
		Member m4 = new Member("member56", "test", "test", "test", "test", "test", "test");
		MemberInterest mi4 = new MemberInterest(0, "빵", m4);
		
		System.out.println("1.insertMember : " +memberService.create(m4, mi4));
	}

}
