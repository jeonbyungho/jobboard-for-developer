package com.web.action.mypage;

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
import com.web.action.BoardPageingAction;

public class MemberMyPageAction extends BoardPageingAction{
	
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ResumeDAO rdao = new ResumeDAO();
		HttpSession session = req.getSession();
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		
		if(member == null) {
			setRedirect(true);
			setPath(req.getContextPath());
			return super.excute(req, resp);
		}
		
		// 파라미터 구성
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", member.getId());
		
		// DB 조회
		int page = getPage(req);
		List<?> list = getList(req, rdao, map, page);
		
		req.setAttribute("resumeList", list);
		
		setRedirect(false);
		setPath("./resource/page/member/mypage.jsp");
		return super.excute(req, resp);
	}
}
		