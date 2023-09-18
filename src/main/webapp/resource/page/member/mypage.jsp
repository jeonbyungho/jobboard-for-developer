<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" href="mypage.css">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${sessionScope.member.name}</title>
    
    <link href="${pageContext.request.contextPath}/resource/css/body.css" rel="stylesheet"  type="text/css"/>
    <link href="${pageContext.request.contextPath}/resource/css/header.css" rel="stylesheet"  type="text/css"/>
    <link href="${pageContext.request.contextPath}/resource/css/board.css" rel="stylesheet"  type="text/css"/>
</head>

<body>
    <header><%@ include file= "/WEB-INF/views/header.jsp" %></header>
    <nav><%@ include file= "/WEB-INF/views/mypage/menu.jsp" %></nav>
    
    <%-- 이력서 테이블 --%>
    <table id="board">
    	<tr>
    		<th>번호</th>
    		<th>이력서</th>
    	</tr>
    
   	<%-- 이력서 목록 --%>
	<c:forEach var="resume" items="${resumeList}">
		<tr class="item">
			<th>${resume.RN }</th>
			<td>
				<a href="${pageContext.request.contextPath}/resume/${resume.ID}" target="_blank">
					${resume.TITLE }
				</a>
			</td>
		</tr>
	</c:forEach>
	</table>
    
	<%-- 페이징 --%>
	<div align="center">
		<c:set var="pagePath" value="/member?page"/>
		<%@ include file= "/WEB-INF/views/board/page_number.jsp" %>
	</div>
</body>
</html>