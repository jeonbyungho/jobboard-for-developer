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
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<?> list = getList(req, adao, map, 1);
		System.out.println(list.size());
		
		req.setAttribute("articleList", list);
		return super.excute(req, resp);
	}
}
