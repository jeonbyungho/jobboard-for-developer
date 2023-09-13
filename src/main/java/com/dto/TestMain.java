package com.dto;

public class TestMain {

	public static void main(String[] args) {
		// action
		// dto
		ArticleDTO article = new ArticleDTO();
		article.setCompany_id(2);
		article.setTitle("테스트 구인글");
		article.setCareer("신입");
		article.setSalary(10000);
		article.setAddress("경기");
		article.setDetail_addr("경기 어딘가");
		article.setNeed_amt(6);
		article.setJob_explain("이런저런 요구");
		article.setDeadline("2023-09-21");
		article.setQualify("글자");
		
		String[] job = {"backend", "ai"};
		article.setJob(job);
		
		String[] skill_stack = {"java", "jsp", "servet", "c"};
		article.setSkill_stack(skill_stack);
		System.out.println(article.toString());
		
		// dao
		BranchDAO bdao = new BranchDAO();
		boolean result = bdao.article_insert(article);
		System.out.println("Insert 성공 여부 : " + result);
	}

}
