package com.web.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;

public class MemberLogoutAction extends ExcuteAction{
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HttpSession session = req.getSession();
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		
		if(member != null) {
			System.out.println(member.toString() + " 로그아웃!");
			session.removeAttribute("member");
			
            session.setAttribute("logout", "success");
			setRedirect(true);
			setPath(req.getContextPath() + "/");
		} else {
			System.out.println("Error:로그인되지 않는 상태로 로그아웃 시도!");
		}
		
		return super.excute(req, resp);
	}
}
