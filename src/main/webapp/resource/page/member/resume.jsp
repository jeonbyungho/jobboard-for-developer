<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>이력서 작성</title>
<script
	src="${pageContext.request.contextPath}/resource/js/resume_test.js"
	defer></script>
</head>
<body>
	<form action="${pageContext.request.contextPath}/member/resume"
		method="post" name="resumeForm">

		<fieldset id="careerField">
			<legend>직무</legend>
			<input type="text" name="career" value="직무" />
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

		<input type="submit" id="submit" />
	</form>
</body>
</html>