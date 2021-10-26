package com.itwill.yoridogam.controller;

import java.util.List;

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
import com.itwill.yoridogam.teacher.Teacher;

@Controller
public class CartController {
	@Autowired
	private CartService cartService;
	
	@LoginCheck
	@RequestMapping("cart_list_form")
	public String Cart_List(HttpSession session) {
		String sUserId=(String)session.getAttribute("sUserId");
		List<Cart> cList=cartService.cartList(sUserId);
		int cart_total=0;
		for(Cart cart:cList) {
			cart_total+=Integer.parseInt(cart.getProduct().getP_price());
		}
		session.setAttribute("cartList", cList);
		session.setAttribute("cart_total", cart_total);
		return "cart_list_form";
		
	}
	
	@LoginCheck
	@RequestMapping(value = "cart_insert_action", method = RequestMethod.POST)
	public String insertCart_action(HttpSession session, int p_no, int qty) throws Exception{
		String sUserId=(String)session.getAttribute("sUserId");
		Cart nCartI=new Cart();
		nCartI.setProduct(new Product(p_no, null, null, null, null, null, null, null));
		nCartI.setMember(new Member(sUserId, null, null, null, null, null, null));
		boolean isCartI=cartService.isExistCartItem(nCartI);
		if(isCartI==true) {
			cartService.increaseQty(nCartI);
		}
		cartService.insertCart(nCartI);
		return "cart_list_form";
	}
	
	@LoginCheck
	@RequestMapping(value = "cart_deleteByNo_action", method = RequestMethod.POST)
	public String cartDelByNo(HttpSession session, int ci_no) throws Exception{
		String sUserId=(String)session.getAttribute("sUserId");
		cartService.deleteCartByNo(ci_no);
		return "cart_list_form";
	}
	
	@LoginCheck
	@RequestMapping(value = "cart_deleteById_action", method = RequestMethod.POST)
	public String cartDelById(HttpSession session, int ci_no) throws Exception{
		String sUserId=(String)session.getAttribute("sUserId");
		cartService.deleteCart(sUserId);
		return "cart_list_form";
	}
	
	@LoginCheck
	@RequestMapping(value = "cart_qtyP_action", method = RequestMethod.POST)
	public String cartItemQtyP(HttpSession session, Cart cart) throws Exception{
		cartService.increaseQty(cart);
		return "cart_list_form";
	}
	
	@LoginCheck
	@RequestMapping(value = "cart_qtyM_action", method = RequestMethod.POST)
	public String cartItemQtyM(HttpSession session, Cart cart) throws Exception{
		cartService.decreaseQty(cart);
		return "cart_list_form";
	}
}

