package com.web.action.mypage;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ArticleDAO;
import com.dto.CompanyDTO;
import com.web.action.ActionFront;
import com.web.action.BoardPageingAction;


public class CompanyMyPageAction extends BoardPageingAction{
	
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ArticleDAO adao = new ArticleDAO();
		
		HttpSession session = req.getSession();
		CompanyDTO company = (CompanyDTO)session.getAttribute("member");
		
		if(company == null){
			setRedirect(true);
			setPath(req.getContextPath());
			return super.excute(req, resp);
		}
		
		// 파라미터 구성
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("company_id", company.getId());
		
		// DB 조회
		int page = getPage(req);
		List<?> list = getList(req, adao, map, page);
		
		setRedirect(false);
		req.setAttribute("articleList", list);
		
		setPath("./resource/page/company/mypage.jsp");
		return super.excute(req, resp);
	}
}