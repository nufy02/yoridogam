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
	public String pay_form(HttpSession session, Model model) throws Exception{
	//public String pay_form(HttpSession session, @RequestParam("p_no") int p_no, @RequestParam("pi_qty") int pi_qty) throws Exception{
		String member=(String)session.getAttribute("sUserId");
		int pNo=1;//test
		model.addAttribute("sUserId", memberService.findMember(member));
		model.addAttribute("product", productService.selectByNo(pNo));
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
