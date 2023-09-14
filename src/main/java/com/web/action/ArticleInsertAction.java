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
		ArticleDTO article = new ArticleDTO();
		
		article.setCompany_id(1);
		article.setTitle(req.getParameter("title"));
		article.setSalary(Integer.parseInt(req.getParameter("salary")));
		article.setAddress(req.getParameter("address"));
		article.setDetail_addr(req.getParameter("detail_addr"));
		article.setNeed_amt(Integer.parseInt(req.getParameter("need_amt")));
		article.setJob_explain(req.getParameter("job_explain"));
		article.setDeadline(req.getParameter("deadline"));
		article.setQualify(req.getParameter("qualify"));
		
		String[] corrArr = req.getParameterValues("career");
		String newcorrArr = String.join(", ", corrArr);
		article.setCareer(newcorrArr);
		
		
		String[] job = req.getParameterValues("job");
		article.setJob(job);
		
		String[] skill_stack = req.getParameterValues("stack");
		article.setSkill_stack(skill_stack);
		System.out.println(article.toString());
		
		boolean result = bdao.article_insert(article);
		// dao
		System.out.println("Insert 성공 여부 : " + result);
		
		setRedirect(true);
		
		if(bdao.article_insert(article)) {
			int idx = bdao.article_idmax();
			setPath("./article/"+idx);
		} else {
			setPath("./article");
		}
		
		return super.excute(req, resp);
		
	}
}
