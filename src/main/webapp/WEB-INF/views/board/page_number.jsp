<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  

<%-- 이전 페이지 --%>
<c:if test="${nowPage > 1 }">
	<a href="${pageContext.request.contextPath}/${pagePath}=${nowPage - 1}">◀</a>
</c:if>

<%-- 페이지 번호 --%>
<c:forEach var="p" begin="${startPage}" end="${endPage}">
	<c:choose>
		<c:when test="${p != nowPage }">
			<a href="${pageContext.request.contextPath}/${pagePath}=${p}">[${p }]</a>
		</c:when>
		<c:otherwise>
			<span>[${p }]</span>
		</c:otherwise>
	</c:choose>
</c:forEach>

<%-- 다음 페이지 --%>
<c:if test="${nowPage < endPage }">
	<a href="${pageContext.request.contextPath}/${pagePath}=${nowPage + 1}">▶</a>
</c:if>