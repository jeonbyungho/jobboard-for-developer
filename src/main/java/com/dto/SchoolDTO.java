package com.dto;

public class SchoolDTO {
	private int id;
	private int member_id;
	private String rating;
	private String name;
	private String department;
	private String status;
	private float grade;
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
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public float getGrade() {
		return grade;
	}
	public void setGrade(float grade) {
		this.grade = grade;
	}
	@Override
	public String toString() {
		return "SchoolDTO [id=" + id + ", member_id=" + member_id + ", rating=" + rating + ", name=" + name
				+ ", department=" + department + ", status=" + status + ", grade=" + grade + "]";
	}
	
}
