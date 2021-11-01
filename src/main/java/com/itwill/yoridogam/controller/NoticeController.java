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

import com.itwill.yoridogam.notice.Notice;
import com.itwill.yoridogam.notice.NoticeService;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService noticeService;

	/*
	 noti_list		공지사항 전체 리스트
	 noti_detail	공지사항 한 개 상세보기
	 
	 noti_write_form	공지사항 작성 폼
	 noti_update_form	공지사항 수정 폼
	 
	 noti_write_action	공지사항 작성 액션(관리자만 가능)
	 noti_update_action	공지사항 수정 액션(관리자만 가능)
	 noti_delete_action	공지사항 삭제 액션(관리자만 가능)
	 */
	
	/**** 공지사항 리스트 ****/
	@RequestMapping("notice_list")
	public String noti_List(Model model) {
		List<Notice> notiList = noticeService.notiList();
		model.addAttribute("notiList", notiList); 
		return "notice_list_form";
		/*
		 notiList 객체를 "notiList" 이름으로 추가한다. 
		 뷰 코드에서는 "notiList"로 지정한 이름을 통해서 notiList를 사용한다
		 */
	}
	
	/**** 공지사항 한 개 상세보기 ****/
	@RequestMapping(value = "notice_detail", params = "noti_no")
	public String noti_detail(@RequestParam int noti_no, Model model) {
		//클릭 할 때마다 조회수 증가
		noticeService.updateNotiViewCount(noti_no);
		Notice notiDetail = noticeService.selectByNotiNo(noti_no);
		model.addAttribute("notiDetail", notiDetail);
		return "notice_detail";
	}
	
	/**** 공지사항 작성 폼 ****/
	@RequestMapping("noti_write_form")
	public String noti_write_form() {
		return"notice_write_form";
	}
	
	/**** 공지사항 작성 액션(get) ****/
	@GetMapping("noti_write_action")
	public String noti_write_action_get() {
		return "redirect:noti_write_action";
	}
	
	/**** 공지사항 작성 액션(post) ****/
	@PostMapping("noti_write_action")
	public String noti_write_action_post(@ModelAttribute Notice notice, Model model) {
		noticeService.insertNoti(notice);
		model.addAttribute("notice", notice);
		return "noti_detail";
	}
	
	/**** 공지사항 수정 폼 ****/
	@RequestMapping("noti_update_form")
	public String noti_update_form() {
		return "noti_update_form";
	}
	
	/**** 공지사항 수정 액션(Get) ****/
	@GetMapping("noti_update_action")
	public String noti_update_action_get() {
		return "redirect:noti_list";
	}
	
	/**** 공지사항 수정 액션(Post) ****/
	@PostMapping("noti_update_action")
	public String noti_update_action_post(@ModelAttribute Notice notice, Model model) {
		noticeService.updateNoti(notice);
		model.addAttribute("notice", notice);
		return "noti_detail";
	}
	
	/**** 공지사항 삭제 액션(Get) ****/
	@GetMapping("noti_delete_action")
	public String noti_delete_action_get() {
		return "redirect:noti_list";
	}
	
	/**** 공지사항 삭제 액션(Post) ****/
	@PostMapping("noti_delete_action")
	public String noti_delete_action_post(@RequestParam int noti_no) {
		noticeService.deleteNoti(noti_no);
		return "noti_list";
	}
	

}













