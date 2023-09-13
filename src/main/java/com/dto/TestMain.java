package com.dto;

public class TestMain {

	public static void main(String[] args) {
		// action
		// dto
		ArticleDTO article = new ArticleDTO();
		
		article.setCompany_id(2);
		article.setTitle("지금 구인글 올립니다.");
		article.setCareer("경력, 신입");
		article.setSalary(50000);
		article.setAddress("인천");
		article.setDetail_addr("인천 어딘가 상세 주소");
		article.setNeed_amt(2);
		article.setJob_explain("자격사항?");
		article.setDeadline("2023-02-22");
		article.setQualify("이런거 필요함!");
		
		String[] job = {"backend", "frontend","data", "ai"};
		article.setJob(job);
		
		String[] skill_stack = {"python", "c++", "jsp"};
		article.setSkill_stack(skill_stack);
		System.out.println(article.toString());
		
		// dao
		BranchDAO bdao = new BranchDAO();
		boolean result = bdao.article_insert(article);
		System.out.println("Insert 성공 여부 : " + result);
	}

}
