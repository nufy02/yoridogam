package com.itwill.yoridogam.cart.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.cart.Cart;
import com.itwill.yoridogam.cart.CartDao;
import com.itwill.yoridogam.cart.CartService;
import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.product.Product;

public class CartServiceTest {
	public static void main(String[] args)throws Exception{
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		CartService cartService=(CartService) applicationContext.getBean("cartSerivce");
		Member mm=new Member("1", null, null, null, null, null, null, null);
		Product pp=new Product(1, null, null, null, null, null, null);
		Cart cc=new Cart(0, 2, pp, mm);
		
		System.out.println(cartService.insertCart(cc));
		//System.out.println(cartService.increaseQty(new Cart(3, 1, null, mm)));
		System.out.println(cartService.decreaseQty(new Cart(3, 1, null, mm)));
		System.out.println();
	}
}
