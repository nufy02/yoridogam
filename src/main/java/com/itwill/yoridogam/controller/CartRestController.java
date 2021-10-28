package com.itwill.yoridogam.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.yoridogam.controller.interceptor.LoginCheck;
import com.itwill.yoridogam.pay.cart.CartService;

@RestController
public class CartRestController {

	@Autowired
	private CartService cartService;
	
	/*********************************************************************
	 장바구니 모든 강의 삭제
	 *********************************************************************/
	@LoginCheck
	@PostMapping("cart_deleteById_action")
	public void cartDelById(HttpSession session) throws Exception{
		String sUserId=(String)session.getAttribute("sUserId");
		cartService.deleteCart(sUserId);
	}
	
	/*********************************************************************
	 장바구니 내 강의 수량증가
	 *********************************************************************/
	@LoginCheck
	@PostMapping("cart_qtyP_action")
	public void cartItemQtyP(@RequestParam(required = false) String ci_no) throws Exception{
		int ci_noInt=(int)Integer.parseInt(ci_no);
		cartService.increaseQty(ci_noInt);
	}
	
	/*********************************************************************
	 장바구니 내 강의 수량감소
	 *********************************************************************/
	@LoginCheck
	@PostMapping("cart_qtyM_action")
	public void cartItemQtyM(@RequestParam(required = false) String ci_no) throws Exception{
		int ci_noInt=(int)Integer.parseInt(ci_no);
		cartService.decreaseQty(ci_noInt);
	}
}
