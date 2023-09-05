package com.mybatis.mapper;

import org.apache.ibatis.annotations.Select;

public interface MemberMapper {
	@Select("SELECT m.NAME FROM MEMBER m WHERE id = #{id}")
	String serchNameById(int id);
}
