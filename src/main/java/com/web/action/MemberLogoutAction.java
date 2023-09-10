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
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		
		PrintWriter out = resp.getWriter();
		String result;
		
		if(member != null) {
			session.removeAttribute("member");
			System.out.println(member.getId() +"(" + member.getName() + ") 로그아웃!");
			result = "success";
		} else {
			System.out.println("Error:로그인되지 않는 상태로 로그아웃 시도!");
			result = "fail";
		}
		
		out.print(result);
		return super.excute(req, resp);
	}
}
