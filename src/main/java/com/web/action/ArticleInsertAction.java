package com.web.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.ArticleDTO;
import com.dto.BranchDAO;

public class ArticleInsertAction extends ExcuteAction{
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		BranchDAO bdao = new BranchDAO();
		ArticleDTO adto = new ArticleDTO();
		String[] jobArr = req.getParameterValues("job");
		String newjobArr = String.join(",", jobArr);
		String[] corrArr = req.getParameterValues("carr");
		String newcorrArr = String.join(",", corrArr);
		String[] stackArr = req.getParameterValues("stack");
		String newstackArr = String.join(",", stackArr);
		
		adto.setTitle(req.getParameter("title"));
		adto.setSalary(req.getParameter("salary"));
		adto.setNeed_amt(req.getParameter("need_amt"));
		adto.setJob_explain(req.getParameter("job_explain"));
		adto.setQualify(req.getParameter("qualify"));
		adto.setLocation(req.getParameter("location"));
		adto.setDeadline(req.getParameter("deadline"));
		adto.setJob(newjobArr);
		adto.setCareer(newcorrArr);
		adto.setTag_stack(newstackArr);
		
		setRedirect(true);
		
		if(bdao.article_insert(adto)) {
			int idx = bdao.article_idmax();
			setPath("./article/"+idx);
		} else {
			setPath("./article");
		}
		
		return super.excute(req, resp);
		
	}
}
