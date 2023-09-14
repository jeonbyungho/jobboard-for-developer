<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/resource/js/resume_test.js" defer></script>
</head>
<body>
	<form action="${pageContext.request.contextPath}/member/resume" method="post" name="resumeForm">
		<input type="text" name="career" value="경력"/>
		<input type="text" name="portfolio" value="url"/>
		
		<div class="regItem">
			<h3>경력</h3>
			<input type="text" name="regName" value="회사1"/>
			<input type="text" name="regJob" value="backend"/>
			<input type="date" name="regSday" value="2020-01-01"/>
			<input type="date" name="regEday" value="2021-12-05"/>
		</div>
		
		<div class="regItem">
			<h3>경력</h3>
			<input type="text" name="regName" value="회사1"/>
			<input type="text" name="regJob" value="backend"/>
			<input type="date" name="regSday" value="2020-01-01"/>
			<input type="date" name="regEday" value="2021-12-05"/>
		</div>
		
		<div class="regItem">
			<h3>경력</h3>
			<input type="text" name="regName" value="회사1"/>
			<input type="text" name="regJob" value="backend"/>
			<input type="date" name="regSday" value="2020-01-01"/>
			<input type="date" name="regEday" value="2021-12-05"/>
		</div>
		
		<div class="schoolItem">
			<h3>학교</h3>
			<input type="text" name="schRating" value="대학교"/>
			<input type="text" name="schName" value="어느 대학교"/>
			<input type="text" name="schDepartment" value="컴공"/>
			<input type="text" name="schStatus" value="졸업"/>
			<input type="number" name="schGrade" value="35"/>
		</div>
		
		<div class="schoolItem">
			<h3>학교</h3>
			<input type="text" name="schRating" value="고등학교"/>
			<input type="text" name="schName" value="어디고등학교"/>
			<input type="text" name="schDepartment" value="인문계"/>
			<input type="text" name="schStatus" value="졸업"/>
			<input type="number" name="schGrade" value=""/>
		</div>
		
		<div class="liecenceItem">
			<h3>자격증</h3>
			<input type="text" name="lieTitle" value="고등학교"/>
		</div>
		
		<div class="liecenceItem">
			<h3>자격증</h3>
			<input type="text" name="lieTitle" value="고등학교"/>
		</div>
		
		<input type="submit"/>
	</form>
</body>
</html>