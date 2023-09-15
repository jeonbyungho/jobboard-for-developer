package com.web.action;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.ArticleDTO;
import com.dto.BranchDAO;
import com.dto.CompanyDAO;

public class ArticleAction extends ExcuteAction{
	
	public ArticleAction() {}

	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		String info = req.getPathInfo();
		System.out.println("Ariticle : " + info);
		
		int no = 0;
		if(info == null) {
			setPath("./resource/page/article/article-write.jsp");
			return super.excute(req, resp);
		} else {
			info = info.substring(1);
			no = Integer.parseInt(info);
			System.out.println(no);
		}
		BranchDAO bdao = new BranchDAO();
		CompanyDAO cdao = new CompanyDAO();
		ArticleDTO adto1 = (ArticleDTO) bdao.article_select(no);
		List<String> adto2 = bdao.job_select(no);
		List<String> adto3 = bdao.stack_select(no);
		
		Map<String, String> cmap = cdao.byId(adto1.getCompany_id());
		
		System.out.println();
		req.setAttribute("article", adto1);
		req.setAttribute("job", adto2);
		req.setAttribute("stack", adto3);
		req.setAttribute("company", cmap);
		
		setPath("../resource/page/article/article-view.jsp");
		
		return super.excute(req, resp);
	}
}
