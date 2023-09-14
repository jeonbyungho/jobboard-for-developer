package com.web.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.dto.ArticleDTO;
import com.dto.BranchDAO;
import com.dto.CompanyDTO;
import com.dto.UserDTO;

public class ArticleInsertAction extends ExcuteAction{
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		BranchDAO bdao = new BranchDAO();
		ArticleDTO article = new ArticleDTO();
		
		HttpSession session = req.getSession();
		CompanyDTO company = (CompanyDTO) session.getAttribute("member");
		System.out.println(company.toString());
		
		PrintWriter out = resp.getWriter();
		JSONObject result = new JSONObject();
		
		// 파라미터 데이터 구성
		article.setCompany_id(company.getId());
		article.setTitle(req.getParameter("title"));
		article.setSalary(Integer.parseInt(req.getParameter("salary")));
		article.setAddress(req.getParameter("address"));
		article.setDetail_addr(req.getParameter("detail_addr"));
		article.setNeed_amt(Integer.parseInt(req.getParameter("need_amt")));
		article.setJob_explain(req.getParameter("job_explain"));
		article.setDeadline(req.getParameter("deadline"));
		article.setQualify(req.getParameter("qualify"));
		
		// 경력
		String[] corrArr = req.getParameterValues("career");
		String newcorrArr = String.join(", ", corrArr);
		article.setCareer(newcorrArr);
		
		// 직무
		String[] job = req.getParameterValues("job");
		article.setJob(job);
		
		// 기술 스택
		String[] skill_stack = req.getParameterValues("stack");
		article.setSkill_stack(skill_stack);
		System.out.println(article.toString());
		
		// 구인글 작성
		boolean result1 = bdao.article_insert(article);
		System.out.println("Insert 성공 여부 : " + result1);
		
		result.put("result", "success");
		int idx = bdao.article_idmax();
		result.put("url", req.getContextPath()+"/article/"+ idx);
		out.print(result.toJSONString());
		
		return super.excute(req, resp);
		
	}
}
