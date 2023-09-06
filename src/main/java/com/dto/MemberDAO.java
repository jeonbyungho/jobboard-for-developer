package com.dto;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mybatis.SqlMapConfig;

public class MemberDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession = null;
	
	public MemberDAO() {
		sqlSession = factory.openSession(true);
	}
	
	public MemberDTO login(String username, String password) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("userid", username);
		map.put("pasword", password);
		MemberDTO member = sqlSession.selectOne("Member.login", map);
		return member;
	}
}
