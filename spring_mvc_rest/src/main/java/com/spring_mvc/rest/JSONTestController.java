package com.spring_mvc.rest;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class JSONTestController {

	@RequestMapping("/JSONTest")
	public String JSONTest() {
		return "JSONTest"; // 뷰 페이지 이름 : JSONTest.jsp
		
	}
	
	@RequestMapping("/responseBody")
	@ResponseBody
	public Map<String, Object> response(){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", "hong");
		map.put("name", "홍길동");
		
		return map;
		
	}
	
}
