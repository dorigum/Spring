package com.di.spring_xml_value_setter;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class BookMain {

	public static void main(String[] args) {
		AbstractApplicationContext context = new GenericXmlApplicationContext("application-context7.xml");

		Book book = context.getBean("book", Book.class);
		System.out.println(book);
		context.close();

	}

}
