package com.web.action.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.dao.CompanyDAO;
import com.dao.MemberDAO;
import com.dao.UserDAO;
import com.web.action.ActionFront;
import com.web.action.ExcuteAction;

public class MemberSingupAction extends ExcuteAction {
	
	private boolean kind;
	public MemberSingupAction(boolean kind) { this.kind = kind; }
	
	@SuppressWarnings("unchecked")
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		Map<String, String[]> parameterMap = req.getParameterMap();
		Map<String, String> map = new HashMap<String, String>();
		UserDAO<?> udao = kind ? new MemberDAO() : new CompanyDAO();
		
		PrintWriter out = resp.getWriter();
		JSONObject result = new JSONObject();
		
		// 파라미터 데이터 구성
		for(String key :parameterMap.keySet()) {
			String val = String.join("",parameterMap.get(key));
			map.put(key, val);
			System.out.println(key +":" + val);
		}
		
		// 회원가입 실패 시..
		if(!udao.sigup(map)) {
			System.out.println("회원가입 실패..");
			result.put("result", "fail");
	    	out.print(result.toJSONString());
			return super.excute(req, resp);
		}
		
		// 회원가입 성공 시..
		System.out.println("회원가입 성공");
		result.put("result", "success");
	    result.put("url", req.getContextPath()+"/login");
	    out.print(result.toJSONString());
	    
		return super.excute(req, resp);
	}
}
