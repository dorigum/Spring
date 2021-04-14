package com.spring_mvc.project;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class StudentController {
	// 처음 실행 시 index 페이지 출력되도록 설정
	@RequestMapping("/")
	public String indexView() {
		return "index"; // index.jsp
	}
	
	// index 페이지에서 studentForm 페이지 요청 (입력폼 보여달라고 요청)
	@RequestMapping("/student/studentForm")
	public String studentFormView() {
		return "student/studentForm"; // studentForm.jsp
	}
	
	// 폼에서 입력한 값을 컨트롤러에게 전송
	// (1) HttpServletRequest 클래스의 getParameter() 메소드 사용
	@RequestMapping("/student/newStudent")
	public String insertStudent(HttpServletRequest request, Model model) {
		String no = request.getParameter("no");
		String name = request.getParameter("name");
		String year = request.getParameter("year");
		
		model.addAttribute("no", no);
		model.addAttribute("name", name);
		model.addAttribute("year", year);
		
		return "student/studentResult"; // studentResult.jsp
	}
	
	// (2) @RequestParam 어노테이션 사용
	@RequestMapping("/student/newStudent2")
	public String insertStudent2(@RequestParam("no")String no,
								 @RequestParam("name")String name,
								 @RequestParam("year")String year,
								 Model model) {
		
		model.addAttribute("no", no);
		model.addAttribute("name", name);
		model.addAttribute("year", year);
		
		return "student/studentResult"; // studentResult.jsp		
	}
	
	// (3) Command 객체 사용
	// Command 객체는 자동으로 View Model에 등록
	@RequestMapping("/student/newStudent3")
	public String insertStudent3(Student student) {
		return "student/studentResult2"; // studentResult2.jsp
	}
	
	// @ModelAttribute 어노테이션 사용해서
	// Command 객체 이름 변경
	@RequestMapping("/student/newStudent4")
	public String insertStudent4(@ModelAttribute("stdInfo") Student student) {
		return "student/studentResult3"; // studentResult3.jsp
	}
}
