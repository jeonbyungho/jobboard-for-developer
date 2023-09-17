<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="${pageContext.request.contextPath}/resource/js/resume_send.js" defer></script>
<title>이력서 제출</title>
</head>
<body>
	
	<h3>제출할 이력서를 선택</h3>
	
	<%-- 이력서 테이블 --%>
	<table border="1">
		<tr>
			<th>번호</th>
    		<th>이력서</th>
    		<th>✉️</th>
    	</tr>
	<c:forEach items="${resumeList}" var="resume">
		<tr>
			<td>${resume.RN }</td>
			<td>
				<a href="${pageContext.request.contextPath}/resume/${resume.ID}">
					${resume.TITLE }
				</a>
			</td>
			<td>
				<a href="javascript:resumeSend('${pageContext.request.contextPath}/resume/popup', ${param.articleId}, ${resume.ID })">
					제출
				</a>
			</td>
		</tr>
	</c:forEach>
	</table>
	
	<%-- 페이징 --%>
	<div align="center">
		<c:set var="pagePath" value="resume/popup?articleId=${param.articleId}&page"/>
		<%@ include file= "/WEB-INF/views/board/page_number.jsp" %>
	</div>
	
</body>
</html>