package com.spring_project.moon;

import java.util.HashMap;

public interface IMemberDAO {
	MemberVO loginCheck(HashMap<String, Object> map);
	MemberVO idCheck(String id);
}
