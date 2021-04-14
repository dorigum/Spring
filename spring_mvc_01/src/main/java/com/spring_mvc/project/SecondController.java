package com.spring_mvc.project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SecondController {
	@RequestMapping("/secondView")
	public String secondView() {
		return "second/secondView";	// secondView.jsp 위치/이름 반환
	}
}
