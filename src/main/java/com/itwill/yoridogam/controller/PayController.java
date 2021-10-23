package com.itwill.yoridogam.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.pay.cart.CartService;
import com.itwill.yoridogam.pay.pay.PayService;

@Controller
public class PayController {
	
	@Autowired
	private PayService payService;
	@Autowired
	private CartService cartService;
	
	@RequestMapping("pay_form")
	public String pay_form(HttpSession session) {
		
		Member sUserId=new Member("test1", "김테스트", "김비번", "서울시 강남구", "TEST@TEST.com", "010-112-119", "여성");
		//member구현시 삭제
		session.setAttribute("sUserId", sUserId);
		return "pay_form";
	}
	
	
}
