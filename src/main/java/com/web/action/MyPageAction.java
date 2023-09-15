package com.web.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.CompanyDAO;
import com.dto.MemberDAO;

public class MyPageAction extends ExcuteAction{
		
	//경로
	public MyPageAction()  {
		setPath("./resource/mypage/mypage.jsp");
	}
	
	
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		MemberDAO mdao = new MemberDAO();
		CompanyDAO cdao = new CompanyDAO();
		
		
		
		
		return super.excute(req, resp);
	}
	
	
	
	
	
	
}
		