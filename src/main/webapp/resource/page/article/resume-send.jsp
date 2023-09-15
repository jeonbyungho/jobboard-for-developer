<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="${pageContext.request.contextPath}/resource/js/resume_send.js" defer></script>
<title>이력서 제출</title>
</head>
<body>
	
	<ul>
		<c:forEach items="${resumeList}" var="resume">
			<li>
				<a href="javascript:resumeSend('${pageContext.request.contextPath}/member/resume/popup', ${param.articleId}, ${resume.ID })">
					${resume.CAREER }
				</a>
			</li>
		</c:forEach>
	</ul>
</body>
</html>