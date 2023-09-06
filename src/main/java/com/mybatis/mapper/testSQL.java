package com.mybatis.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dto.MemberDTO;
import com.mybatis.SqlMapConfig;

public class testSQL {
	public static void main(String[] args) {
		
		SqlSessionFactory factory = SqlMapConfig.getFactory();
		
		SqlSession session = factory.openSession(true);
		
//		HashMap<String, String> nmap = new HashMap<String, String>();
//		nmap.put("userid", "newbi");
//		nmap.put("password", "qwe123");
//		nmap.put("name", "새로이");
//		nmap.put("gender", "female");
//		nmap.put("birthday", "2000-01-27");
//		nmap.put("phone", "01078846966");
//		nmap.put("email", "now@on.kr");
//		nmap.put("address", "강원도");
//		nmap.put("detail_addr", "어디로 빌라");
//		session.insert("Member.memberJoin", map);
		MemberMapper mapper = session.getMapper(MemberMapper.class);
//		mapper.join(nmap);
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("userid", "admin");
		map.put("password", "admin1234");
		MemberDTO a = mapper.login(map);
		System.out.println(a.toString());
		
		List<MemberDTO> all = mapper.allMembers();
		
		for(MemberDTO m:all) {
			System.out.println("┌─ID : " + m.getId());
			System.out.println("├─유저 아이디 : " + m.getUserid());
			System.out.println("├─이름 : " + m.getName());
			System.out.println("└─이메일 : " + m.getEmail());	
		}
		
		session.close();
	}
}
