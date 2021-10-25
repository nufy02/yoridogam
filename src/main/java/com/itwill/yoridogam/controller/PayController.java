package com.itwill.yoridogam.controller;

import java.util.List;

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
import com.itwill.yoridogam.pay.cart.Cart;
import com.itwill.yoridogam.pay.cart.CartService;
import com.itwill.yoridogam.pay.pay.Pay;
import com.itwill.yoridogam.pay.pay.PayService;
import com.itwill.yoridogam.pay.payItem.Pay_item;
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
		String sUserId=(String)session.getAttribute("sUserId");
		int pQty=1;//test
		int p_no=1;//test
		session.setAttribute("qty",pQty);
		model.addAttribute("sUserId", memberService.findMember(sUserId));
		model.addAttribute("product", productService.selectByNo(p_no));
		return "pay_form";
	}
	
	@LoginCheck
	@RequestMapping("pay_form_cart")
	public String pay_form_fromCart(HttpSession session, Model model) throws Exception{
		String sUserId=(String)session.getAttribute("sUserId");
		List<Cart> cList=cartService.cartList(sUserId);
		model.addAttribute("sUserId", memberService.findMember(sUserId));
		model.addAttribute("cartList", cList);
		return "pay_form_cart";
	}
	
	@LoginCheck
	@RequestMapping(value = "pay_action", method = RequestMethod.POST)
	public String pay_action_post(@ModelAttribute Pay pay,int qty,int p_no,HttpSession session) throws Exception{
		String sUserId=(String)session.getAttribute("sUserId");
		pay.setMember(memberService.findMember(sUserId));
		pay.setPay_total(productService.selectByNo(p_no).getP_price());
		payService.createPay(pay,qty,p_no);
		return "pay_complete_form";
	}
	
	@LoginCheck
	@RequestMapping(value = "pay_complete_form", method = RequestMethod.POST)
	public String pay_complete_form(HttpSession session) {
		
		return "pay_complete_form";
	}
	
	
	
}
