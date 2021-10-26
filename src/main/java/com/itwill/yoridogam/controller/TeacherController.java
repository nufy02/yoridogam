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
import com.itwill.yoridogam.teacher.Teacher;
import com.itwill.yoridogam.teacher.TeacherService;

/*
 <<teacher관련 페이지>>
/total_login_form
/teacher_login_action
/teacher_write_form
/teacher_write_action
/teacher_id_dupllicate_form
/teacher_logout_action
/teacher_detail 
/teacher_modify_form
/teacher_modify_action
/teacher_remove_action
 */
@Controller
public class TeacherController {
	
	@Autowired
	private TeacherService teacherService;
	
	/*
	 * 로그인 폼
	 */
	
	@RequestMapping(value = "/total_login_form")
	public String teacher_login_form() {
		return "total_login_form" ;
	}
	/*
	 * 로그인 액션
	 * 1) get으로 받을시 home으로 redirect
	 * 2) post방식일시 login 실행
	 */
	
	@GetMapping(value = "/teacher_login_action")
	public String teacher_login_action_get() {
		return "redirect:home";
	}
	
	@PostMapping(value = "/teacher_login_action")
	public String teacher_login_action_post(@ModelAttribute Teacher teacher,Model model,HttpSession session) throws Exception{
		String forwardPath="";
		int result = teacherService.login(teacher.getT_id(), teacher.getT_pass());
		
		if (result==0) {
			//아이디 불일치
			model.addAttribute("msg1", teacher.getT_id()+" 은 존재하지 않는 아이디입니다.");
			model.addAttribute("nteacher", teacher);
			forwardPath="total_login_form";
		}else if(result==1) {
			//비밀번호 불일치
			model.addAttribute("msg2", "패스워드가 일치하지 않습니다.");
			model.addAttribute("nteacher", teacher);
			forwardPath="total_login_form";
		}else if(result==2) {
			session.setAttribute("sUserId", teacher.getT_id());
			forwardPath="redirect:home";
		}
		return forwardPath ;
	}
	/*
	 * 회원가입
	 */
	@RequestMapping(value = "/teacher_write_form")
	public String teacher_write_form() {
		return "teacher_write_form";
	}
	
	@GetMapping(value = "/teacher_write_action")
	public String teacher_write_action_get() {
		return "redirect:teacher_write_form";
	}
	
	@PostMapping(value = "/teacher_write_action")
	public String teacher_write_action_post(@ModelAttribute Teacher teacher,Model model) throws Exception{
		String forwardPath="";
		int result = teacherService.create(teacher);
		if (result == 1) {
			forwardPath = "redirect:teacher_login_form";
		}else {
			model.addAttribute("nteacher", teacher);
			model.addAttribute("msg", teacher.getT_id()+ "는 존재하는 아이디입니다.");
			forwardPath="teacher_write_form";
		}
		return forwardPath;
	}
	/*
	 * 중복검사
	 */
	@RequestMapping(value ="/teacher_id_dupllicate_form")
	public String teacher_id_duplicate_form() {
		return "teacher_duplicate_form" ;
	}
	/*
	 * 로그아웃
	 */
	
	@LoginCheck
	@RequestMapping(value = "/teacher_logout_action")
	public String teacher_logout_action(HttpSession session) {
		session.invalidate();
		return "redirect:home";
	}
	/*
	 * 회원정보수정
	 */
	@LoginCheck
	@PostMapping(value = "/teacher_modify_action")
	public String teacher_modify_action_post(@ModelAttribute Teacher teacher,HttpSession session) throws Exception {
		String forwardPath="";
		String loginUserId=(String)session.getAttribute("sUserId");
		teacher.setT_id(loginUserId);
		forwardPath="redirect:teacher_detail";
		return forwardPath;
	}
	
	@LoginCheck
	@GetMapping(value = "/teacher_modify_action")
	public String teacher_modify_action_get() {
		return "redirect:teacher_detail";
	}
	
	/*
	 * 회원상세
	 */
	@LoginCheck
	@RequestMapping(value = "/teacher_detail")
	public String teacher_detail(HttpSession session,HttpServletRequest request ) throws Exception {
		String loginUserId =(String)session.getAttribute("sUserId");
		// 회원정보
		Teacher loginUser = teacherService.findMember(loginUserId);
		request.setAttribute("loginUser", loginUser);
		return"";
	}
	
	/*
	 * 회원탈퇴
	 */
	
	@PostMapping(value = "teacher_remove_action")
	public String teacher_remove_action_post(HttpServletRequest request) throws Exception{
		String forwardPath="";
		String loginUser=(String)request.getSession().getAttribute("sUserId");
		teacherService.remove(loginUser);
		forwardPath="redirect:teacher_logout_action";
		return forwardPath;
	}
	@LoginCheck
	@GetMapping(value = "teacher_remove_action")
	public String teacher_remove_action_get() {
		return "redirect:home";
	}
}
