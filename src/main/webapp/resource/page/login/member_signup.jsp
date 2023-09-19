<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="container">
   <div class="card">
     <h1>회원가입</h1>
     
     <form action="${pageContext.request.contextPath}/member/signup" method="post" name="signupForm">
    	<%-- 아이디 비밀번호 입력란 --%>
      <input type="text" name="userid" id="signupUsername" placeholder="사용자 ID" required>
      <%-- <button onclick="memberIdChecking('${pageContext.request.contextPath}')">ID 중복 확인</button> --%>
      <input type="password" name="password" id="signupPassword" placeholder="비밀번호" required>
      <input type="text" name="name" id="signupName" placeholder="이름" required>
      
      <%-- 성별 입력란 --%>
      <label for="signupGender_male">남자</label>
      <input type="radio" name="gender" id="signupGender_male" value="male" required>
      <label for="signupGender_female">여자</label>
      <input type="radio" name="gender" id="signupGender_female" value="female">
      
      <%-- 계정 정보 입력란 --%>
      <input type="date" name="birthday" id="signupBirthdate" placeholder="생년월일" required>
      <input type="tel" name="phone" id="signupPhone" placeholder="휴대폰번호" required>
      <input type="email" name="email" id="signupEmail" placeholder="이메일" required>
      
      <%-- 주소 입력란 --%>
      <input type="text" name="zipcode" id="sample6_postcode" placeholder="우편번호">
		<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
      <input type="text" name="address" id="sample6_address" placeholder="주소" required>
      <input type="text" name="detail_addr" id="sample6_detailAddress" placeholder="상세주소">
      <input type="text" name="addretc" id="sample6_extraAddress" placeholder="참고항목">
      <button type="submit">가입</button>
    </form>
    
    <p>이미 계정이 있으신가요? <a href="${pageContext.request.contextPath}/member/login">로그인</a></p>
  </div>
</div>