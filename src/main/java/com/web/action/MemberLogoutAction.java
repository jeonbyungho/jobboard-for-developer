package com.web.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemberLogoutAction extends ExcuteAction{
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HttpSession session = req.getSession();
		String userid = (String) session.getAttribute("userid");
		
		if(userid != null) {
			session.removeAttribute("userid");
			System.out.println(userid + " 로그아웃a!");
			
            session.setAttribute("logout", "success");
			setRedirect(true);
			setPath(req.getContextPath() + "/");
		} else {
			System.out.println("Error:로그인되지 않는 상태로 로그아웃 시도!");
		}
		
		return super.excute(req, resp);
	}
}
