package com.enums;

public enum ADDRESS {
	
	Seoul("서울"),
	Gyeonggi("경기"),
	Incheon ("인천"),
	Gangwon ("강원"),
	Daejeon ("대전"),
	Sejong("세종"),
	Chungnam("충남"),
	Chungbuk("충북"),
	Busan("부산"),
	Ulsan ("울산"),
	Kyungnam("경남"),
	Kyungpook("경북"),
	Daegu ("대구"),
	Gwangju ("광주"),
	Jeonnam("전남"),
	Jeonbuk("전북"),
	Jeju("제주");
	
	private String kor;
	
	public String getKor() {
		return kor;
	}
	
	ADDRESS(String kor) {
		this.kor = kor;
	}
}
