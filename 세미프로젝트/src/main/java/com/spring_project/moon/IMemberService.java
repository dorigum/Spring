package com.spring_project.moon;

public interface IMemberService {
	MemberVO loginCheck(String id, String pwd);
	MemberVO idCheck(String id);
}
