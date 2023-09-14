<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/member/resume" method="post">
		<input type="text" name="career" value="경력"/>
		<input type="text" name="portfolio" value="url"/>
		
		<div>
			<input type="text" name="regName" value="회사1"/>
			<input type="text" name="regJob" value="backend"/>
			<input type="date" name="regSday" value="2020-01-01"/>
			<input type="date" name="regEday" value="2021-12-05"/>
		</div>
		
		<div>
			<input type="text" name="regName"/>
			<input type="text" name="regJob"/>
			<input type="date" name="regSday"/>
			<input type="date" name="regEday"/>
		</div>
		<input type="submit"/>
	</form>
</body>
</html>