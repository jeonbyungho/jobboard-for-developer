package com.web.action.resume;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ResumeDAO;
import com.dto.MemberDTO;
import com.web.action.ActionFront;
import com.web.action.ExcuteAction;

public class ResumePopupAction extends ExcuteAction{
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HttpSession session = req.getSession();
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		ResumeDAO rdao = new ResumeDAO();
		
		if(member == null) {
			System.out.println("권한이 없습니다.");
			return super.excute(req, resp);
		}
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("id", member.getId());
		map.put("startRow", 1);
		map.put("endRow", 5);
		
		// 이력서 목록
		List<Map<String, String>> resumeList = rdao.list(map);
		req.setAttribute("resumeList", resumeList);
		
		setPath("../resource/page/article/resume-send.jsp");
		return super.excute(req, resp);
	}
}
