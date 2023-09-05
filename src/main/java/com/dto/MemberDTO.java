package com.dto;

public class MemberDTO {
	private int id;
	private String userid;
	private String password;
	private String name;
	private String gender;
	private String birthday;
	private String phone;
	private String email;
	private String address;
	private String detail_addr;
	
	public int getId() {
		return id;
	}
	public String getUserid() {
		return userid;
	}
	public String getPassword() {
		return password;
	}
	public String getName() {
		return name;
	}
	public String getGender() {
		return gender;
	}
	public String getBirthday() {
		return birthday;
	}
	public String getPhone() {
		return phone;
	}
	public String getEmail() {
		return email;
	}
	public String getAddress() {
		return address;
	}
	public String getDetail_addr() {
		return detail_addr;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setDetail_addr(String detail_addr) {
		this.detail_addr = detail_addr;
	}
	
	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", userid=" + userid + ", password=" + password + ", name=" + name + ", gender="
				+ gender + ", birthday=" + birthday + ", phone=" + phone + ", email=" + email + ", address=" + address
				+ ", detail_addr=" + detail_addr + "]";
	}
}
