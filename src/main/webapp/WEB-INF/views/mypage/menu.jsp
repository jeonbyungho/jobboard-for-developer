<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<ul>
	<c:choose>
	<%-- 회원 --%>
	<c:when test="${sessionScope.member.kind }">
	<li>
		<a href="${pageContext.request.contextPath}/member">
			이력서 목록
		</a>
	</li>
	<li>
		<a href="${pageContext.request.contextPath}/member/submit">
			제출한 이력서
		</a>
	</li>
	</c:when>
	<%-- 기업 --%>
	<c:otherwise>
	<li>
		<a href="${pageContext.request.contextPath}/company">
			게시판 목록
		</a>
	</li>
	<li>
		<a href="${pageContext.request.contextPath}/company/receive">
			받은 이력서
		</a>
	</li>
	</c:otherwise>
	</c:choose>
</ul>