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
	adao.article_search(job,career);
	
	

%>
</body>
</html>