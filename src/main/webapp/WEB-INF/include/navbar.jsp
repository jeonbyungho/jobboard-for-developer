<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="landingPageURL" value="/"></c:url>
<c:url var="loginPageURL" value="${initParam.member_login }"></c:url>
<c:url var="writeJobpostPageURL" value="${initParam.jobpost_write }"></c:url>

<nav class="navbar navbar-expand-lg border-bottom sticky-top" style="background-color: #fafdffc8;">
    <div class="container">
        <%-- 로고 --%>
        <a class="navbar-brand fw-bold" href="${landingPageURL }">구인구직</a>
        <%-- 내비게이션 토글 버튼 --%>
        <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbar" aria-controls="navbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <%-- 내비게이션 메뉴 --%>
        <div class="navbar-collapse collapse" id="navbar">
            <hr class="d-lg-none">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" aria-disabled="true">Disabled</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Dropdown</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                	<a class="nav-link" href="${writeJobpostPageURL }">채용공고 작성하기</a>
                </li>
            </ul>

            <hr class="d-lg-none">
            <%-- 로그인, 로그아웃 버튼 --%>
            <div class="text-center">
                <a href="${loginPageURL }" class="btn btn btn-success">로그인</a>
                <a href="#" class="btn btn btn-success">회원가입</a>
            </div>
        </div>
    </div>
</nav>