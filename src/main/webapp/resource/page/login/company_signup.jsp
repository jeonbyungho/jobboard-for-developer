<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>기업 회원가입</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/login.css">
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js" defer></script>
    <script src="${pageContext.request.contextPath}/resource/js/kakaomap.js" defer></script>
    <script src="${pageContext.request.contextPath}/resource/js/signup.js" defer></script>
</head>
<body>
    <div class="container">
        <div class="card">
            <h1>기업 회원가입</h1>
            <form action="${pageContext.request.contextPath}/company/signup" method="post" name="signupForm">
                <input type="text" name="businessNumber" id="signupBusinessNumber" placeholder="사업자번호" required>
                <input type="password" name="password" id="signupPassword" placeholder="비밀번호" required>
                <input type="text" name="companyName" id="signupCompanyName" placeholder="기업명" required>
                <!-- 수정된 부분: type="date" -->
                <input type="date" name="establishedDate" id="signupEstablishedDate" required>
                <input type="text" name="companyType" id="signupCompanyType" placeholder="기업형태" required>
                <input type="number" name="employeeCount" id="signupEmployeeCount" placeholder="직원 수" required>
                <input type="text" name="representativeName" id="signupRepresentativeName" placeholder="대표이름" required>
                <input type="text" name="website" id="signupWebsite" placeholder="홈페이지" required>
                <input type="text" name="zipcode" id="sample6_postcode" placeholder="우편번호">
                <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
                <input type="text" name="address" id="sample6_address" placeholder="주소" required>
                <input type="text" name="detail_addr" id="sample6_detailAddress" placeholder="상세주소">
                <input type="text" name="addretc" id="sample6_extraAddress" placeholder="참고항목">
                <textarea name="companyDescription" id="signupCompanyDescription" placeholder="기업소개" required></textarea>
                <button type="submit">가입</button>
            </form>
            <p>이미 계정이 있으신가요? <a href="${pageContext.request.contextPath}/member/login">로그인</a></p>
        </div>
    </div>
</body>
</html>
