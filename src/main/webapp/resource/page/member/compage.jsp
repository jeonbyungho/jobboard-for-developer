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
    <link rel="stylesheet" href="tmp.css">
</head>

<body>
	<header><%@ include file= "/WEB-INF/views/header.jsp" %></header>
	
	<table border="1">
		<tr>
			<th>no</th>
			<th>지원자</th>
			<th>이력서</th>
			<th>구인글</th>
			<th>수락 여부</th>
		</tr>	
	
	<c:forEach var="resume" items="${receiveResumeList}">
	<tr>
		<td>${resume.R }</td>
		<td>${resume.MEMBER_NAME }</td>
		<td>${resume.RESUME_TITLE }</td>
		<td>${resume.ARTICLE_TITLE }</td>
		<td>
			<c:choose>
				<c:when test="${empty resume.CONSENT }">
					<button onclick="resumeConsent('${pageContext.request.contextPath}',${resume.ID})">수락</button>
				</c:when>
				<c:otherwise>${resume.CONSENT }</c:otherwise>
		    </c:choose>
		</td>
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