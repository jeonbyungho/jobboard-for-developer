package com.web.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.ArticleDTO;
import com.dto.BranchDAO;

public class ArticleSelectAction extends ExcuteAction {
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		BranchDAO bdao = new BranchDAO();
		ArticleDTO adto = new ArticleDTO();
		
		int id = Integer.parseInt(req.getParameter("id"));
		
		req.setAttribute("id", bdao.article_select(id));
		setRedirect(false);
		setPath("/");
		
		return super.excute(req, resp);
	}
}
