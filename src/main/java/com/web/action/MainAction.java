package com.web.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.ArticleDAO;
import com.dto.ArticleDTO;

public class MainAction extends ExcuteAction{
	
	public MainAction() {
		setPath("./resource/index.jsp");
	}

	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		System.out.println("메인 페이지 실행!");
		
		return super.excute(req, resp);
	}
}
