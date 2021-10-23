package com.itwill.yoridogam.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwill.yoridogam.controller.interceptor.LoginCheck;
import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.pay.cart.CartService;
import com.itwill.yoridogam.pay.pay.Pay;
import com.itwill.yoridogam.pay.pay.PayService;

@Controller
public class PayController {
	
	@Autowired
	private PayService payService;
	@Autowired
	private CartService cartService;
	
	@LoginCheck
	@RequestMapping("pay_form")
	public String pay_form(HttpSession session) {
		
		return "pay_form";
	}
	
	@RequestMapping(value = "pay_action", method = RequestMethod.POST)
	public String pay_action(@ModelAttribute Pay pay, HttpSession session) {
		
		return "redirect:pay_complete_form";
	}
	
}
