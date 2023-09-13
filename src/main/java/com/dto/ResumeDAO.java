package com.dto;

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
		if (sqlSession.insert("Resume.write", rdto) > 0) {
			// 성공시
			return true;
		}
		return false;
	}

}
