package com.itwill.yoridogam.cart.test;

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
		
		
		//insert
		System.out.println(cartDao.insertCart(new Cart(0,1,new Product(1),new Member("2"))));
		//increaseQ
		System.out.println(cartDao.increaseQty(new Cart(3,0,null,new Member("2"))));
		//decreaseQ
		System.out.println(cartDao.decreaseQty(new Cart(3,0,null,new Member("2"))));
		//delete
		System.out.println(cartDao.deleteCartByNo(1));
		//deleteAll
		System.out.println(cartDao.deleteCart("3"));
		//List
		System.out.println(cartDao.cartList("1"));
		//isExist
		System.out.println(cartDao.isExistCart("1"));
		//isExistItem
		System.out.println(cartDao.isExistCartItem(new Cart(0, 0, new Product(1), new Member("1"))));
	}
}
