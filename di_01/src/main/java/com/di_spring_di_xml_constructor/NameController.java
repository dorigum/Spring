package com.di_spring_di_xml_constructor;

// new를 통해 직접 생성하지 않고
// 생성자를 통해 외부에서 전달 (주입 : inject)
public class NameController {
	NameService nameService;
	
	// 생성자를 통해서 NameService 객체를 전달 받음
	// 의미 : 생성자를 통해 외부에서 주입 받음(injection)
	public NameController(NameService nameService) {
		this.nameService = nameService;
	}
	
	public void show(String name) {
		System.out.println("NameController : " + nameService.showName(name));
	}
}
