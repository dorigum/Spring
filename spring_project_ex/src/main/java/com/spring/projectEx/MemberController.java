package com.spring.projectEx;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {
	@Autowired
	MemberService service;
	
	// 로그인 폼으로 이동
	@RequestMapping("loginForm")
	public String loginForm() {
		return "jsp/loginForm";
	}
	
	// 로그인 : id와 pwd를 전달 받아서 로그인 체크
	@RequestMapping("/login")
	public String loginCheck(@RequestParam("id") String id,
							 @RequestParam("pwd") String pwd,
							 HttpSession session) {
		// id, pwd -> service -> dao.mapper
		MemberVO vo = service.loginCheck(id, pwd);
		
		// 결과 받아서 세션 변수로 저장
		if(vo != null) {
			session.setAttribute("sid", vo.getId());
		}
		
		return "redirect:/"; // index 페이지로 포워딩
	}
	
	// 로그아웃
	@RequestMapping("/logout")
	public String userLogout(HttpSession session) {
		// 로그아웃
		session.invalidate();
		return "redirect:/";
	}
	
	// 회원 가입 폼으로 이동
	@RequestMapping("joinForm")
	public String joinForm() {
		return "jsp/joinForm";
	}
	
	// id 중복 체크
	@ResponseBody
	@RequestMapping("idCheck")
	public int idCheck(@RequestParam("id")String id) {
		MemberVO vo = service.idCheck(id);
		
		int result = 0;
		if(vo != null) result = 1; // 아이디가 존재하면 1
		
		return result;
		
		
		// int 반환 : 일치하는 id 개수 반환
		//@ResponseBody
		//@RequestMapping("idCheck")
		//public int idCheck(@RequestParam("id") String id){
		//
		
	}
}
