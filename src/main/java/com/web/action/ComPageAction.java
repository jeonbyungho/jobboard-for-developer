package com.web.action;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.CompanyDTO;
import com.dto.MypageDAO;


public class ComPageAction extends ExcuteAction{
	
	public ComPageAction() {}
	
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		MypageDAO mydao = new MypageDAO();
		
	HttpSession session = req.getSession();
	CompanyDTO company = (CompanyDTO)session.getAttribute("member");
	
	if(company == null){
		setRedirect(true);
		setPath(req.getContextPath());
		return super.excute(req, resp);
	}
	
	int id = company.getId();
	
	List<Map<String, String>> map = mydao.receiveResumeList(id);
	System.out.println("나온 개수: "+map.size());
	for (Map<String, String> m:map) {
		System.out.println(m.toString());
	}
	
	req.setAttribute("receiveResumeList",map);
	setPath("../resource/page/member/compage.jsp");
	return super.excute(req, resp);
	}
}