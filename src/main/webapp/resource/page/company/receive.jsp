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
			<th>지원자</th>
			<th>이력서</th>
			<th>구인글</th>
			<th>수락 여부</th>
		</tr>	
	
	<%-- 이력서 목록 --%>
	<c:forEach var="resume" items="${receiveResumeList}">
		<tr class="item">
			<th>${resume.MEMBER_NAME }</th>
			<td>
				<a href="${pageContext.request.contextPath}/resume/${resume.RESUME_ID}" target="_blank">
					${resume.RESUME_TITLE }
				</a>
			</td>
			<td>
				<a href="${pageContext.request.contextPath}/article/${resume.ARTICLE_ID}" target="_blank">
					${resume.ARTICLE_TITLE }
				</a>
			</td>
			
			<%-- 수락 버튼 --%>
			<td>
				<c:choose>
					<c:when test="${empty resume.CONSENT }">
						<span id="active" onclick="resumeConsent('${pageContext.request.contextPath}',${resume.ID})">수락 대기</span>
					</c:when>
					<c:otherwise><span id="consent">수락</span></c:otherwise>
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