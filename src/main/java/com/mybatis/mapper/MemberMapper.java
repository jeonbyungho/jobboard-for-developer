package com.mybatis.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface MemberMapper {
	@Insert("INSERT INTO MEMBER(ID, USERID , PASSWORD , NAME , GENDER , BIRTHDAY , PHONE , EMAIL , ADDRESS , DETAIL_ADDR)"
			+"VALUES (\r\n"
			+ "		member_seq.NEXTVAL"
			+ ",	#{userid}"
			+ ",	#{password}"
			+ ",	#{name}"
			+ ",	#{gender}"
			+ ",	#{birthday}"
			+ ",	#{phone}"
			+ ",	#{email}"
			+ ",	#{address}"
			+ ",	#{detail_addr})")
	int memberJoin(Map<String, String> map);
	
//	@Select("SELECT * FROM MEMBER m WHERE m.USERID = #{userid} AND m.PASSWORD = #{password}")
//	String searchMemberName(String userid, String password);
}
