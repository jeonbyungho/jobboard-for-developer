package com.dto;

import java.util.Arrays;
import java.util.List;

public class ResumeDTO {
	private int id;
	private int member_id;
	private String career;
	private String portfolio;
	private List<RegDTO> reg;
	private List<SchoolDTO> school;
	private List<LiecenceDTO> liecence;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getMember_id() {
		return member_id;
	}
	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	public String getPortfolio() {
		return portfolio;
	}
	public void setPortfolio(String portfolio) {
		this.portfolio = portfolio;
	}
	public List<RegDTO> getReg() {
		return reg;
	}
	public void setReg(List<RegDTO> reg) {
		this.reg = reg;
	}
	public List<SchoolDTO> getSchool() {
		return school;
	}
	public void setSchool(List<SchoolDTO> school) {
		this.school = school;
	}
	@Override
	public String toString() {
		return "ResumeDTO [id=" + id + ", member_id=" + member_id + ", career=" + career + ", portfolio=" + portfolio
				+ ", reg=" + reg + ", school=" + school + "]";
	}
	public List<LiecenceDTO> getLiecence() {
		return liecence;
	}
	public void setLiecence(List<LiecenceDTO> liecence) {
		this.liecence = liecence;
	}

}
