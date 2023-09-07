package com.web.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.dto.MemberDAO;

public class MemberSingupAction extends ExcuteAction {
	
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		Map<String, String[]> parameterMap = req.getParameterMap();
		Map<String, String> map = new HashMap<String, String>();
		MemberDAO mdao = new MemberDAO();
		
		PrintWriter out = resp.getWriter();
		JSONObject result = new JSONObject();
		
		// 파라미터 데이터 구성
		for(String key :parameterMap.keySet()) {
			String val = String.join("",parameterMap.get(key));
			System.out.println(key +":" + val);
			map.put(key, val);
		}
		
		// 회원가입 실패 시..
		if(!mdao.sigup(map)) {
			System.out.println("회원가입 실패..");
			result.put("result", "fail");
	    	out.print(result.toJSONString());
			return super.excute(req, resp);
		}
		
		// 회원가입 성공 시..
		System.out.println("회원가입 성공");
		result.put("result", "success");
	    result.put("url", req.getContextPath()+"/member/login");
	    out.print(result.toJSONString());
	    
		return super.excute(req, resp);
	}
}
