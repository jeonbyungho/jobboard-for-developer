package com.dto;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mybatis.SqlMapConfig;

public class MemberDAO implements UserDAO<MemberDTO>{
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession = null;
	
	public MemberDAO() {
		sqlSession = factory.openSession(true);
	}
	
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
}
