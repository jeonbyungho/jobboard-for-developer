<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row mb-3">
    
    <div class="col-md-3">
        <%-- 회사명 --%>
        <div class="form-floating">
            <input type="text" name="companyName" id="input-company-name" class="form-control" placeholder="회사명">
            <label for="input-company-name">회사명</label>
        </div>
    </div>

    <div class="col-md-5">
        <div class="input-group">

            <%-- 부서명 --%>
            <div class="form-floating">
                <input type="text" name="companyDepartment" id="input-company-department" class="form-control" placeholder="부서명">
                <label for="input-company-department">부서명</label>
            </div>
            
            <%-- 담당 업무 --%>
            <div class="form-floating">
                <input type="text" name="jobDuties" id="input-job-duties" class="form-control" placeholder="부서명">
                <label for="input-job-duties">담당 업무</label>
            </div>

        </div>
    </div>

    <%-- 입사, 퇴사년도 --%>
    <div class="col-md">
        <div class="input-group">
            
            <%-- 입사년도 --%>
            <div class="form-floating">
                <input type="text" id="input-school-name" class="form-control" placeholder="학교 이름">
                <label for="input-school-name">입사년월</label>
            </div>
            <span class="input-group-text">-</span>
            
            <%-- 퇴사년도 --%>
            <div class="form-floating">
                <input type="text" id="input-school-name" class="form-control" placeholder="학교 이름">
                <label for="input-school-name">퇴사년월</label>
            </div>

        </div>
    </div>
</div>