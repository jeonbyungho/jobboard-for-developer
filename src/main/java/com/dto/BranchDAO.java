package com.dto;

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
		boolean result = false;
		
		if(sqlSession.insert("Branch.article-insert", adto) >= 1) {
			result = true;
		}
		
		return result;
	}
	
	public boolean company_insert(CompanyDTO cdto) {
		boolean result = false;
		
		if(sqlSession.insert("Branch.company-insert", cdto) == 1) {
			result = true;
		}
		return result;
	}

	public Object article_select(int id) {
		return sqlSession.selectOne("Branch.article-select", id);
	}
	
	public int article_idmax() {
		return sqlSession.selectOne("Branch.article-idmax");
	}
	
	
}
