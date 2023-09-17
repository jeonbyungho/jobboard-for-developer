package com.web.action.mypage;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.CompanyMypageDAO;
import com.dto.CompanyDTO;
import com.web.action.ActionFront;
import com.web.action.BoardPageingAction;


public class CompanyMyPageAction extends BoardPageingAction{
	
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		CompanyMypageDAO mydao = new CompanyMypageDAO();
		
		HttpSession session = req.getSession();
		CompanyDTO company = (CompanyDTO)session.getAttribute("member");
		
		if(company == null){
			setRedirect(true);
			setPath(req.getContextPath());
			return super.excute(req, resp);
		}
		
		// 파라미터 구성
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", company.getId());
		
		// DB 조회
		int page = getPage(req);
		List<?> list = getList(req, mydao, map, page);
		
		req.setAttribute("receiveResumeList", list);
		
		setPath("./resource/page/member/compage.jsp");
		return super.excute(req, resp);
	}
}