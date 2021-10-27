package com.itwill.yoridogam.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	//@PostMapping("cart_list_from")
	public String Cart_List(HttpSession session) {
		String sUserId=(String)session.getAttribute("sUserId");
		session.setAttribute("cartList", cartService.cartList(sUserId));
		return "cart_list_form";
	}
	
	@LoginCheck
	@RequestMapping(value = "cart_insert_action", method = RequestMethod.POST)
	//@PostMapping("cart_insert_action")
	public String insertCart_action(HttpSession session, int p_no, int qty) throws Exception{
		Cart nCartI=new Cart(0,qty,new Product(p_no,
													"", "", "", "", "", "", null),
												   new Member((String)session.getAttribute("sUserId"),
												   "", "", "", "", "", ""));
		boolean isCartI=cartService.isExistCartItem(nCartI);
		if(isCartI==true) {
			cartService.increaseQty(nCartI);
		}
		cartService.insertCart(nCartI);
		return "cart_list_form";
	}
	
	@LoginCheck
	@RequestMapping(value = "cart_deleteByNo_action", method = RequestMethod.POST)
	//@PostMapping("cart_deleteByNo_action")
	public String cartDelByNo(@RequestParam(value="ci_no") List<String> ci_noList, Model model) throws Exception{
		for(String ci_no : ci_noList) {
        	int ci_noInt=Integer.parseInt(ci_no);
            cartService.deleteCartByNo(ci_noInt);
        }
        return "redirect:cart_list_form";
	}
	
	
	@LoginCheck
	@RequestMapping(value = "cart_deleteById_action", method = RequestMethod.POST)
	//@PostMapping("cart_deleteById_action")
	public String cartDelById(HttpSession session) throws Exception{
		String sUserId=(String)session.getAttribute("sUserId");
		cartService.deleteCart(sUserId);
		return "redirect:cart_list_form";
	}
	
	@LoginCheck
	@RequestMapping(value = "cart_qtyP_action", method = RequestMethod.POST)
	//@PostMapping("cart_qtyP_action")
	public String cartItemQtyP(HttpSession session, Cart cart) throws Exception{
		cartService.increaseQty(cart);
		return "cart_list_form";
	}
	
	@LoginCheck
	@RequestMapping(value = "cart_qtyM_action", method = RequestMethod.POST)
	//@PostMapping("cart_qtyM_action")
	public String cartItemQtyM(HttpSession session, Cart cart) throws Exception{
		cartService.decreaseQty(cart);
		return "cart_list_form";
	}
}

