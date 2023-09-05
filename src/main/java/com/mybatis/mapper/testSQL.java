package com.mybatis.mapper;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mybatis.SqlMapConfig;

public class testSQL {
	public static void main(String[] args) {
		
		SqlSessionFactory factory = SqlMapConfig.getFactory();
		
		SqlSession session = factory.openSession(true);
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("userid", "userOP");
		map.put("password", "a1234");
		map.put("name", "나중이");
		map.put("gender", "female");
		map.put("birthday", "1999-07-22");
		map.put("phone", "01087851571");
		map.put("email", "you@ex.com");
		map.put("address", "경기도");
		map.put("detail_addr", "어디 아파트");
		
//		session.insert("Member.memberJoin", map);
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		mapper.memberJoin(map);
		System.out.println("띁");
		
//		String a = mapper.searchMemberName(42);
//		System.out.println(a);
		
	}
}
