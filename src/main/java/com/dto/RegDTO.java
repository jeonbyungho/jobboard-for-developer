package com.dto;

public class RegDTO {
	private int id;
	private int resume_id;
	private String name;
	private String job;
	private String swork_day;
	private String ework_day;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getResume_id() {
		return resume_id;
	}
	public void setResume_id(int resume_id) {
		this.resume_id = resume_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getSwork_day() {
		return swork_day;
	}
	public void setSwork_day(String swork_day) {
		this.swork_day = swork_day;
	}
	public String getEwork_day() {
		return ework_day;
	}
	public void setEwork_day(String ework_day) {
		this.ework_day = ework_day;
	}
	
	@Override
	public String toString() {
		return "RegDTO [id=" + id + ", resume_id=" + resume_id + ", name=" + name + ", job=" + job + ", swork_day="
				+ swork_day + ", ework_day=" + ework_day + "]";
	}
}
