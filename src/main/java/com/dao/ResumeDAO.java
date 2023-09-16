package com.dao;

import java.util.List;
import java.util.Map;

import com.dto.ResumeDTO;

public class ResumeDAO extends DAO{
	
	public boolean save(ResumeDTO rdto) {
		try {
			sqlSession.insert("Resume.write", rdto);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean send(Map<String, Integer> map) {
		return (sqlSession.insert("Resume.send", map) > 0);
	}
	
	public List<Map<String, String>> list(Map<String, Integer> map){
		return sqlSession.selectList("Resume.list", map);
	}
}
