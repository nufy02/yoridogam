package com.itwill.yoridogam.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwill.yoridogam.controller.interceptor.LoginCheck;
import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.pay.cart.Cart;
import com.itwill.yoridogam.pay.cart.CartService;
import com.itwill.yoridogam.product.Product;

@Controller
public class CartController {
	@Autowired
	private CartService cartService;
	
	@LoginCheck
	@RequestMapping("cart_list_form")
	public String Cart_List(HttpSession session) {
		String sUserId=(String)session.getAttribute("sUserId");
		session.setAttribute("cartList", cartService.cartList(sUserId));
		return "cart_list_form";
		
	}
	
	@LoginCheck
	@RequestMapping(value = "cart_insert_action", method = RequestMethod.POST)
	public String insertCart_action(HttpSession session, int p_no, int qty) throws Exception{
		String sUserId=(String)session.getAttribute("sUserId");
		Cart nCartI=new Cart();
		nCartI.setProduct(new Product(p_no, null, null, null, null, null, null));
		nCartI.setMember(new Member(sUserId, null, null, null, null, null, null));
		boolean isCartI=cartService.isExistCartItem(nCartI);
		if(isCartI==true) {
			return "cart_increase_action";
		}
		cartService.insertCart(nCartI);
		return "cart_list_form";
	}
	
}

