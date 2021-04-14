package com.spring_mvc.project;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BookController {
	@RequestMapping("bookInfoView1")
	public String showBookInfo1(Model model){
		model.addAttribute("title", "스프링 프레임워크");
		model.addAttribute("price", 20000);
		model.addAttribute("author", "홍길동");
		
		return "book/bookInfoView"; // bookInfoView.jsp
	}
	
	@RequestMapping("bookInfoView2")
	public ModelAndView showBookInfo2(ModelAndView mv) {
		mv.addObject("title", "자바");
		mv.addObject("price", 30000);
		mv.addObject("author", "이몽룡");
		
		mv.setViewName("book/bookInfoView");

		return mv;
	}
	
	// 다중 맵핑
	@RequestMapping(value= {"/book/bookInfoView3", "/book/bookInfoView4"})
	public String showBookInfo34(HttpServletRequest request, Model model) {
		if(request.getServletPath().equals("/book/bookInfoView3")) {
			model.addAttribute("title", "스프링 프레임워크");
			model.addAttribute("price", 20000);
			model.addAttribute("author", "홍길동");
			
		} else if(request.getServletPath().equals("/book/bookInfoView4")) {
			model.addAttribute("title", "자바");
			model.addAttribute("price", 30000);
			model.addAttribute("author", "이몽룡");
		}
		
		return "book/bookInfoView";
	}
	
}