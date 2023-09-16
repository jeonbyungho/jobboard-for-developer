package com.web.action.resume;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ResumeDAO;
import com.dto.LiecenceDTO;
import com.dto.MemberDTO;
import com.dto.RegDTO;
import com.dto.ResumeDTO;
import com.dto.SchoolDTO;
import com.web.action.ActionFront;
import com.web.action.ExcuteAction;


public class ResumeWriteAction extends ExcuteAction {

	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		System.out.println("시작");
		HttpSession session = req.getSession();
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		ResumeDTO resume = new ResumeDTO();
		
		// 회원이 존재하지 않을 경우..
		if(member == null) {
			System.out.println("로그인이 되지 않아, 이력서 작성 권한이 없습니다.");
			return super.excute(req, resp);
		}
		
		// 경력
		List<RegDTO> regList = new ArrayList<RegDTO>();
		
		String[] regName = req.getParameterValues("regName");
		String[] regJob = req.getParameterValues("regJob");
		String[] regSday = req.getParameterValues("regSday");
		String[] regEday = req.getParameterValues("regEday");
		
		for(int i = 0; i < regName.length; i++) {
			RegDTO reg = new RegDTO();
			reg.setName(regName[i]);
			reg.setJob(regJob[i]);
			reg.setSwork_day(regSday[i]);
			reg.setEwork_day(regEday[i]);
			regList.add(reg);
		}
		
		// 학교
		List<SchoolDTO> schoolList = new ArrayList<SchoolDTO>();
		
		String[] schRating = req.getParameterValues("schRating");
		String[] schName = req.getParameterValues("schName");
		String[] schDepartment = req.getParameterValues("schDepartment");
		String[] schStatus = req.getParameterValues("schStatus");
		String[] schGrade = req.getParameterValues("schGrade");
		
		for(int i = 0; i < schRating.length; i++) {
			SchoolDTO school = new SchoolDTO();
			school.setMember_id(member.getId());
			school.setRating(schRating[i]);
			school.setName(schName[i]);
			school.setDepartment(schDepartment[i]);
			school.setStatus(schStatus[i]);
			school.setGrade(Integer.parseInt(schGrade[i]));
			schoolList.add(school);
		}
		
		// 자격증
		List<LiecenceDTO> liecenceList = new ArrayList<LiecenceDTO>();
		String[] lieTitle = req.getParameterValues("lieTitle");
		String[] lieAcquisition = req.getParameterValues("lieAcquisition");
		
		for(int i = 0; i < lieTitle.length; i++) {
			LiecenceDTO liecence = new LiecenceDTO();
			liecence.setTitle(lieTitle[i]);
			liecence.setAcquisition(lieAcquisition[i]);
			liecenceList.add(liecence);
		}
		
		// 파라미터 구성
		resume.setMember_id(member.getId());
		resume.setCareer(req.getParameter("title"));
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
