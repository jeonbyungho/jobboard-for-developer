<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="${pageContext.request.contextPath}/resource/js/resume_consent.js" defer></script>
    <title>Document</title>
    
    <link href="${pageContext.request.contextPath}/resource/css/body.css" rel="stylesheet"  type="text/css"/>
    <link href="${pageContext.request.contextPath}/resource/css/header.css" rel="stylesheet"  type="text/css"/>
    <link href="${pageContext.request.contextPath}/resource/css/board.css" rel="stylesheet"  type="text/css"/>
</head>

<body>
	<header><%@ include file= "/WEB-INF/views/header.jsp" %></header>
	<nav><%@ include file= "/WEB-INF/views/mypage/menu.jsp" %></nav>
	
	<%-- 제출한 이력서 테이블 --%>
	<table id="border">
		<tr>
			<th>번호</th>
			<th>기업이름</th>
			<th>제목</th>
			<th>경력</th>
			<th>연봉</th>
			<th>주소</th>
			<th>채용수</th>
		</tr>	
	
	<%-- 이력서 목록 --%>
	<c:forEach var="article" items="${articleList}">
	<tr class="item" onclick="location.href='${pageContext.request.contextPath}/article/${article.ID}'">
		<td>${article.R }</td>
		<th>${article.NAME }</th>
		<td>${article.TITLE }</td>
		<td>${article.CAREER }</td>
		<td>${article.SALARY }</td>
		<td>${article.ADREESS}</td>
		<td>${article.NEED_AMT }</td>
	</tr>
	</c:forEach>
	</table>
	
	<%-- 페이징 --%>
	<div align="center">
		<c:set var="pagePath" value="article/list?page"/>
		<%@ include file= "/WEB-INF/views/board/page_number.jsp" %>
	</div>
</body>
</html>