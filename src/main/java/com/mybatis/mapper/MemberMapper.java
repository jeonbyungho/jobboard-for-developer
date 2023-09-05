package com.mybatis.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface MemberMapper {
	@Insert("INSERT INTO MEMBER(ID, USERID , PASSWORD , NAME , GENDER , BIRTHDAY , PHONE , EMAIL , ADDRESS , DETAIL_ADDR)"
			+"VALUES (\r\n"
			+ "		member_seq.NEXTVAL"
			+ ",	#{USERID}"
			+ ",	#{PASSWORD}"
			+ ",	#{NAME}"
			+ ",	#{GENDER}"
			+ ",	#{BIRTHDAY}"
			+ ",	#{PHONE}"
			+ ",	#{EMAIL}"
			+ ",	#{ADDRESS}"
			+ ",	#{DETAIL_ADDR})")
	int memberJoin(Map<String, String> map);
	
	@Select("Select NAME From MEMBER Where ID = #{ID}")
	String searchMemberName(int id);
}
