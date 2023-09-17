<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>이력서 작성</title>
<script
	src="${pageContext.request.contextPath}/resource/js/resume_write.js" defer></script>
</head>
<body>
	
	<header><%@ include file= "/WEB-INF/views/header.jsp" %></header>
	
	<form action="${pageContext.request.contextPath}/resume"
		method="post" name="resumeForm">

		<fieldset id="titleField">
			<legend>이력서 제목</legend>
			<input type="text" name="title" value="제목" />
		</fieldset>

		<fieldset id="portfolioField">
			<legend>포트폴리오 주소</legend>
			<input type="text" name="portfolio" value="url" />
		</fieldset>

		<fieldset id="regField">
			<legend>경력</legend>
			<button id="regPlus">추가</button>
			<ul id="regList">

			</ul>
		</fieldset>

		<fieldset id="schoolField">
			<legend>학교</legend>
			<button id="schoolPlus">추가</button>
			<ul id="schoolList">

			</ul>
		</fieldset>

		<fieldset id="liecenceField">
			<legend>자격증</legend>
			<div class="liecenceItem">
				<button id="liecencePlus">추가</button>
				<ul id="liecenceList">
					<!-- 기존의 자격증 정보는 여기에 있음 -->
				</ul>
			</div>
		</fieldset>
		
		<fieldset id="selfField">
			<legend>자기소개</legend>
			<textarea name="self_intro" rows="4" cols="50"></textarea>
		</fieldset>

		<input type="submit" id="submit" />
	</form>
</body>
</html>