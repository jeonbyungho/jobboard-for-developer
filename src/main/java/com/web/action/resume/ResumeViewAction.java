package com.web.action.resume;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ResumeDAO;
import com.web.action.ActionFront;
import com.web.action.ExcuteAction;

public class ResumeViewAction extends ExcuteAction{
	
	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		String info = req.getPathInfo();
		System.out.println("Resume : " + info);
		
		int no = 0;
		if(info == null) {
			setRedirect(true);
			setPath(req.getContextPath());
			return super.excute(req, resp);
		} 
		
		info = info.substring(1);
		no = Integer.parseInt(info);
		System.out.println(no);
		
		ResumeDAO rdao = new ResumeDAO();
		Map<String, Object> resume = rdao.view(no);
		List<Map<String, Object>> school = rdao.view_school(no);
		List<Map<String, Object>> reg = rdao.view_reg(no);
		List<Map<String, Object>> liecence = rdao.view_liecence(no);
		
		req.setAttribute("resume", resume);
		req.setAttribute("school", school);
		req.setAttribute("reg", reg);
		req.setAttribute("liecence", liecence);
		
		setPath("../resource/page/resume/view.jsp");
		
		return super.excute(req, resp);
	}
}
