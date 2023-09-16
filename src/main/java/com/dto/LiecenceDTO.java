package com.dto;

public class LiecenceDTO {
	private int id;
	private String resume_id;
	private String title;
	private String acquisition;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getResume_id() {
		return resume_id;
	}
	public void setResume_id(String resume_id) {
		this.resume_id = resume_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAcquisition() {
		return acquisition;
	}
	public void setAcquisition(String acquisition) {
		this.acquisition = acquisition;
	}
	@Override
	public String toString() {
		return "LiecenceDTO [id=" + id + ", resume_id=" + resume_id + ", title=" + title + ", acquisition="
				+ acquisition + "]";
	}
	
}
