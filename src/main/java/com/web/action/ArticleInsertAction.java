package com.web.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.ArticleDTO;
import com.dto.BranchDAO;

public class ArticleInsertAction extends ExcuteAction{
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionFront forward = new ActionFront();
		
		BranchDAO bdao = new BranchDAO();
		ArticleDTO adto = new ArticleDTO();
		
		adto.setJob(req.getParameter("job"));
		adto.setCareer(req.getParameter("career"));
		adto.setSalary(req.getParameter("salary"));
		adto.setLocation(req.getParameter("location"));
		adto.setNeed_amt(req.getParameter("need_amt"));
		adto.setDeadline(req.getParameter("deadline"));
		adto.setJob_explain(req.getParameter("job_explain"));
		adto.setQualify(req.getParameter("qualify"));
		adto.setTag_stack(req.getParameter("tag_stack"));
		
		forward.setRedirect(true);
		
		if(bdao.article_insert(adto)) {
			forward.setPath("/article");
		} else {
			forward.setPath("/article");
		}
		
		return forward;
		
		System.out.println("ArticleInsertAction");
		return super.excute(req, resp);
	}
}
