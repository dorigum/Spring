package com.spring_di_annotation_component;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

// NameController 클래스를 빈으로 등록
// 생성된 빈 이름은 nameController
@Component
public class NameController {
	@Autowired
	INameService nameService;
	
	public void show(String name) {
		System.out.println("NameController : " + nameService.showName(name));
	}
}
