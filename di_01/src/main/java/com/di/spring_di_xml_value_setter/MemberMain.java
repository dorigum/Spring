package com.di.spring_di_xml_value_setter;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class MemberMain {

	public static void main(String[] args) {
		AbstractApplicationContext context = new GenericXmlApplicationContext("application-context9.xml");

		Member member = context.getBean("member", Member.class);
		System.out.println(member);
		member.showBMI();
		
		
		// 싱글톤인지 확인
		// member 빈으로 생성한 member 객체와 member2 객체가 동일한지 확인
		Member member2 = context.getBean("member", Member.class);
		
		// 같은 객체인지 출력
		System.out.println(member == member2);
		
		context.close();
	}

}
