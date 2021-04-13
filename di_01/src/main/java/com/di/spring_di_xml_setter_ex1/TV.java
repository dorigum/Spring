package com.di.spring_di_xml_setter_ex1;

public class TV {
	Speaker speaker;
	
	// Setter 메소드를 통해 외부에서 주입
	public void setSpeaker(Speaker speaker) {
		this.speaker = speaker;
	}

	public void volumeUp() {
		speaker.volumeUp();
	}
	
	public void volumeDown() {
		speaker.volumeDown();
	}
}
