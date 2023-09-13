package com.dto;

import java.util.ArrayList;
import java.util.List;

public class TestMain {

	public static void main(String[] args) {
		// action
		// dto
		ResumeDAO rdao = new ResumeDAO();
		ResumeDTO resume = new ResumeDTO();
		
		resume.setMember_id(5);
		resume.setCareer("경력");
		resume.setPortfolio("http:local.com");
		// 경력
		ArrayList<RegDTO> regs = new ArrayList<RegDTO>();
		RegDTO reg = new RegDTO();
		reg.setName("옛날 회사");
		reg.setJob("백엔드");
		reg.setSwork_day("2020-01-01");
		reg.setEwork_day("2021-01-01");
		
		RegDTO reg2 = new RegDTO();
		reg2.setName("얼마전 회사");
		reg2.setJob("풀스택");
		reg2.setSwork_day("2021-02-01");
		reg2.setEwork_day("2023-09-13");
		
		regs.add(reg);
		regs.add(reg2);
		resume.setReg( (List<RegDTO>) regs);
		
		// 학교
		ArrayList<SchoolDTO> sch = new ArrayList<SchoolDTO>();
		SchoolDTO sdto = new SchoolDTO();
		
		sdto.setMember_id(4);
		sdto.setRating("대학교");
		sdto.setName("서울");
		sdto.setDepartment("컴공");
		sdto.setStatus("졸업예정");
		sdto.setGrade(45);
		
		sch.add(sdto);
		
		resume.setSchool((List<SchoolDTO>) sch);
		
		
		
		//자격증
		ArrayList<LiecenceDTO> li = new ArrayList<LiecenceDTO>();
		LiecenceDTO ldto = new LiecenceDTO();
		
		ldto.setResume_id("dd");
		ldto.setTitle("정처기");
		li.add(ldto);
		
		resume.setLiecence((List<LiecenceDTO>) li);
		// 출력
		System.out.println(resume.toString());
		boolean result = rdao.save(resume);
		System.out.println(result);
	}
	
		

}
