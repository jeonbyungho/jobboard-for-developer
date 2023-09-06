<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/login.css">
</head>
<body>

	<div class="container">
    <div class="card">
      <h1>회원가입</h1>
      <form id="signupForm" class="form">
        <input type="text" id="signupUsername" placeholder="사용자 이름" required>
        <input type="password" id="signupPassword" placeholder="비밀번호" required>
        <input type="text" id="signupName" placeholder="이름" required>
        <input type="date" id="signupBirthdate" placeholder="생년월일" required>
        <input type="tel" id="signupPhone" placeholder="휴대폰번호" required>
        <input type="email" id="signupEmail" placeholder="이메일" required>
        <button type="submit">가입</button>
      </form>
      <p>이미 계정이 있으신가요? <a href="${pageContext.request.contextPath}/member/login">로그인</a></p>
    </div>
  </div>
  
</body>
</html>