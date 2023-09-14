package com.dto;

import java.util.Arrays;

public class ArticleDTO {
	private int id;
	private int company_id;
	private String title;
	private String career;
	private int salary;
	private String address;
	private String detail_addr;
	private int need_amt;
	private String job_explain;
	private String deadline;
	private String qualify;
	
	private String[] job;
	private String[] skill_stack;
	
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public String[] getJob() {
		return job;
	}
	public void setJob(String[] job) {
		this.job = job;
	}
	public String[] getSkill_stack() {
		return skill_stack;
	}
	public void setSkill_stack(String[] skill_stack) {
		this.skill_stack = skill_stack;
	}
	
	@Override
	public String toString() {
		return "ArticleDTO [id=" + id + ", company_id=" + company_id + ", title=" + title + ", career=" + career
				+ ", salary=" + salary + ", address=" + address + ", detail_addr=" + detail_addr + ", need_amt="
				+ need_amt + ", job_explain=" + job_explain + ", deadline=" + deadline + ", qualify=" + qualify
				+ ", job=" + Arrays.toString(job) + ", skill_stack=" + Arrays.toString(skill_stack) + "]";
	}
	
}
