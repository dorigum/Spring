package com.di_spring_di_xml_constructor;

public class NameService {
	public String showName(String name) {
		System.out.println("NameService showName() 메소드");
		String myName = "내 이름은 " + name + "입니다.";
		return myName;
	}
}
