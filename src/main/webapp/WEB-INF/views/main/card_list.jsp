<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<h2 class="jops_title">대표 기업</h2>
	<ul class="jops_list">
	<%-- 대표 기업 항목 --%>
		<c:forEach var="aritcle" items="${articleList}">
		<li class="job_item">
			<a href="${pageContext.request.contextPath}/article/${aritcle.id}">
				<img src="${pageContext.request.contextPath}/resource/img/apple.png" class="logo"/>
				<h4 class="company">애플 코리아 유한회사</h4>
				<h3 class="title">${aritcle.title}</h3>
				<div class="bottom">
					<p class="local">${aritcle.location}</p>
					<p>·</p>
					<p class="pay">${aritcle.salary}원</p>
				</div>
			</a>
		</li>
		</c:forEach>
	</ul>
</div>