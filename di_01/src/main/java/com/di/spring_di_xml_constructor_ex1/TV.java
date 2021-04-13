package com.di.spring_di_xml_constructor_ex1;

public class TV {
	Speaker speaker;
	
	// 생성자를 통해서 외부에서 주입받음
	public TV(Speaker speaker) {
		this.speaker = speaker;
	}
	
	public void volumeUp() {
		speaker.volumeUp();
	}
	
	public void volumeDown() {
		speaker.volumeDown();
	}
}
