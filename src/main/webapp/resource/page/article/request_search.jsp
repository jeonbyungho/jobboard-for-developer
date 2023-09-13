<%@page import="org.json.simple.JSONObject"%>
<%@page import="com.dto.ArticleDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.dto.ArticleDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String job = request.getParameter("job");
	String career = request.getParameter("career");
	ArticleDAO adao= new ArticleDAO();
	List<ArticleDTO> articlelist = adao.article_search(job,career);
	
	/* for(int i=0; i<articlelist.size(); i++){
		
	}
	obj.put("id", List.);
	obj.put("job", value);
	obj.put("career", value);
	obj.put("salary", value);
	obj.put("location", value);
	obj.put("need_amt", value);
	obj.put("deadline", value);
	obj.put("job_explain", value);
	obj.put("qualify", value);
	obj.put("tag_stack", value); */
	if(articlelist.size()==0){
		out.print("게시글이 없습니다.");
	}
	else{
		ArticleDTO dto1 = articlelist.get(0);
		out.print(dto1.getJob());
	}
	
	

%>
</body>
</html>