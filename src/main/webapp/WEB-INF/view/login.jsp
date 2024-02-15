<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="b" tagdir="/WEB-INF/tags/base" %>

<b:page title="로그인" navbarRemove="true">
    <section class="row min-vh-100 align-items-center justify-content-center">
        <div class="bg-white p-5 shadow-sm rounded-4 col-lg-5 col-md-5">
            <h2 class="mb-4 fw-bold text-center">로그인</h2>

            <form method="post" name="loginForm">
                <div class="btn-group w-100 mb-3">
                    <input type="radio" name="memberType" class="btn-check" id="btn-check-memberType-1" checked>
                    <label class="btn btn-outline-secondary" for="btn-check-memberType-1">개인회원</label>

                    <input type="radio" name="memberType" class="btn-check" id="btn-check-memberType-2">
                    <label class="btn btn-outline-secondary" for="btn-check-memberType-2">기업회원</label>
                </div>

                <div class="alert alert-danger">
                    A simple danger alert—check it out!
                </div>

                <div class="mb-3">
                    <input  type="text" name="username" id="input-username" 
                            class="form-control form-control-lg" placeholder="아이디" maxlength="20"/>
                </div>
                <div class="mb-3">
                    <input  type="password" name="password" id="input-password" 
                            class="form-control form-control-lg" placeholder="비밀번호" maxlength="20"/>
                </div>
                
                <div class="mb-2">
                    <button type="submit" class="btn btn-lg w-100 btn btn-success">로그인</button>
                </div>
            </form>
            
            <hr>

            <div class="text-center">
                <a href="#" class="link-secondary">아이디 찾기</a> | 
                <a href="#" class="link-secondary">비밀번호 찾기</a> | 
                <a href="#" class="link-primary">회원가입</a>
            </div>
            
        </div>
    </section>
</b:page>