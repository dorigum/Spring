package com.di_spring_di_xml_constructor;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class NameMain {

	public static void main(String[] args) {
		// 스프링 컨테이너 객체 생성
		AbstractApplicationContext context = new GenericXmlApplicationContext("application-context.xml");
		
		// 스프링 컨테이너에서 컴포넌트(빈) 가져옴
		NameController controller = context.getBean("nameController", NameController.class);
		controller.show("홍길동");
		context.close();
	}

}

