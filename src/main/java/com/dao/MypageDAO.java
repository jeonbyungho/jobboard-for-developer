package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mybatis.SqlMapConfig;

public class MypageDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;

	public MypageDAO() {
		sqlSession = factory.openSession(true);
	}
	
	public List<Map<String, String>> submitResumeList(int id) {
		return sqlSession.selectList("Mypage.submit_resume_list", id);
	}
	
	public List<Map<String, String>> receiveResumeList(int id) {
		return sqlSession.selectList("Mypage.receive_resume_list", id);
	}
}
