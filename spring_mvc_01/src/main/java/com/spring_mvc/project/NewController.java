package com.spring_mvc.project;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NewController {
	// @RequestMapping 어노테이션을 사용해서 요청 경로 지정
	@RequestMapping("/newView")
	public String newView() {
		return "newView";	// 뷰 페이지 이름 반환 (newView.jsp)
	}
	
	@RequestMapping("/showInfo")
	public String showInfo(Model model) {
		model.addAttribute("name", "홍길동");
		model.addAttribute("age", "30");
		model.addAttribute("address", "서울시 강남구");
		model.addAttribute("phone", "010-1234-1234");
		return "showInfo";
	}
	
	// ModelAndView 클래스 객체 사용
	@RequestMapping("showInfo2")
	public ModelAndView showInfo2(ModelAndView mv) {
		// 데이터 설정
		mv.addObject("no", "2021001");
		mv.addObject("year", 4);
		mv.addObject("department", "국어과");
		
		// 뷰 페이지 설정
		mv.setViewName("showInfo2"); // showInfo2.jsp
		
		// ModelAndView 객체 반환
		return mv;
	}
	
	// Model과 ModelAndView 같이 사용
	@RequestMapping("showInfo3")
	public ModelAndView showInfo3(Model model,
								  ModelAndView mv) {
		
		mv.addObject("name", "성춘향");
		mv.addObject("age", 23);
		
		mv.setViewName("showInfo3");
		
		model.addAttribute("name", "이몽룡");
		model.addAttribute("address", "남원");
		model.addAttribute("age", 50);
		model.addAttribute("tel", "010-1234-1234");
		
		return mv;
	}
}
