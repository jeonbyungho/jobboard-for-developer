package com.dto;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mybatis.SqlMapConfig;

public class BranchDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public BranchDAO() {
		sqlSession = (factory).openSession(true);
	}

	public boolean article_insert(ArticleDTO adto) {
		try {
			sqlSession.insert("Branch.article-insert", adto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public Object article_select(int id) {
		return sqlSession.selectOne("Branch.article-select", id);
	}
	
	public int article_idmax() {
		return sqlSession.selectOne("Branch.article-idmax");
	}

	public List<String> job_select(int id) {
		return sqlSession.selectList("Branch.job-select", id);
	}
	
	public List<String> stack_select(int id) {
		return sqlSession.selectList("Branch.stack-select", id);
	}
	
	public List<String> address_select(int id) {
		return sqlSession.selectList("Branch.address-select", id);
	}
}
