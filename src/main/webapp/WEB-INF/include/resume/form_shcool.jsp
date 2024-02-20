<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row mb-3">
    <%-- 학교구분 | 학교명 --%>
    <div class="col-md-7">
        <div class="input-group">

            <%-- 학교구분 --%>
            <div class="form-floating" style="width: 30%;">
                <select class="form-select">
                    <option selected>-----</option>
                    <option value="1">고등학교</option>
                    <option value="1">대학교(2, 3년)</option>
                    <option value="1">대학교(4년)</option>
                    <option value="1">대학원</option>
                </select>
                <label for="input-school-name">학교 구분</label>
            </div>
            
            <%-- 학교명 --%>
            <div class="form-floating" style="width: 70%;">
                <input type="text" id="input-school-name" class="form-control" placeholder="학교 이름">
                <label for="input-school-name">학교 이름</label>
            </div>

        </div>
    </div>

    <%-- 입학, 졸업년도 | 졸업 여부 --%>
    <div class="col-md">
        <div class="input-group">
            
            <%-- 입학년도 --%>
            <div class="form-floating">
                <input type="text" id="input-school-name" class="form-control" placeholder="학교 이름">
                <label for="input-school-name">입학년월</label>
            </div>

            <span class="input-group-text">-</span>
            
            <%-- 졸업년도 --%>
            <div class="form-floating">
                <input type="text" id="input-school-name" class="form-control" placeholder="학교 이름">
                <label for="input-school-name">졸업년월</label>
            </div>

            <%-- 졸업상태 --%>
            <div class="form-floating">
                <select class="form-select">
                    <option selected>-----</option>
                    <option value="1">졸업</option>
                    <option value="1">졸업 예정</option>
                    <option value="1">재학 중</option>
                </select>
                <label for="input-school-name">졸업 여부</label>
            </div>
            
        </div>
    </div>

</div>