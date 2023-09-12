package com.web.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.ArticleDTO;
import com.dto.BranchDAO;
import com.dto.JobDTO;
import com.dto.StackDTO;

public class ArticleInsertAction extends ExcuteAction{
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		BranchDAO bdao = new BranchDAO();
		ArticleDTO adto = new ArticleDTO();
		StackDTO sdto = new StackDTO();
		JobDTO jdto = new JobDTO();
		
		String[] jobArr = req.getParameterValues("job");
		String newjobArr = String.join(",", jobArr);
		String[] carrArr = req.getParameterValues("carr");
		String newcarrArr = String.join(",", carrArr);
		String[] stackArr = req.getParameterValues("stack");
		String newstackArr = String.join(",", stackArr);
		
		adto.setTitle(req.getParameter("title"));
		adto.setDetail_addr(req.getParameter("detail_addr"));
		adto.setJob_explain(req.getParameter("job_explain"));
		adto.setQualify(req.getParameter("qualify"));
		adto.setDeadline(req.getParameter("deadline"));
		jdto.setJ_name(newjobArr);
		adto.setCareer(newcarrArr);
		sdto.setS_name(newstackArr);
		
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
