package com.itwill.yoridogam.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.yoridogam.controller.interceptor.LoginCheck;
import com.itwill.yoridogam.product.Product;
import com.itwill.yoridogam.product.ProductService;
import com.itwill.yoridogam.productTime.ProductTime;
import com.itwill.yoridogam.productTime.ProductTimeService;
import com.itwill.yoridogam.teacher.Teacher;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private ProductTimeService productTimeService;
	
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
	public String product_insert_action(Product product,HttpSession session, Model model) throws Exception{
		product.setP_photo("img/product-img/"+product.getP_photo()); 
		int p_no=productService.create(product);
		return "home"; // 추후 수정: 해당 p_no detail로 redirect
	}
	
	@LoginCheck
	@RequestMapping("product_insert_off_action")
	public String product_insert_off_action(Product product,ProductTime productTime,HttpSession session, Model model) throws Exception{
		product.setP_photo("img/product-img/"+product.getP_photo());
		int p_no=productService.create(product); 
		product.setP_no(p_no);
		
		String[] pt_timeList=productTime.getPt_time().split(","); 
		for(int i=0; i<pt_timeList.length; i++) {
			productTimeService.create(new ProductTime(0, productTime.getPt_date(), pt_timeList[i], productTime.getPt_max(), 0, product));
		}
		System.out.println(productTime.getPt_date().getClass().getName());
		return "home"; // 추후 수정, 상동
	}
	/* 없어도 될 거 같아요
	@RequestMapping("product_delete_form")
	public String proudct_delete_form() {
		
		return null;
	}
	*/
	@RequestMapping("product_delete_action")
	public String product_delete_action() {
		
		return null;
	}
	@LoginCheck
	@RequestMapping("product_update_form")
	//public String product_update_form(int p_no,HttpSession session, Model model) throws Exception {
	public String product_update_form(HttpSession session, Model model) throws Exception {
		int p_no=4;//test 2-on 4-off
		model.addAttribute("product",productService.selectByNo(p_no));
		model.addAttribute("productTime",productTimeService.selectAll(p_no));
		return "product_update_form";
		
	}
	@LoginCheck
	@RequestMapping("product_update_action")
	public String product_update_action(ProductTime productTime,Product product,HttpSession session) throws Exception{
		product.setP_photo("img/product-img/"+product.getP_photo());
		productService.updateByNo(product);
		return "home";
	}
	
	@LoginCheck
	@RequestMapping("product_recentView_list")
	public String product_recentView_list(Product product,HttpSession session, HttpServletRequest request) throws Exception{
	return "product_recentView_list";
	}
	
	@PostMapping(value = "pt_date_ajax",produces = "application/json;charset=UTF-8")
	@ResponseBody
	public List<ProductTime> rsv_date_ajax(@RequestParam String pt_date,@RequestParam int p_no) throws Exception{
		List<ProductTime> pt = productTimeService.selectPtTime(pt_date, p_no);
		return pt;
	}
	
	@PostMapping(value = "pt_create_action")
	@ResponseBody
	public List pt_create_action(@RequestBody Map<String, Object> data) throws Exception{
		String[] pt_timeList=((String) data.get("pt_time")).split(",");
		String pt_date=(String)data.get("pt_date");
		int p_no=Integer.valueOf((String)data.get("p_no"));
		Product product=productService.selectByNo(p_no);
		
		for(int i=0; i<pt_timeList.length; i++) {
			productTimeService.create(new ProductTime(0,pt_date, pt_timeList[i],Integer.valueOf((String)data.get("pt_max")) , 0, product));
		}
		
		List<ProductTime> pt = productTimeService.selectPtTime(pt_date, p_no);
		return pt;
	}
	
	@RequestMapping("product_time_delete_action")
	@ResponseBody
	public List proudct_delete_form(@RequestParam(value="pt_noList[]") List<String> pt_noList, @RequestParam(value="pt_date") String pt_date, String p_no) throws Exception {
		for(int i=0; i<pt_noList.size(); i++) {
			productTimeService.delete(Integer.parseInt(pt_noList.get(i)));
		}
			List<ProductTime> result = productTimeService.selectPtTime(pt_date, Integer.parseInt(p_no));
			return result;
	}
	
	@LoginCheck
	@RequestMapping("product_maps")
	public String product_maps(HttpSession session, Model model) throws Exception {
		List<Product> pList=productService.selectPTAll();
		model.addAttribute("pList",pList);
		return "product_maps";
	}
}
