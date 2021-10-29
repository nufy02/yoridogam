package com.itwill.yoridogam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.yoridogam.inquiry.Inquiry;
import com.itwill.yoridogam.inquiry.InquiryService;
import com.itwill.yoridogam.notice.Notice;

@Controller
public class InquiryController {
	
	@Autowired
	private InquiryService inquiryService;
	
	/*
	 inquiry_list		문의글 전체 리스트
	 inquiry_detail		문의글 한 개 상세보기
	 ---------------------------------------------------------
	(회원만 가능) 
	 inquiry_write_form		문의글 작성 폼
	 inquiry_write_action	문의글 작성 액션

	 inquiry_update_form	문의글 수정 폼
	 inquiry_update_action	문의글 수정 액션	

	 inquiry_delete_action	문의글 삭제 액션

	-----------------------------------------------------------
	(관리자만 가능)
	 inquiryA_write_form	답변 작성 폼
	 inquiryA_write_action	답변 작성 액션

	 inquiryA_update_form	답변 수정 폼
	 inquiryA_update_action	답변 수정 액션

	 inquiryA_delete_action	답변 삭제 액션
	 */
	
	
	/**** 문의게시판 리스트 ****/
	@RequestMapping("inquiry_list")
	public String inquiry_list(Model model) {
		List<Inquiry> inquiryList = inquiryService.inquiryList();
		model.addAttribute("inquiryList", inquiryList);
		return "inquiry_list_form";
	}
	
	/**** 문의게시판 한 개 상세보기 ****/
	@RequestMapping("inquiry_detail")
	public String inquiry_detail(@RequestParam int ib_no, Model model) {
		inquiryService.updateInquiryViewCount(ib_no);
		Inquiry inquiryDetail = inquiryService.selectByNoInquiry(ib_no);
		model.addAttribute("inquiryDetail", inquiryDetail);
		return "inquiry_detail";
	}
	
	/***************************************************************************/
	
	/**** 문의게시판 글 작성 폼(회원) ****/
	@RequestMapping("inquiry_write_form")
	public String inquiry_write_form() {
		return"inquiry_write_form_Q";
	}
	
	/**** 문의게시판 글 작성 액션(회원)(GET) ****/
	@GetMapping("inquiry_write_action")
	public String inquiry_write_action_get() {
		return "redirect:inquiry_write_form";
	}
	
	/**** 문의게시판 글 작성 액션(회원)(POST) ****/
	@PostMapping("inquiry_write_action")
	public String inquiry_write_action_post(@ModelAttribute Inquiry inquiry, Model model) {
		inquiryService.insertInquiry(inquiry);
		model.addAttribute("inquiry", inquiry);
		return "inquiry_detail";
	}
	
	/**** 문의게시판 글 수정 폼(회원) ****/
	@RequestMapping("inquiry_update_form")
	public String inquiry_update_form() {
		return"inquiry_update_form";
	}
	
	/**** 문의게시판 글 수정 액션(회원)(GET) ****/
	@GetMapping("inquiry_update_action")
	public String inquiry_update_action_get() {
		return"redirect:inquiry_update_form";
	}

	/**** 문의게시판 글 수정 액션(회원)(POST) ****/
	
	@PostMapping("inquiry_update_action")
	public String inquiry_update_action_post(@ModelAttribute Inquiry inquiry, Model model) {
		inquiryService.updateInquiry(inquiry);
		model.addAttribute("inquiryUpdate", inquiry);
		return"inquiry_detail";
	}

	/***************************************************************************/
	
	/**** 문의게시판 답글 작성 폼(관리자) ****/
	@RequestMapping("inquiryA_write_form")
	public String inquiryA_write_form() {
		return"inquiryA_write_form";
	}
	
	/**** 문의게시판 답글 작성 액션(관리자)(GET) ****/
	@GetMapping("inquiryA_write_action")
	public String inquiryA_write_action_get() {
		return "redirect:inquiryA_write_form";
	}
	
	/**** 문의게시판 답글 작성 액션(관리자)(POST) ****/
	@PostMapping("inquiryA_write_action")
	public String inquiryA_write_action_post(@ModelAttribute Inquiry inquiry, @RequestParam int ib_no, Model model) {
		inquiryService.insertInquiryA(inquiry);
		model.addAttribute("inquiryA", inquiry);
		return "inquiry_detail";
	}	//>> Post 방식 잘 모르겠음ㅜㅜ 
	
	/**** 문의게시판 글 수정 폼(회원) ****/
	@RequestMapping("inquiryA_update_form")
	public String inquiryA_update_form() {
		return"inquiryA_update_form";
	}
	
	/**** 문의게시판 글 수정 액션(회원)(GET) ****/
	@GetMapping("inquiryA_update_action")
	public String inquiryA_update_action_get() {
		return"redirect:inquiryA_update_form";
	}

	/**** 문의게시판 글 수정 액션(회원)(POST) ****/
	
	@PostMapping("inquiryA_update_action")
	public String inquiryA_update_action_post(@ModelAttribute Inquiry inquiry, Model model) {
		inquiryService.updateInquiryA(inquiry);
		model.addAttribute("inquiryAUpdate", inquiry);
		return"inquiryA_detail";
	}
	
	/***************************************************************************/
	
	/**** 문의게시판 글 삭제 액션(GET) ****/
	@GetMapping("inquiry_delete_action")
	public String inquiry_delete_action_get() {
		return "redirect:inquiry_list";
	}
	
	/**** 문의게시판 글 삭제 액션(Post) ****/
	@PostMapping("inquiry_delete_action")
	public String inquiry_delete_action_post(@RequestParam int noti_no) {
		inquiryService.deleteInquiry(noti_no);
		return "inquiry_list";
	}
	
}
