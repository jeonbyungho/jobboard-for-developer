<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="b" tagdir="/WEB-INF/tags/base" %>

<c:url var="jsHashtagURL" value="/resource/js/hashtagWriter.js" ></c:url>

<b:page>
	<jsp:attribute name="head">
		<link href="https://cdn.jsdelivr.net/npm/@yaireo/tagify/dist/tagify.css" rel="stylesheet" type="text/css" />

	</jsp:attribute>
	
	<jsp:attribute name="scripts">
		<%-- Tagify 해시태그 작성 --%>
		<script src="https://cdn.jsdelivr.net/npm/@yaireo/tagify"></script>
		<script src="https://cdn.jsdelivr.net/npm/@yaireo/tagify/dist/tagify.polyfills.min.js"></script>
		<script src="${jsHashtagURL }"></script>
	</jsp:attribute>
	
	<jsp:body>
	<div class="row">
		<aside class="col-lg-2 mt-3">
			<div class="position-sticky" style="top: 5rem;">
				<button class="btn btn-primary">item</button>
				<button class="btn btn-primary">item</button>
				<button class="btn btn-primary">item</button>
				<button class="btn btn-primary">item</button>
				
				<button class="btn btn-primary w-100">미리보기</button>
				<button class="btn btn-primary w-100">저장하기</button>
			</div>
		</aside>
		
		<section class="col mt-3">
			<%-- 이력서 제목 --%>
			<div class="mb-4">
                <input type="text" name="title" id="input-title" class="form-control form-control-lg" id="input-title" placeholder="기업에게 나에 대해 알려줍시다. 강점, 목표, 관심분야도 좋아요.">
            </div>
            
            <%-- 인적사항 --%>
            <div class="mb-4">
				<h4 class="fw-bold mb-2">인적사항</h4>
				<div class="border bg-white p-3">
					<%@ include file="/WEB-INF/include/resume/form_psersonal_info.jsp" %>
				</div>
            </div>
            
            <%-- 학력 --%>
            <div class="mb-4">
				<h4 class="fw-bold mb-2">학교</h4>

				<div class="border bg-white p-3">
					<%@ include file="/WEB-INF/include/resume/form_shcool.jsp" %>

					<%@ include file="/WEB-INF/include/resume/form_shcool.jsp" %>
				</div>
            </div>
            
            <%-- 경력 --%>
            <div class="mb-4">
				<h4 class="fw-bold mb-2">경력</h4>

				<div class="border bg-white p-3">
					<%@ include file="/WEB-INF/include/resume/form_career.jsp" %>

					<%@ include file="/WEB-INF/include/resume/form_career.jsp" %>
				</div>
            </div>

			<%-- 자격증 --%>
            <div class="mb-4">
				<h4 class="fw-bold mb-2">자격증</h4>

				<div class="border bg-white p-3">
					<%@ include file="/WEB-INF/include/resume/form_certificate.jsp" %>

					<%@ include file="/WEB-INF/include/resume/form_certificate.jsp" %>
				</div>
            </div>

			<%-- 기술 스택 --%>
            <div class="mb-4">
				<h4 class="fw-bold mb-2">기술 스택</h4>
                <div class="border bg-white p-3">
					<input type="text" name="techskil" id="input-techskil" class="form-control" placeholder="기술스택">
				</div>
            </div>
            
            <%-- 자기소개서 --%>
            <div class="mb-4">
				<h4 class="fw-bold mb-2">자기소개서</h4>
                <div class="border bg-white p-3">
					<%@ include file="/WEB-INF/include/resume/form_self_introduction.jsp" %>

					<%@ include file="/WEB-INF/include/resume/form_self_introduction.jsp" %>
				</div>
            </div>

		</section>
		
		
	</div>
	</jsp:body>
</b:page>