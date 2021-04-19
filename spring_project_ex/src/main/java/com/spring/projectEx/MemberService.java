package com.spring.projectEx;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class MemberService implements IMemberService {
	@Autowired
	@Qualifier("IMemberDAO")
	IMemberDAO dao;
	
	@Override
	public MemberVO loginCheck(String id, String pwd) {
		// Mapper에게 값을 2개 이상 전달할 때 HashMap 사용
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("pwd", pwd);
		
		return dao.loginCheck(map);
	}
	
	@Override
	public MemberVO idCheck(String id) {
		return dao.idCheck(id);
	}

}
