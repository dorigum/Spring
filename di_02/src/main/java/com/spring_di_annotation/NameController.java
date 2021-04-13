package com.spring_di_annotation;

import javax.annotation.Resource;

public class NameController {
	//@Autowired
	//@Qualifier("anotherNameService")
	@Resource(name = "anotherNameService")
	INameService nameService;

	// 생성자 없고
	// Setter 메소드를 통해 외부에서 주입받음
	// 의존하는 다른 빈을 자동으로 주입
	public void setNameService(INameService nameService) {
		this.nameService = nameService;
	}
	
	public void show(String name) {
		System.out.println("NameController : " + nameService.showName(name));
	}
}
