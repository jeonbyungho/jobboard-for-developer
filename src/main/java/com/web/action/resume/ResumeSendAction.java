package com.web.action.resume;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ResumeDAO;
import com.web.action.ActionFront;
import com.web.action.ExcuteAction;

public class ResumeSendAction extends ExcuteAction{
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		int article_Id = Integer.parseInt(req.getParameter("articleId"));
		int resumeId = Integer.parseInt(req.getParameter("resumeId"));
		
		ResumeDAO rdao = new ResumeDAO();
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("article_id", article_Id);
		map.put("resume_id", resumeId);
		rdao.send(map);
		
		PrintWriter out = resp.getWriter();
		out.print("success");
		
		return super.excute(req, resp);
	}
}
