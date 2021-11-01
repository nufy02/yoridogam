package com.itwill.yoridogam.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.yoridogam.controller.interceptor.LoginCheck;
import com.itwill.yoridogam.product.Product;
import com.itwill.yoridogam.product.ProductService;
import com.itwill.yoridogam.teacher.Teacher;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	
	@RequestMapping("product_list_form")
	public String product_list(Model model)throws Exception{
		List<Product> productList=productService.selectAll();
		model.addAttribute("productList", productList);
		return "product_list";
	}
	@RequestMapping("product_detail_form")
	public String product_detail(@RequestParam int p_no,Model model)throws Exception{
		Product product=productService.selectByNo(p_no);
		model.addAttribute("product",product);
		return "product_detail";
	}
	@LoginCheck
	@RequestMapping("product_insert_form")
	public String product_insert_form() throws Exception{
		return "product_insert_form";
	}
	@LoginCheck
	@RequestMapping("product_insert_action")
	public String product_insert_action(@ModelAttribute Product product,int t_id,HttpSession session, Model model) {
		
		return null;
	}
	@RequestMapping("product_delete_form")
	public String proudct_delete_form() {
		
		return null;
	}
	@RequestMapping("product_delete_action")
	public String product_delete_action() {
		
		return null;
	}
	@RequestMapping("product_update_form")
	public String product_update_form() {
		
		return null;
	}
	@RequestMapping("product_update_action")
	public String product_update_action() {
		
		return null;
	}
}
