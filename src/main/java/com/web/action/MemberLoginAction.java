package com.web.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.dto.MemberDAO;
import com.dto.MemberDTO;

public class MemberLoginAction extends ExcuteAction{
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setContentType("application/x-json;charset=utf-8");
		
		// 요청 body 읽기
	    String userid = req.getParameter("userid");
	    String password = req.getParameter("password");
	    
	    System.out.println("유저 ID : " + userid);
	    System.out.println("비밀번호 : " + password);
	    
	    // 요청 결과 메시지 작성
	    PrintWriter out = resp.getWriter();
	    MemberDAO mdao = new MemberDAO();
	    MemberDTO member = mdao.login(userid, password);
	    
	    JSONObject result = new JSONObject();
	    if(member == null) {
	    	result.put("result", "fail");
	    	System.out.println("로그인 실패");
	    	out.print(result.toJSONString());
	    	return super.excute(req, resp);
	    }
	    
	    // (임시)세센에 로그인 정보 저장
	    HttpSession session = req.getSession();
	    session.setAttribute("member", member);
	    
	    System.out.println(session.getAttribute("member").toString());
	    result.put("result", "success");
	    result.put("url", req.getContextPath());
	    out.print(result.toJSONString());
	    
		return super.excute(req, resp);
	}
}
