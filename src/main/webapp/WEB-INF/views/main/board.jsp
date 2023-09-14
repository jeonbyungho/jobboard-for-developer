<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<h2 class="jops_title">주요 채용정보</h2>
	
	<ul class="jobs_tabel">
		<c:forEach var="aritcle" items="${articleList}">
		<li class="job_item">
	    	<div class="jobs_tabel_item">
	    		<a href="${pageContext.request.contextPath}/article/${aritcle.id}">
		            <div class="job_item_left">
		                <h4 class="company">애플 코리아 유한회사</h4>
		                <h3 class="title">${aritcle.title}</h3>
		                <div class="bottom">
		                    <p class="local">${aritcle.location}</p>
		                    <p>·</p>
		                    <p class="pay">${aritcle.salary}원</p>
		                </div>
		            </div>
		
		            <div class="job_item_right">
		                <h5 class="day">${aritcle.deadline}</h5>
		            </div>
	        	</a>
	        </div>
		</li>
		</c:forEach>
	</ul>
</div>