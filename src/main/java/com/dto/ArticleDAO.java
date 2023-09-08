package com.dto;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import com.mybatis.SqlMapConfig;

public class ArticleDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;

	public ArticleDAO() {
		sqlSession = factory.openSession(true);
	}
	
	public List<ArticleDTO> getArticleList(int startRow, int endRow) {
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		
		List<ArticleDTO> list = 
				sqlSession.selectList("Article.getArticleList", datas);
		return list;
	}
	
	public int getArticleCnt() {
		return sqlSession.selectOne("Article.getArticleCnt");
	}

}
