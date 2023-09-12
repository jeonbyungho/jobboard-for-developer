<%@page import="com.enums.DEADLINES"%>
<%@page import="com.enums.JOBS"%>
<%@page import="com.enums.ADDRESS"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 유형 선택</title>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js" defer></script>
    <script src="${pageContext.request.contextPath}/resource/js/kakaomap.js" defer></script>
    <script src="${pageContext.request.contextPath}/resource/js/signup.js" defer></script>
    <script src="${pageContext.request.contextPath}/resource/js/company_signup.js" defer></script>
    <!-- CSS 스타일 시트 -->
    <link rel="stylesheet" type="text/css" href="/jspweb/resource/css/login.css">
    <style>
        /* 스타일 시트 내용 추가 */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0,0,0,0);
            overflow: auto; 
        }

        .modal-content {
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0);
            padding: 40px;
            text-align: center;
            width: 350px;
            margin: auto;
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
        }

        .close {
            position: absolute;
            top: 10px;
            right: 10px;
            font-size: 20px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card">
            <h1>회원 유형 선택</h1>
            <!-- 개인회원 가입 버튼 -->
            <button id="openPersonalSignupButton">개인회원 가입</button>
            <!-- 기업회원 가입 버튼 -->
            <button id="openCompanySignupButton">기업회원 가입</button>
        </div>
    </div>

    <!-- 모달 창 -->
    <div id="myModal" class="modal">
        <div class="modal-content">
            <span class="close" id="closeModal">&times;</span>
            <!-- 모달 내용을 불러올 JSP 파일 -->
            <div id="modalContent"></div>
        </div>
    </div>

    <!-- JavaScript 스크립트 -->
    <script defer>
        // 모달 창 열기
        var modal = document.getElementById("myModal");
        var personalSignupBtn = document.getElementById("openPersonalSignupButton");
        var companySignupBtn = document.getElementById("openCompanySignupButton");

        personalSignupBtn.onclick = function() {
            loadModalContent("${pageContext.request.contextPath}/resource/page/login/member_signup.jsp", member_sigup); // 개인회원 가입 JSP 파일 경로
            modal.style.display = "block";
        }

        companySignupBtn.onclick = function() {
            loadModalContent("${pageContext.request.contextPath}/resource/page/login/company_signup.jsp", company_sigup); // 기업회원 가입 JSP 파일 경로
            modal.style.display = "block";
        }

        // 모달 창 닫기
        var span = document.getElementById("closeModal");
        span.onclick = function() {
            modal.style.display = "none";
        }

        // 모달 내용 불러오기
        function loadModalContent(url, e) {
            var modalContent = document.getElementById("modalContent");
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    modalContent.innerHTML = this.responseText;
                    const form = document.signupForm;
                    form.onsubmit = e;
                }
            };
            xhttp.open("GET", url, true);
            xhttp.send();
        }

        // 모달 외부 클릭 시 닫기
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>
</body>
</html>
