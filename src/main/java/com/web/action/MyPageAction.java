package com.web.action;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.MypageDAO;
import com.dto.MemberDTO;

public class MyPageAction extends ExcuteAction{
	
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		MypageDAO mydao = new MypageDAO();
		
		HttpSession session = req.getSession();
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		
		if(member == null) {
			setRedirect(true);
			setPath(req.getContextPath());
			return super.excute(req, resp);
		}
		int id = member.getId();
		
		List<Map<String, String>> map = mydao.submitResumeList(id);
		System.out.println("나온 개수: "+map.size());
		for(Map<String, String> m : map) {
			System.out.println(m.toString());
		}
		
		req.setAttribute("submitResumeList",map);
		setPath("./resource/page/member/mypage.jsp");
		return super.excute(req, resp);
	}
}
		