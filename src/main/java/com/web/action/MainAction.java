package com.web.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ArticleDAO;

public class MainAction extends BoardPageingAction{
	
	public MainAction() {
		setPath("./resource/index.jsp");
	}

	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		System.out.println("메인 페이지 실행!");
		ArticleDAO adao = new ArticleDAO();
		
		List<Map<String, Object>> list = adao.getArticleList(1, 12);
		
		req.setAttribute("articleList", list);
		return super.excute(req, resp);
	}
}
