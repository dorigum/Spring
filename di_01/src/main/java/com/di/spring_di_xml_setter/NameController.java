package com.di.spring_di_xml_setter;

public class NameController {
	NameService nameService;

	// 생성자 없고
	// Setter 메소드를 통해 외부에서 주입받음
	public void setNameService(NameService nameService) {
		this.nameService = nameService;
	}
	
	public void show(String name) {
		System.out.println("NameController : " + nameService.showName(name));
	}
}
