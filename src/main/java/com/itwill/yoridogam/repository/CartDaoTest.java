package com.itwill.yoridogam.repository;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.cart.Cart;
import com.itwill.yoridogam.cart.CartDao;
import com.itwill.yoridogam.domain.Member;
import com.itwill.yoridogam.domain.Product;

public class CartDaoTest {

	
	public static void main(String[] args)throws Exception{
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		CartDao cartDao=(CartDao)applicationContext.getBean("cartDao");
		System.out.println(cartDao.insertCart(new Cart(0,1,new Product(1),new Member("1"))));
	}
}
