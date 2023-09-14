<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="container">
    <div class="card">
        <h1>기업 회원가입</h1>
        <form action="${pageContext.request.contextPath}/company/signup" method="post" name="signupForm">
            <input type="text" name="company_no" id="signupBusinessNumber" placeholder="사업자번호" required>
            <input type="password" name="password" id="signupPassword" placeholder="비밀번호" required>
            <input type="text" name="name" id="signupCompanyName" placeholder="기업명" required>
            <!-- 수정된 부분: type="date" -->
            <input type="date" name="esta" id="signupEstablishedDate" required>
            <input type="text" name="scale" id="signupCompanyType" placeholder="기업형태" required>
            <input type="number" name="employee_no" id="signupEmployeeCount" placeholder="직원 수" required>
            <input type="text" name="ceo" id="signupRepresentativeName" placeholder="대표이름" required>
            <input type="url" name="url" id="signupWebsite" placeholder="홈페이지" required>
            <input type="text" name="zipcode" id="sample6_postcode" placeholder="우편번호">
            <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
            <input type="text" name="address" id="sample6_address" placeholder="주소" required>
            <input type="text" name="detail_addr" id="sample6_detailAddress" placeholder="상세주소">
            <input type="text" name="addretc" id="sample6_extraAddress" placeholder="참고항목">
            <textarea name="content" id="signupCompanyDescription" placeholder="기업소개" required></textarea>
            <button type="submit">가입</button>
        </form>
        <p>이미 계정이 있으신가요? <a href="${pageContext.request.contextPath}/member/login">로그인</a></p>
    </div>
</div>
