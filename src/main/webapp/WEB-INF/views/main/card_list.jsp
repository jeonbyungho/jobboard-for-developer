<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<h2 class="jops_title">대표 기업</h2>
	<ul class="jops_list">
	<%-- 대표 기업 항목 --%>
		<c:forEach var="aritcle" items="${articleList}">
		<li class="job_item" onclick="location.href='${pageContext.request.contextPath}/article/${aritcle.ID}'">
			<h4 class="company">${aritcle.NAME }</h4>
			<h3 class="title">${aritcle.TITLE }</h3>
			<div class="bottom">
				<p class="local">${article.adreess}</p>
			</div>
		</li>
		</c:forEach>
	</ul>
</div>