package com.web.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;
import com.dto.ResumeDAO;
import com.dto.ResumeDTO;


public class ResumeWriteAction extends ExcuteAction {

	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		setPath(getPath());
		
		ResumeDTO rdto = new ResumeDTO();
		HttpSession session = req.getSession();
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		
		rdto.setUser_id(Integer.toString(member.getId()));
		rdto.setCareer(req.getParameter("CAREER"));
		rdto.setSchool(req.getParameter("SCHOOL"));
		rdto.setPortfolio(req.getParameter("PORTFOLIO"));
		rdto.setReg_date(req.getParameter("REG_DATE"));
		rdto.setLicence(req.getParameter("LICENCE"));
		
		System.out.println(rdto.toString());
		
		ResumeDAO rdao = new ResumeDAO();
		boolean result = rdao.save(rdto);


		if (result) {
			// 저장 성공 시 넘어갈 경로 설정
			setRedirect(true);
			setPath(req.getContextPath() + "/");
		} else {
			// 저장 실패 시 넘어갈 경로 설정
			setRedirect(true);
			setPath("error.jsp");
		}

		System.out.println("ResumeWriteAction");
		return super.excute(req, resp);

	}
}
