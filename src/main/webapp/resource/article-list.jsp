<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
</head>
<body>
	<p>게시판 페이지 <%= request.getParameter("page") %></p>
	<p>근무 지역 <%= request.getParameter("addr") %></p>
	<p>업무 종류 <%= request.getParameter("jobs") %></p>
	<p>경력 사항 <%= request.getParameter("deadline") %></p>
</body>
</html>