<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<h2 class="jops_title">주요 채용정보</h2>
	
	<ul class="jobs_tabel">
	<c:forEach begin="0" end="${arti}" step="1">
	<li class="job_item">
    	<div class="jobs_tabel_item">
    		<a href="${pageContext.request.contextPath}/article/3">

            <div class="job_item_left">
                <h4 class="company">애플 코리아 유한회사</h4>
                <h3 class="title">다양한 신입/경력직 채용</h3>
                <div class="bottom">
                    <p class="local">서울 강남구</p>
                    <p>·</p>
                    <p class="pay">3,000,000원</p>
                </div>
            </div>

            <div class="job_item_right">
                <h5 class="day">오늘마감</h5>
            </div>

        </a></div>
    	
		</li>
	</c:forEach>
	</ul>
</div>