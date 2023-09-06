package com.web.action;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.json.JSONParser;
import org.apache.tomcat.util.json.ParseException;

public class MemberLoginAction extends ExcuteAction{
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setContentType("application/x-json;charset=utf-8");
		
		// 요청 body 읽기
		BufferedReader reader = req.getReader();
		StringBuilder sb = new StringBuilder();
	    String line;
	    while ((line = reader.readLine()) != null) {
	        sb.append(line);
	    }
	    String reqBodyString = sb.toString();
	    
	    JSONParser json = new JSONParser(reqBodyString);
	    String userid = null;
	    String password = null;
	    try {
	    	Map<String, Object> map =json.parseObject();
	    	userid = (String) map.get("userid");
	    	password = (String) map.get("password");
		} catch (ParseException e) {
			
			e.printStackTrace();
		}
	    
	    System.out.println("유저 ID : " + userid);
	    System.out.println("비밀번호 : " + password);
	    
	    // (임시)세센에 로그인 정보 저장
	    HttpSession session = req.getSession();
	    session.setAttribute("userid", userid);
	    
	    PrintWriter out = resp.getWriter();
	    out.print("{\"result\" : \""+ session.getAttribute("userid") +"\" }");
	    
		return super.excute(req, resp);
	}
}
