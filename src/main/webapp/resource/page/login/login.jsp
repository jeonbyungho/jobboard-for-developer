<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/login.css">
	<script src="${pageContext.request.contextPath}/resource/js/login.js" defer></script>
</head>
<body>
	
	<div class="container">
	  <div class="card">
	    <h1>로그인</h1>
	    <form action="${pageContext.request.contextPath}/member/login" method="post" name="loginForn">
	      <input type="text" name="userid" id="userid" placeholder="사용자 이름" required>
	      <input type="password" name="password" id="password" placeholder="비밀번호" required>
	      <button type="submit">로그인</button>
	    </form>
	    <p>계정이 없으신가요? <a href="${pageContext.request.contextPath}/member/join">회원가입</a></p>
	  </div>
	</div>
</body>
</html>