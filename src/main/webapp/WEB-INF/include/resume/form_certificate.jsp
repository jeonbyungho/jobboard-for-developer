<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row mb-3">
    
    <div class="col-md-6">
        <%-- 자격증명 --%>
        <div class="form-floating">
            <input type="text" name="companyName" id="input-company-name" class="form-control" placeholder="회사명">
            <label for="input-company-name">자격증 명</label>
        </div>
    </div>

    <div class="col-md-4">
        <%-- 발행처 --%>
        <div class="form-floating">
            <input type="text" name="companyName" id="input-company-name" class="form-control" placeholder="발행처">
            <label for="input-company-name">발행처</label>
        </div>
    </div>

    <div class="col-md-2">
        <%-- 취득일 --%>
        <div class="form-floating">
            <input type="text" name="companyName" id="input-company-name" class="form-control" placeholder="취득일">
            <label for="input-company-name">취득일</label>
        </div>
    </div>
    
</div>

<hr class="mb-2">