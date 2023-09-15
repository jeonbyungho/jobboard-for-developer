package com.dto;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mybatis.SqlMapConfig;

public class CompanyDAO implements UserDAO<CompanyDTO>{
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession = null;
	
	public CompanyDAO() {
		sqlSession = factory.openSession(true);
	}
	
	@Override
	public CompanyDTO login(String company_no, String password) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("company_no", company_no);
		map.put("password", password);
		CompanyDTO company = sqlSession.selectOne("Company.login", map);
		return company;
	}
	
	@Override
	public boolean sigup(Map<String, String> map) {
		int result = sqlSession.insert("Company.sigup", map);
		return result > 0 ? true : false;
	}
	
	
	public Map<String, String> byId(int id){
		return sqlSession.selectOne("Company.byId", id);
	}
	
}
