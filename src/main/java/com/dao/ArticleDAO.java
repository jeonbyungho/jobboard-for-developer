package com.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ArticleDAO extends DAO implements BoardDAO<HashMap<String, String>>{
	
	public List<Map<String, Object>> getArticleList(int startRow, int endRow) {
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		
		List<Map<String, Object>> list = 
				sqlSession.selectList("Article.getArticleList", datas);
		return list;
	}
	
	public int getArticleCnt() {
		return sqlSession.selectOne("Article.getArticleCnt");
	}

	@Override
	public List<HashMap<String, String>> getList(Map<String, ?> parameter) {
		return sqlSession.selectList("Article.list", parameter);
	}

	@Override
	public int totalCount(Map<String, ?> parameter) {
		return sqlSession.selectOne("Article.totalCount", parameter);
	}

}
