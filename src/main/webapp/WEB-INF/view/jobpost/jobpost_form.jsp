<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="b" tagdir="/WEB-INF/tags/base" %>

<c:url var="cssFormURL" value="/resource/css/jobpost/jobpost_form.css" ></c:url>

<c:url var="jsEditorURL" value="/resource/js/editor.js" ></c:url>
<c:url var="jsHashtagURL" value="/resource/js/hashtagWriter.js" ></c:url>
<c:url var="jsFormURL" value="/resource/js/jobpost/jobpost_form.js" ></c:url>

<b:page title="채용 공고 작성">
	<jsp:attribute name="head">
		<link href="https://cdn.jsdelivr.net/npm/quill@2.0.0-rc.2/dist/quill.snow.css" rel="stylesheet">
		<link href="https://cdn.jsdelivr.net/npm/@yaireo/tagify/dist/tagify.css" rel="stylesheet" type="text/css" />
		<link href="${cssFormURL }" rel="stylesheet">
		
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js" defer></script>
	</jsp:attribute>
	
	<jsp:attribute name="scripts">
		<%-- quill 에디터 작성 --%>
		<script src="https://cdn.jsdelivr.net/npm/quill@2.0.0-rc.2/dist/quill.js"></script>
		<script src="${jsEditorURL }"></script>
		
		<%-- Tagify 해시태그 작성 --%>
		<script src="https://cdn.jsdelivr.net/npm/@yaireo/tagify"></script>
		<script src="https://cdn.jsdelivr.net/npm/@yaireo/tagify/dist/tagify.polyfills.min.js"></script>
		<script src="${jsHashtagURL }"></script>
		
		<script src="${jsFormURL }"></script>
	</jsp:attribute>
	
	<jsp:body>
		<section class="bg-white p-4 shadow-sm rounded mt-3">
			<%-- 채용 직무 --%>
			<div class="dropend mb-2">
				<button class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" data-bs-auto-close="outside">직무</button>
				<div class="dropdown-menu">
					<c:forEach var="item" begin="1" end="16">
						<input type="checkbox" name="jobTitle" class="btn-check" id="btn-check-jobtile${item }">
						<label class="btn btn-sm btn-outline-primary" for="btn-check-jobtile${item }">Job Tile ${item }</label>
					</c:forEach>
				</div>
			</div>
			
			<%-- 제목 --%>
			<div class="mb-2">
                <input type="text" name="title" id="input-title" class="form-control form-control-lg rounded-0" id="input-title" placeholder="제목">
            </div>
            
            <div class="row mb-2">
            	<%-- 주소 | 상세주소 --%>
            	<div class="col-md">
            		<%-- 주소 --%>
            		<div class="input-group mb-2">
            			<span class="input-group-text">근무지</span>
            			<input type="text" name="address" id="input-address" class="form-control" readonly="readonly">
            		</div>
            		<%-- 상세 주소 --%>
            		<div class="input-group mb-2">
            			<span class="input-group-text">상세주소</span>
            			<input type="text" name="addressDetail" id="input-address-detail" class="form-control">
            		</div>
            	</div>
	            <%-- 급여 | 경력 --%>
	            <div class="col-md">
	            	<%-- 급여 --%>
		            <div class="input-group mb-2">
		            	<span class="input-group-text">급여</span>
		            	<input type="number" name="minSalary" id="input-min-salary" class="form-control" min="0" step="1">
		            	<span class="input-group-text">만원</span>
		            	<span class="input-group-text">~</span>
		            	<input type="number" name="maxSalary" id="input-max-salary" class="form-control" min="0" step="1">
		            	<span class="input-group-text">만원</span>
		            </div>
					<%-- 경력 --%>
		            <div class="input-group">
		            	<span class="input-group-text">경력</span>
		            	<input type="number" name="minCareer" id="input-min-career" class="form-control" min="0" max="11" step="1">
		            	<span class="input-group-text">년</span>
		            	<span class="input-group-text">~</span>
		            	<input type="number" name="maxCareer" id="input-max-career" class="form-control" min="0" max="11" step="1">
		            	<span class="input-group-text">년</span>
		            </div>
	            </div>
            </div>
            <%-- 기술 스택 --%>
            <div class="mb-2">
                <input type="text" name="techskil" id="input-techskil" class="form-control rounded-0" id="input-title" placeholder="기술스택">
            </div>
            
            <%-- 게시판 에디터 --%>
			<div id="editor-container"></div>
			
			<%-- Submit 버튼 --%>
			<button id="btn-edit-submit" class="btn w-100 rounded-0 btn-primary">제출</button>
		</section>
	</jsp:body>
	
</b:page>