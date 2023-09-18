package com.web.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.ArticleDAO;

public class ArticlesearchAction extends ExcuteAction{
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ArticleDAO adao = new ArticleDAO();
		String job = req.getParameter("job");
		String career = req.getParameter("career");
		String strjob=null;
		String strcareer=null;
		
		if (job.equals("backend")) {
			strjob="백엔드";
		}
		if (job.equals("frontend")) {
			strjob="프론트엔드";
		}
		if (job.equals("fullstack")) {
			strjob="풀스택";
		}
		if (career.equals("newbie")) {
			strcareer="신입2";
		}
		if (career.equals("senior")) {
			strcareer="경력";
		}
		if (career.equals("intern")) {
			strcareer="인턴";
		}


		req.setAttribute("articleList", adao.article_search(strjob, strcareer));
		setRedirect(false);		
		setPath("../resource/page/article/article-list.jsp");
		return super.excute(req, resp);
	
	}
}
	
	
	
