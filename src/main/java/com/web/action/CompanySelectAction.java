package com.web.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.BranchDAO;
import com.dto.CompanyDTO;

public class CompanySelectAction extends ExcuteAction {
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		BranchDAO bdao = new BranchDAO();
		CompanyDTO cdto = new CompanyDTO();
		
		int id = Integer.parseInt(req.getParameter("id"));
		
		req.setAttribute("company", bdao.company_select(id));
		setRedirect(false);
		setPath("../resource/page/article/article-view.jsp");
		setPath("../resource/page/article/article-write.jsp");
		
		return super.excute(req, resp);
	}
}
