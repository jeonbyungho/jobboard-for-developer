package com.dao;

import java.util.List;

import com.dto.ArticleDTO;

public class BranchDAO extends DAO{

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
