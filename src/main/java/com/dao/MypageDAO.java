package com.dao;

import java.util.List;
import java.util.Map;

public class MypageDAO extends DAO{
	
	public List<Map<String, String>> submitResumeList(int id) {
		return sqlSession.selectList("Mypage.submit_resume_list", id);
	}
	
	public List<Map<String, String>> receiveResumeList(int id) {
		return sqlSession.selectList("Mypage.receive_resume_list", id);
	}
	
	public boolean consentResume(int id) {
		return sqlSession.update("Mypage.consent_resume", id) > 0;
	}
}
