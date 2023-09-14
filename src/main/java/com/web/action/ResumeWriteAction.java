package com.web.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.LiecenceDTO;
import com.dto.MemberDTO;
import com.dto.RegDTO;
import com.dto.ResumeDAO;
import com.dto.ResumeDTO;
import com.dto.SchoolDTO;


public class ResumeWriteAction extends ExcuteAction {

	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		setPath(getPath());
		
		HttpSession session = req.getSession();
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		ResumeDTO resume = new ResumeDTO();
		
		// 회원이 존재하지 않을 경우..
		if(member == null) return super.excute(req, resp);
		
		// 경력
		List<RegDTO> regList = new ArrayList<RegDTO>();
		
		// 학교
		List<SchoolDTO> schoolList = new ArrayList<SchoolDTO>();
		
		// 자격증
		List<LiecenceDTO> liecenceList = new ArrayList<LiecenceDTO>();
		
		// 파라미터 구성
		resume.setMember_id(member.getId());
		resume.setCareer(req.getParameter("career"));
		resume.setPortfolio(req.getParameter("portfolio"));
		resume.setReg(regList);
		resume.setSchool(schoolList);
		resume.setLiecence(liecenceList);
		
		// DAO 시작
		System.out.println(resume.toString());
		ResumeDAO rdao = new ResumeDAO();
		boolean result = rdao.save(resume);

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
