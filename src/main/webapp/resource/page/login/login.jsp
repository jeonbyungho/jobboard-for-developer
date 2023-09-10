<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/login.css">
	<script src="${pageContext.request.contextPath}/resource/js/login.js" defer></script>
	
	<style type="text/css">
		.login-On {
			border-top: 4px solid #3498db;
			cursor: auto;
		}
		.login-Off {
			border-top: 0;
			cursor: pointer;
		}
	</style>
	
</head>
<body>
	
	<div class="container">
	  <div class="card">
	  	<div>
	  		<span id="memberSelect">개인회원</span>
	  		<span id="companySelect">기업회원</span>
	  	</div>
	    <h1>로그인</h1>
	    <form action="${pageContext.request.contextPath}/member/login" method="post" name="loginForn">
	      <input type="text" name="userid" id="userid" placeholder="사용자 이름" required>
	      <input type="password" name="password" id="password" placeholder="비밀번호" required>
	      <button type="submit">로그인</button>
	    </form>
	    <p>계정이 없으신가요? <a href="${pageContext.request.contextPath}/member/signup">회원가입</a></p>
	  </div>
	</div>
	
	<script defer>
		const memberEle = document.getElementById('memberSelect')
		const companyEle = document.getElementById('companySelect')
		const useridEle = document.getElementById('userid');
		
		function memberFormChange(e){
			const form = document.loginForn
			form.action = "${pageContext.request.contextPath}/member/login"
			useridEle.placeholder = "아이디"
			
			memberEle.classList.add("login-On");
			memberEle.classList.remove("login-Off");
			
			companyEle.classList.remove("login-On");
			companyEle.classList.add("login-Off");
		}
		
		function companyFormChange(e){
			const form = document.loginForn
			form.action = "${pageContext.request.contextPath}/company/login"
			useridEle.placeholder = "사업자 번호"
			
			memberEle.classList.remove("login-On");
			memberEle.classList.add("login-Off");
			
			companyEle.classList.add("login-On");
			companyEle.classList.remove("login-Off");
		}
		
		window.onpageshow = memberFormChange
		memberEle.onclick = memberFormChange
		companyEle.onclick = companyFormChange
	</script>
	
</body>
</html>