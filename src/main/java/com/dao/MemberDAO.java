package com.dao;

import java.util.HashMap;
import java.util.Map;

import com.dto.MemberDTO;

public class MemberDAO extends DAO implements UserDAO<MemberDTO>{
	
	@Override
	public MemberDTO login(String username, String password) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("userid", username);
		map.put("password", password);
		MemberDTO member = sqlSession.selectOne("Member.login", map);
		return member;
	}
	
	@Override
	public boolean sigup(Map<String, String> map) {
		int result = sqlSession.insert("Member.sigup", map);
		return result > 0 ? true : false;
	}
	
	@Override
	public boolean idCheck(String user_id) {
		int result = sqlSession.selectOne("Member.idCheck", user_id);
		return result > 0;
	}
}
