package com.dto;

public class CompanyDTO extends UserDTO{
	public CompanyDTO() { this.kind = false; }
	
	private int id;
	private String company_no;
	private String password;
	private String name;
	private String esta;
	private String scale;
	private String employee_no;
	private String sale;
	private String ceo;
	private String url;
	private String address;
	private String detail_addr;
	private String content;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCompany_no() {
		return company_no;
	}
	public void setCompany_no(String company_no) {
		this.company_no = company_no;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEsta() {
		return esta;
	}
	public void setEsta(String esta) {
		this.esta = esta;
	}
	public String getScale() {
		return scale;
	}
	public void setScale(String scale) {
		this.scale = scale;
	}
	public String getEmployee_no() {
		return employee_no;
	}
	public void setEmployee_no(String employee_no) {
		this.employee_no = employee_no;
	}
	public String getSale() {
		return sale;
	}
	public void setSale(String sale) {
		this.sale = sale;
	}
	public String getCeo() {
		return ceo;
	}
	public void setCeo(String ceo) {
		this.ceo = ceo;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	@Override
	public String toString() {
		return "CompanyDTO [id=" + id + ", company_no=" + company_no + ", password=" + password + ", name=" + name
				+ ", esta=" + esta + ", scale=" + scale + ", employee_no=" + employee_no + ", sale=" + sale + ", ceo="
				+ ceo + ", url=" + url + ", address=" + address + ", detail_addr=" + detail_addr + ", content="
				+ content + "]";
	}

}
