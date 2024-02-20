<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row mb-2">
    <%-- 이름 --%>
    <div class="col-3">
        <div class="form-floating">
            <input type="text" name="realname" id="input-name" class="form-control" placeholder="이름">
            <label for="input-school-name">이름</label>
        </div>
    </div>
    
    <%-- 생년월일 --%>
    <div class="col-2">
        <div class="form-floating">
            <input type="text" name="birthday" id="input-birthday" class="form-control" placeholder="생년월일">
            <label for="input-school-name">생년월일</label>
        </div>
    </div>
    
    <%-- 성별 --%>
    <div class="col-2">
        <div class="form-floating">
            <select class="form-select">
                <option selected>-----</option>
                <option value="1">남자</option>
                <option value="2">여자</option>
            </select>
            <label for="input-school-name">성별</label>
        </div>
    </div>
    
    <%-- 이메일 --%>
    <div class="col-5">
        <div class="form-floating">
            <input type="text" name="email" id="input-birthday" class="form-control" placeholder="이메일">
            <label for="input-school-name">이메일</label>
        </div>
    </div>
</div>

<div class="row">
    <%-- 연락처 --%>
    <div class="col-3">
        <div class="form-floating">
            <input type="text" name="birthday" id="input-birthday" class="form-control" placeholder="연락처">
            <label for="input-school-name">연락처</label>
        </div>
    </div>

    <%-- 주소 --%>
    <div class="col-5">
        <div class="form-floating">
            <input type="text" name="address" id="input-birthday" class="form-control" placeholder="주소">
            <label for="input-school-name">주소</label>
        </div>
    </div>

    <%-- 상세주소 --%>
    <div class="col-4">
        <div class="form-floating">
            <input type="text" name="addressDatail" id="input-birthday" class="form-control" placeholder="상세주소">
            <label for="input-school-name">상세주소</label>
        </div>
    </div>
</div>