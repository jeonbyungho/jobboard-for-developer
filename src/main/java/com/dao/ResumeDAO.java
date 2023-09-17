package com.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.dto.ResumeDTO;

public class ResumeDAO extends DAO implements BoardDAO<HashMap<String, String>>{
	
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

	@Override
	public List<HashMap<String, String>> getList(Map<String, ?> parameter) {
		return sqlSession.selectList("Resume.list", parameter);
	}

	@Override
	public int totalCount(Map<String, ?> parameter) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Resume.totalCount", parameter);
	}

}
