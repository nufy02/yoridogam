package com.itwill.yoridogam.pay.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.pay.Pay;
import com.itwill.yoridogam.pay.PayDao;
import com.itwill.yoridogam.pay.PayService;

public class PayServiceTest {
	public static void main(String[] args)throws Exception{
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		PayService payService=(PayService)applicationContext.getBean("payService");
		System.out.println(payService);
		
		//강의 직접결제
		Member mm=new Member("1", null, null, null, null, null, null, null);
		Pay pp=new Pay(1, null, "카드", mm);
		System.out.println(payService.createPay(pp, "1", 1, 1));
	}
}
