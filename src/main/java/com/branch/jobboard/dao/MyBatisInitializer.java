package com.branch.jobboard.dao;

import java.io.InputStream;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@WebListener
public class MyBatisInitializer implements ServletContextListener{
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext sc = sce.getServletContext();
		
		String configFile = sc.getInitParameter("mybatis_config_file");
		
		try (InputStream is = Resources.getResourceAsStream(configFile)){
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
            sc.setAttribute("sqlSessionFactory", factory);
            log.info("SqlSessionFactory 생성 성공 : {}", configFile);
        } catch (Exception e) {
            log.error("Mybatis SqlSessionFactory 초기화 실패!", e);
        }
		
	}
}
