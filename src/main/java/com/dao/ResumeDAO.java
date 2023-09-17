package com.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.dto.ResumeDTO;

public class ResumeDAO extends DAO implements BoardDAO<HashMap<String, String>>{
	
	// 이력서 작성
	public boolean save(ResumeDTO rdto) {
		try {
			sqlSession.insert("Resume.write", rdto);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	// 가장 최근에 작성된 이력서의 id 값
	public int currval() {
		return sqlSession.selectOne("Resume.currval");
	}
	
	// 이력서 제출
	public boolean send(Map<String, Integer> map) {
		return (sqlSession.insert("Resume.send", map) > 0);
	}

	@Override
	public List<HashMap<String, String>> getList(Map<String, ?> parameter) {
		return sqlSession.selectList("Resume.list", parameter);
	}

	@Override
	public int totalCount(Map<String, ?> parameter) {
		return sqlSession.selectOne("Resume.totalCount", parameter);
	}
	
	// 이력서 조회
	public Map<String, Object> view(int id){
		return sqlSession.selectOne("Resume.view", id);
	}
	
	public List<Map<String, Object>> view_school(int id){
		return sqlSession.selectList("Resume.view_school", id);
	}
	
	public List<Map<String, Object>> view_reg(int id){
		return sqlSession.selectList("Resume.view_reg", id);
	}
	
	public List<Map<String, Object>> view_liecence(int id){
		return sqlSession.selectList("Resume.view_liecence", id);
	}

}
