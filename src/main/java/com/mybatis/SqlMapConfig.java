package com.mybatis;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.ibatis.io.Resources;

public class SqlMapConfig {
	
	private static SqlSessionFactory factory;
	
	static {
		try {
			String res = "./com/mybatis/config.xml";
			Reader reader = Resources.getResourceAsReader(res);
			factory = new SqlSessionFactoryBuilder().build(reader);
			System.out.println("Mybatis " + res + "빌드 성공");
		} catch (IOException e) {
			System.out.println("Mybatis 빌드 실패");
			e.printStackTrace();
		}
	}
	
	public SqlSessionFactory getFactory(){
		return factory;
	}
	
}
