package com.web.action.article;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BranchDAO;
import com.dao.CompanyDAO;
import com.dto.ArticleDTO;
import com.web.action.ActionFront;
import com.web.action.ExcuteAction;

public class ArticleAction extends ExcuteAction{
	
	public ArticleAction() {}

	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		String info = req.getPathInfo();
		System.out.println("Ariticle : " + info);
		
		int no = 0;
		if(info == null) {
			setRedirect(true);
			setPath(req.getContextPath() + "/article/list");
			return super.excute(req, resp);
		} 
		
		info = info.substring(1);
		no = Integer.parseInt(info);
		System.out.println(no);
		
		BranchDAO bdao = new BranchDAO();
		CompanyDAO cdao = new CompanyDAO();
		ArticleDTO article = (ArticleDTO) bdao.article_select(no);
		List<String> jobs = bdao.job_select(no);
		List<String> stacks = bdao.stack_select(no);
		
		Map<String, String> cmap = cdao.byId(article.getCompany_id());
		
		System.out.println();
		req.setAttribute("article", article);
		req.setAttribute("job", jobs);
		req.setAttribute("stack", stacks);
		req.setAttribute("company", cmap);
		
		setPath("../resource/page/article/article-view.jsp");
		
		return super.excute(req, resp);
	}
}
