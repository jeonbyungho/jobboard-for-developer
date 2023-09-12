package com.dto;

import java.sql.Date;

public class ArticleDTO {
	
	// article insert DB 
	private int id;
	private int company_id;
	private String career;
	private int salary;
	private int addres_id;
	private String detail_addr;
	private int need_amt;
	private String job_explain; 
	private String title;
	private String deadline;
	private String qualify;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCompany_id() {
		return company_id;
	}
	public void setCompany_id(int company_id) {
		this.company_id = company_id;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public int getAddres_id() {
		return addres_id;
	}
	public void setAddres_id(int addres_id) {
		this.addres_id = addres_id;
	}
	public String getDetail_addr() {
		return detail_addr;
	}
	public void setDetail_addr(String detail_addr) {
		this.detail_addr = detail_addr;
	}
	public int getNeed_amt() {
		return need_amt;
	}
	public void setNeed_amt(int need_amt) {
		this.need_amt = need_amt;
	}
	public String getJob_explain() {
		return job_explain;
	}
	public void setJob_explain(String job_explain) {
		this.job_explain = job_explain;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDeadline() {
		return deadline;
	}
	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}
	public String getQualify() {
		return qualify;
	}
	public void setQualify(String qualify) {
		this.qualify = qualify;
	}
	
	
	
	
}
