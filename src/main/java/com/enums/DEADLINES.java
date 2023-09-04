package com.enums;

public enum DEADLINES {
	
	Newcomer("신입"),
	Career("경력"),
	Intern("인턴"),
	PartTime("파트타임");
	
	private String kor;
	
	public String getKor() {
		return kor;
	}
	
	DEADLINES(String kor) {
		this.kor = kor;
	}
}
