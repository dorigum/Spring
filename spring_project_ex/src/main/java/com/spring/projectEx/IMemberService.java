package com.spring.projectEx;

public interface IMemberService {
	MemberVO loginCheck(String id, String pwd);
	MemberVO idCheck(String id);
}
