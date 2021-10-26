package com.itwill.yoridogam.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.yoridogam.controller.interceptor.LoginCheck;
import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.member.MemberService;
import com.itwill.yoridogam.memberInterest.MemberInterest;

/*
 <<Member관련 페이지>>
/member_login_form
/member_login_action
/member_write_form
/member_write_action
/member_id_dupllicate_form
/member_logout_action
/member_detail 
/member_modify_form
/member_modify_action
/member_remove_action
 */
@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	/*
	 * 로그인 폼
	 */
	
	@RequestMapping(value = "/total_login_form")
	public String member_login_form() {
		return "total_login_form" ;
	}
	/*
	 * 로그인 액션
	 * 1) get으로 받을시 home으로 redirect
	 * 2) post방식일시 login 실행
	 */
	
	@GetMapping(value = "/member_login_action")
	public String member_login_action_get() {
		return "redirect:home";
	}
	
	@PostMapping(value = "/member_login_action")
	public String member_login_action_post(@ModelAttribute Member member,Model model,HttpSession session) throws Exception{
		String forwardPath="";
		int result = memberService.login(member.getM_id(), member.getM_pass());
		
		if (result==0) {
			//아이디 불일치
			model.addAttribute("msg1", member.getM_id()+" 은 존재하지 않는 아이디입니다.");
			model.addAttribute("nmember", member);
			forwardPath="total_login_form";
		}else if(result==1) {
			//비밀번호 불일치
			model.addAttribute("msg2", "패스워드가 일치하지 않습니다.");
			model.addAttribute("nmember", member);
			forwardPath="total_login_form";
		}else if(result==2) {
			session.setAttribute("sUserId", member.getM_id());
			forwardPath="redirect:home";
		}
		return forwardPath ;
	}
	/*
	 * 회원가입
	 */
	@RequestMapping(value = "/member_write_form")
	public String member_write_form() {
		return "member_write_form";
	}
	
	@GetMapping(value = "/member_write_action")
	public String member_write_action_get() {
		return "redirect:member_write_form";
	}
	
	@PostMapping(value = "/member_write_action")
	public String member_write_action_post(@ModelAttribute Member member,@ModelAttribute MemberInterest memberInterest,Model model) throws Exception{
		String forwardPath="";
		int result = memberService.create(member, memberInterest);
		if (result == 1) {
			forwardPath = "redirect:member_login_form";
		}else {
			model.addAttribute("nmember", member);
			model.addAttribute("msg", member.getM_id()+ "는 존재하는 아이디입니다.");
			forwardPath="member_write_form";
		}
		return forwardPath;
	}
	/*
	 * 중복검사
	 */
	@RequestMapping(value ="/member_id_dupllicate_form")
	public String member_id_duplicate_form() {
		return "member_duplicate_form" ;
	}
	/*
	 * 로그아웃
	 */
	
	@LoginCheck
	@RequestMapping(value = "/member_logout_action")
	public String member_logout_action(HttpSession session) {
		session.invalidate();
		return "redirect:home";
	}
	/*
	 * 회원정보수정
	 */
	@LoginCheck
	@PostMapping(value = "/member_modify_action")
	public String member_modify_action_post(@ModelAttribute Member member,@ModelAttribute MemberInterest memberInterest,HttpSession session) throws Exception {
		String forwardPath="";
		String loginUserId=(String)session.getAttribute("sUserId");
		member.setM_id(loginUserId);
		memberService.update(member, memberInterest);
		forwardPath="redirect:member_detail";
		return forwardPath;
	}
	
	@LoginCheck
	@GetMapping(value = "/member_modify_action")
	public String member_modify_action_get() {
		return "redirect:member_detail";
	}
	
	/*
	 * 회원상세
	 */
	@LoginCheck
	@RequestMapping(value = "/member_detail")
	public String member_detail(HttpSession session,HttpServletRequest request ) throws Exception {
		String loginUserId =(String)session.getAttribute("sUserId");
		// 회원정보
		Member loginUser = memberService.findMember(loginUserId);
		// 회원관심분야
		memberService.getMemberInterestList(loginUserId);
		request.setAttribute("loginUser", loginUser);
		return"";
	}
	
	/*
	 * 회원탈퇴
	 */
	
	@PostMapping(value = "member_remove_action")
	public String member_remove_action_post(HttpServletRequest request) throws Exception{
		String forwardPath="";
		String loginUser=(String)request.getSession().getAttribute("sUserId");
		memberService.remove(loginUser);
		forwardPath="redirect:member_logout_action";
		return forwardPath;
	}
	@LoginCheck
	@GetMapping(value = "member_remove_action")
	public String member_remove_action_get() {
		return "redirect:home";
	}
}
