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
	
	<%-- 검색창 --%>
	<div class="search">
		<form action="">
			<input type="text" name="search" placeholder="직무, 회사, 지역,키워드로 검색해보세요."/>
			<button type="submit">
				<svg xmlns="http://www.w3.org/2000/svg" class="icon" viewBox="0 0 512 512">
				<!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
				<path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"/>
				</svg>
			</button>
		</form>
	</div>
	
	<%-- 로그인 --%>
	<div class="member">
		<c:choose>
		<%-- false --%>
			<c:when test="${empty sessionScope.member}">
				<a href="${pageContext.request.contextPath}/member/login">로그인</a>
				<span>|</span>
				<a href="${pageContext.request.contextPath}/member/signup">회원가입</a>
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
				<a id = "logout" href="${pageContext.request.contextPath}/member/logout">로그아웃</a>
			</c:otherwise>
		</c:choose>
	</div>
	
</div>