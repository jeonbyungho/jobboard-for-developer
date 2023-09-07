package com.dto;

public class ResumeDTO {
	private int id;
	private String user_id;
	private String career;
	private String school;
	private String portfolio;
	private String reg_date;
	private String licence;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getPortfolio() {
		return portfolio;
	}
	public void setPortfolio(String portfolio) {
		this.portfolio = portfolio;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getLicence() {
		return licence;
	}
	public void setLicence(String licence) {
		this.licence = licence;
	}
	@Override
	public String toString() {
		return "ResumeDTO [id=" + id + ", user_id=" + user_id + ", career=" + career + ", school=" + school
				+ ", portfolio=" + portfolio + ", reg_date=" + reg_date + ", licence=" + licence + "]";
	}
	
	
	
}
