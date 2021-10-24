package com.itwill.yoridogam.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.yoridogam.controller.interceptor.LoginCheck;
import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.member.MemberService;
import com.itwill.yoridogam.pay.cart.CartService;
import com.itwill.yoridogam.pay.pay.Pay;
import com.itwill.yoridogam.pay.pay.PayService;
import com.itwill.yoridogam.product.Product;
import com.itwill.yoridogam.product.ProductService;

@Controller
public class PayController {
	
	@Autowired
	private PayService payService;
	@Autowired
	private CartService cartService;
	@Autowired
	private MemberService memberService;
	@Autowired
	private ProductService productService;
	
	@LoginCheck
	@RequestMapping("pay_form")
	public String pay_form(HttpSession session) throws Exception{
		String member=(String)session.getAttribute("sUserId");
		//int pNo=(int)session.getAttribute("p_no");
		int pNo=1;//test
		//int pQty=(int)session.getAttribute("p_qty");
		//session.setAttribute("product", productService.findByNo(pNo));
		session.setAttribute("product", productService.findByNo(pNo));
		session.setAttribute("sUserId", memberService.findMember(member));
		//session.setAttribute("qty", pQty);
		int pQty=1;//test
		session.setAttribute("qty",pQty);
		return "pay_form";
	}
	
	@LoginCheck
	@RequestMapping(value = "pay_action", method = RequestMethod.POST)
	public String pay_action_post(@ModelAttribute Pay pay,@RequestParam int pi_qty, HttpSession session) {
		
		
	//	payService.createPay();
		return "redirect:pay_complete_form";
	}
	
	@LoginCheck
	@RequestMapping(value = "pay_complete_form", method = RequestMethod.POST)
	public String pay_complete_form(HttpSession session) {
		
		return "pay_complete_form";
	}
	
	
	
}
