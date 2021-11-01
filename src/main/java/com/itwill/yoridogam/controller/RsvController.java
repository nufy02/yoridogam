package com.itwill.yoridogam.controller;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.swing.text.html.HTMLEditorKit.InsertHTMLTextAction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.itwill.yoridogam.controller.interceptor.LoginCheck;
import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.member.MemberService;
import com.itwill.yoridogam.product.Product;
import com.itwill.yoridogam.product.ProductService;
import com.itwill.yoridogam.productTime.ProductTime;
import com.itwill.yoridogam.productTime.ProductTimeDao;
import com.itwill.yoridogam.productTime.ProductTimeService;
import com.itwill.yoridogam.reservation.Reservation;
import com.itwill.yoridogam.reservation.ReservationService;
import com.itwill.yoridogam.teacher.TeacherService;

@SessionAttributes("reservation")

/*
 메소드 실행하면 생성
 
 */
@Controller
public class RsvController {
	@Autowired
	private ReservationService reservationService;
	@Autowired
	private ProductTimeService productTimeService;
	@Autowired
	private MemberService memberService;
	@Autowired
	private ProductService productService;
	@Autowired
	private TeacherService teacherService;
	
	@ModelAttribute("reservation")
	public Reservation setUpRsv() {
		return new Reservation();
		// session,setAttribute("order",order); 를 해주는 메소드
	}
	
	// 강의 결제 form
	@LoginCheck
	@RequestMapping("rsv_form")
	public String rsv_form(//@RequestParam int p_no,
							//@RequestParam String t_id,
							HttpSession session,
							Model model) throws Exception {
		//String sUserId=(String)session.getAttribute("sUserId");
		String sUserId="member1";
		int p_no =4;
		String t_id = "teacher1";
		model.addAttribute("sUserId", memberService.findMember(sUserId));
		model.addAttribute("teacher", teacherService.findMember(t_id));
		model.addAttribute("product",productService.selectByNo(p_no));
		model.addAttribute("pTList", productTimeService.selectAll(p_no));
		session.setAttribute("reservation",new Reservation());
		
		return "rsv_form";
	} 

	// 결제 action
	@LoginCheck
	@PostMapping("rsv_action")
	public String rsv_action(@ModelAttribute("reservation") Reservation reservation,int p_no,HttpSession session,Model model) throws Exception {
		String sUserId=(String)session.getAttribute("sUserId");
		reservation.setProduct(new Product(p_no, null, null, null, null, null, null, null));
		Member member = memberService.findMember(sUserId);
		reservation.setMember(member);
		model.addAttribute("product", productService.selectByNo(reservation.getProduct().getP_no()));
		reservationService.insert(reservation,sUserId);
		return "rsv_success";
	}
	
	
	// 오프라인 결제 성공화면(영수증) --> 확인 누르면 메인으로
	@LoginCheck
	@RequestMapping("rsv_success")
	public String rsv_success(@ModelAttribute("reservation") Reservation reservation,
								Model model,
								SessionStatus sessionStatus) throws Exception {
		model.addAttribute("product", productService.selectByNo(reservation.getProduct().getP_no()));
		Date paydate = reservationService.selectRsv_no(reservation.getRsv_no()).getRsv_payDate();
		reservation.setRsv_payDate(paydate);
		model.addAttribute("reservation", reservation);
		sessionStatus.setComplete();
		return "rsv_success";
	}
	
	
	// 오프라인 결제 취소
	@LoginCheck
	@RequestMapping("rsv_no_delete")
	public String rsv_no_delete(@RequestParam(value = "rsv_no")int rsv_no) throws Exception {
		reservationService.deletByRsv(rsv_no);
		return "member_detail";
	}
	
	//회원 예약 상품 보여주기
	@LoginCheck
	@RequestMapping("rsv_member_list")
	public String m_rsv_list(HttpSession session, Model model) throws Exception {
		//String sUserId=(String)session.getAttribute("sUserId");
		String sUserId="member1";
		model.addAttribute("member_rsv",reservationService.selectAll(sUserId));
		return "rsv_member_list";
	}
	
	/*******************************************[  AJAX  ]*******************************************/
	
	// 웹에서 rsv_date 선택할때 실행하는 controller
	@RequestMapping(value = "rsv_date_ajax",produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String rsv_date_ajax(@RequestParam String rsv_date,@RequestParam int p_no) throws Exception{
		System.out.println(rsv_date + "선택된 날짜!");
		System.out.println(p_no + "선택된 날짜!");
		List<ProductTime> pt = productTimeService.selectPtTime(rsv_date, p_no);
		System.out.println(pt);
		// 화면에서 데이터 받아서 넘어오는것 까지 확인! 시간들 찾는것 까지 확인!
		
		String result = "true";
		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
}
