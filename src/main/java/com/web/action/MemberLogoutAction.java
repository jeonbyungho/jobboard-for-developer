package com.web.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;

public class MemberLogoutAction extends ExcuteAction{
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HttpSession session = req.getSession();
		Object member = session.getAttribute("member");
		
		PrintWriter out = resp.getWriter();
		String result;
		
		if(member != null) {
			session.removeAttribute("member");
			System.out.println("로그아웃 : " + member.toString());
			result = "success";
		} else {
			System.out.println("로그인 없이, 로그아웃 시도함.");
			result = "fail";
		}
		
		out.print(result);
		return super.excute(req, resp);
	}
}
