package com.mybatis.mapper;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mybatis.SqlMapConfig;

public class testSQL {
	public static void main(String[] args) {
		SqlMapConfig sql = new SqlMapConfig();
		
		SqlSessionFactory factory = SqlMapConfig.getFactory();
		
		SqlSession session = factory.openSession(true);
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("USERID", "admin");
		map.put("PASSWORD", "t1234");
		map.put("NAME", "길동이");
		map.put("GENDER", "male");
		map.put("BIRTHDAY", "1980-07-07");
		map.put("PHONE", "01045879686");
		map.put("EMAIL", "me@ex.com");
		map.put("ADDRESS", "강남");
		map.put("DETAIL_ADDR", "무슨 아파트");
		
//		session.insert("Member.memberJoin", map);
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		mapper.memberJoin(map);
		System.out.println("띁");
		
		String a = mapper.searchMemberName(42);
		System.out.println(a);
		
	}
}
