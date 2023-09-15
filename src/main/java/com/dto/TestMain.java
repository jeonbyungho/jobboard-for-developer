package com.dto;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class TestMain {

	public static void main(String[] args) {
		MypageDAO pdao = new MypageDAO();
		List<Map<String, String>> memberlist = pdao.submitResumeList(5);
		
		for(Map<String, String> a : memberlist) {
			System.out.println(a.toString());
			System.out.println("구인글 제목" + a.get("TITLE"));
		}
		
		List<Map<String, String>> comlist = pdao.receiveResumeList(2);
		
		for(Map<String, String> a : comlist) {
			System.out.println(a.toString());
		}
	}
}
