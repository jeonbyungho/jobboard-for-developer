<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="header container">
	<%-- 브랜드 로고 --%>
	<div class="site_logo">
		<a href="${pageContext.request.contextPath}">
			<img src="${pageContext.request.contextPath}/resource/img/samplesitename.png" alt="logo">
		</a>
	</div>
	
	<%-- 로그인 --%>
	<div class="member">
		<c:choose>
		<%-- false --%>
			<c:when test="${empty sessionScope.member}">
				<a href="${pageContext.request.contextPath}/login">로그인</a>
				<span>|</span>
				<a href="${pageContext.request.contextPath}/signup">회원가입</a>
			</c:when>
		<%-- true --%>
			<c:otherwise>
				<script src="${pageContext.request.contextPath}/resource/js/logout.js" defer></script>
				<c:choose>
					<%-- 구직자 --%>
					<c:when test="${sessionScope.member.kind }">
						<a href="${pageContext.request.contextPath}/member">${sessionScope.member.name}님 |</a>
						<a href="${pageContext.request.contextPath}/resume/write">이력서 등록</a>
					</c:when>
					<%-- 기업 --%>
					<c:otherwise>
						<a href="${pageContext.request.contextPath}/company">${sessionScope.member.name} |</a>
						<a href="${pageContext.request.contextPath}/article/write">구인글 등록</a>
					</c:otherwise>
				</c:choose>
				<span>|</span>
				<a id = "logout" href="${pageContext.request.contextPath}/logout">로그아웃</a>
			</c:otherwise>
		</c:choose>
	</div>
	
</div>