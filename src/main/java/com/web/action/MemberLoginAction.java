package com.web.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.dto.CompanyDAO;
import com.dto.MemberDAO;
import com.dto.MemberDTO;
import com.dto.UserDAO;

public class MemberLoginAction extends ExcuteAction{
	
	private boolean kind;
	public MemberLoginAction(boolean kind) { this.kind = kind; }
	
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		// 파라미터 데이터 읽기
	    String userid = req.getParameter("userid");
	    String password = req.getParameter("password");
	    
	    System.out.println("유저 ID : " + userid);
	    System.out.println("비밀번호 : " + password);
	    
	    // 요청 결과 메시지 작성
	    PrintWriter out = resp.getWriter();
	    UserDAO<?> udao = kind ? new MemberDAO() : new CompanyDAO();
	    Object member = (Object) udao.login(userid, password);
	    String result;
	    
	    // 로그인 실패
	    if(member == null) {
	    	result = "fail";
	    	System.out.println("로그인 실패");
	    // 로그인 성공 시, Session에 로그인 데이터 저장
	    } else {
	    	HttpSession session = req.getSession();
		    session.setAttribute("member", member);
		    result = "success";
		    System.out.println(session.getAttribute("member").toString());
	    }
	    
	    out.print(result);
		return super.excute(req, resp);
	}
}
