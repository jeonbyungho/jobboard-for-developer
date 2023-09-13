package com.dto;

public class ArticleDTO {
	private int id;
	private int company_id;
	private int job_id;
	private String career;
	private int salary;
	private int address_id;
	private String detail_addr;
	private int need_amt;
	private String job_explain;
	private String qualify;
	private String name;
	private String type;
	private String district;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getQualify() {
		return qualify;
	}
	public void setQualify(String qualify) {
		this.qualify = qualify;
	}
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
	public int getJob_id() {
		return job_id;
	}
	public void setJob_id(int job_id) {
		this.job_id = job_id;
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
	public int getAddress_id() {
		return address_id;
	}
	public void setAddress_id(int address_id) {
		this.address_id = address_id;
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

}
