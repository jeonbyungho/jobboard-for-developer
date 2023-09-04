package com.enums;

public enum JOBS {
	
	BackEnd("백엔드"),
	FrontEnd("프론트엔드"),
	FullStack("풀스택"),
	Mobile("모바일"),
	Data("데이터"),
	AI("인공지능");
	
	private String kor;
	
	public String getKor() {
		return kor;
	}
	
	JOBS(String kor) {
		this.kor = kor;
	}
}
