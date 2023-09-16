package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dto.ResumeDTO;
import com.mybatis.SqlMapConfig;

public class ResumeDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;

	public ResumeDAO() {
		sqlSession = factory.openSession(true);
	}

	public boolean insertresume(ResumeDTO rdto) {
		boolean result = false;

		return result;
	}

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
