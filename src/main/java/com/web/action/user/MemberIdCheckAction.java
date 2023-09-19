package com.web.action.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CompanyDAO;
import com.dao.MemberDAO;
import com.dao.UserDAO;
import com.web.action.ActionFront;
import com.web.action.ExcuteAction;

public class MemberIdCheckAction extends ExcuteAction{
	private boolean kind;
	public MemberIdCheckAction(boolean kind) { this.kind = kind; }
	
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		String userid = req.getParameter("userid");
		
		PrintWriter out = resp.getWriter();
	    UserDAO<?> udao = kind ? new MemberDAO() : new CompanyDAO();
	    String result = udao.idCheck(userid) ? "true" : "false";
	    
		out.print(result);
		return super.excute(req, resp);
	}
}
