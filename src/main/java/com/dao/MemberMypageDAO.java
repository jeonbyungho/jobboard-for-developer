package com.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MemberMypageDAO extends DAO implements BoardDAO<HashMap<String, String>>{
	
	public boolean consentResume(int id) {
		return sqlSession.update("Mypage.consent_resume", id) > 0;
	}
	
	@Override
	public List<HashMap<String, String>> getList(Map<String, ?> parameter) {
		return sqlSession.selectList("Mypage.submit_resumeList", parameter);
	}

	@Override
	public int totalCount(Map<String, ?> parameter) {
		return sqlSession.selectOne("Mypage.submit_resumeCount", parameter);
	}
}
