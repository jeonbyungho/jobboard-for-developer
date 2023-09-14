<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>     
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/article-view.css">
	<link href="${pageContext.request.contextPath}/resource/css/header.css" rel="stylesheet"  type="text/css"/>
</head>
<body>
	<c:set var="article" value="${requestScope.article }"></c:set>

    <header><%@ include file= "/WEB-INF/views/header.jsp" %></header>

	<c:set var="company" value="${requestScope.company }"></c:set>
    <form action="" id="reghead" name="reghead"> <!-- head-->
        <div>
            <br>
        </div>
        <br>
        <div id="headbox" name="headbox">
            <!-- 빈 라인 -->
        </div>
    </form>

    <form action="" id="body" name="body">
        <div id="jobname" name="jobname">
            <br>
            <span id="name" name="name">${company.name }</span>
        </div>
        <br>
        <div id="jobtitle" name="jobtitle">
            <span id="title">${article.title }</span>
        </div>
        <div id="bodybox" name="bodybox">
            <!-- 빈 라인 -->
        </div>
    </form>
    <br>
    <form action="" id="body" name="body">
        <table>
            <tr>
                <th align="center">
                    직무
                </th>
                <td align="left">
                    <c:forEach items="${fn:split(article.job, ',') }" var="item">
                    	&emsp;<span id="selectvalue" name="selectvalue">${item}</span>
                    </c:forEach>
                </td>
            </tr>
            <tr>
                <th align="center">
                    <br>
                    경력
                </th>
                <td align="left">
                    <br>
                    <c:forEach items="${fn:split(article.career, ',') }" var="item">
                    	&emsp;<span id="career" name="career">${item}</span>
                    </c:forEach>
                </td>
            </tr>
            <tr>
                <th align="center">
                    <br>
                    급여
                </th>
                <td align="left">
                    <br>
                    &emsp;<span id="sales" name="sales">${article.salary }</span>만원
                </td>
            </tr>
            <tr>
                <th align="center">
                    <br>
                    지역
                </th>
                <td align="left">
                    <br>
                    &emsp;<span id="location" name="location">${article.location }</span>
                </td>
            </tr>
            <tr>
                <th align="center">
                    <br>
                    모집인원
                </th>
                <td align="left">
                    <br>
                    &emsp;<span id="need_amt" name="need_amt">${article.need_amt }</span>명
                </td>
            </tr>
            <tr>
                <th align="center">
                    <br>
                    마감일
                </th>
                <td align="left">
                    <br>
                    &emsp;<span id="date" name="date">${article.deadline.substring(0,10) }</span>
                </td>
            </tr>
        </table>
        <br>
        <div id="bodybox" name="bodybox">
            <!-- 빈 라인 -->
        </div>
        <table>
            <tr>
                <th align="center">
                    <br>
                    직무소개
                </th>
                <td align="left">
                    <br>
                    &emsp;<span id="job_explain" name="job_explain">${article.job_explain }</span>
                </td>
            </tr>
            <tr>
                <th align="center">
                    <br>
                    자격요건
                </th>
                <td align="left">
                    <br>
                    &emsp;<span id="qualify" name="qualify">${article.qualify }</span>
                </td>
            </tr>
        </table>
        <br>
        <div id="bodybox" name="bodybox">
            <!-- 빈 라인 -->
        </div>
        <table>
            <tr>
                <th align="center" id="stackhead" name="stackhead">
                    <br>
                    태크스택
                </th>
                <td align="left" id="stackbody" name="stackbody">
                    <br>
                    <c:forEach items="${fn:split(article.tag_stack, ',') }" var="item">
                    	&emsp;<span id="stack" name="stack">${item}</span>
                    </c:forEach>
                </td>
            </tr>
        </table>
    </form>
    <form action="" id="logininfobody" name="logininfobody">
        <div id="logininfodiv" name="logininfodiv">
            <br>
            <div id="bodybox" name="bodybox">
                <!-- 빈 라인 -->
            </div>
            <div id="boxhead" name="boxhead">
                <br>
                &emsp;기업소개
            </div>
            <div id="boxbody" name="boxbody">
                <div id="logininfoname" name="logininfoname">
                    &emsp;<span id="name" name="name">${company.name }</span>
                </div>
                <div id="logininfotext" name="logininfotext">
                    &emsp;&emsp;<span id="text" name="text"><!-- 기업 설명 테이블이 아직 없음 --></span>
                </div>
                <br>
                <div>
                    <table>
                        <tr>
                            <th align="center" id="logininfohead" name="logininfohead">
                                설립일
                            </th>
                            <td align="left" id="logininfobody" name="logininfobody">
                                <span id="birth">${company.birth }</span>
                            </td>
                        </tr>
                        <tr>
                            <th align="center" id="logininfohead" name="logininfohead">
                                분류
                            </th>
                            <td align="left" id="logininfobody" name="logininfobody">
                                <span id="type">${company.type }</span>
                            </td>
                        </tr>
                        <tr>
                            <th align="center" id="logininfohead" name="logininfohead">
                                사원 수
                            </th>
                            <td align="left" id="logininfobody" name="logininfobody">
                                <span id="employee_no" name="employee_no">${company.employee_no }</span>명
                            </td>
                        </tr>
                        <%-- <tr>
                            <th align="center" id="logininfohead" name="logininfohead">
                                매출액
                            </th>
                            <td align="left" id="logininfobody" name="logininfobody"> 
                                <span id="sale">${company.sale }</span>
                            </td>
                        </tr> --%>
                        <tr>
                            <th align="center" id="logininfohead" name="logininfohead">
                                <br>
                                주소
                            </th>
                            <td align="left" id="logininfobody" name="logininfobody">
                                <br>
                                <span id="addr" name="addr">${company.addr }</span>
                            </td>
                        </tr>
                        <tr>
                            <th align="center" id="logininfohead" name="logininfohead">
                                상세주소
                            </th>
                            <td align="left" id="logininfobody" name="logininfobody">
                                <span id="detail_addr">${company.detail_addr }</span>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div id="boxside" name="boxside">
                <div id="otherbox" name="otherbox">
                    <!-- 사진정렬을 위한 빈칸 -->
                </div>
                <div>
                    <img src="" id="photo" name="photo">
                </div>
                <br>
                <div id="logininfoceo" name="logininfoceo">
                    &emsp;<span id="ceo">${company.ceo }</span>
                </div>
                <br>
                <div id="logininfourl" name="logininfourl">
                    &emsp;<span id="url" name="url">${company.url }</span>
                </div>
            </div>
            <div id="footerbox" name="footerbox">
                <!-- 빈 라인 -->
            </div>
        </div>
    </form> 
    <form action="${pageContext.request.contextPath}/resume.jsp" id="joinbox" name="joinbox">
            <div id="join" name="join">
                <button id="buttonjoin" type="submit" name="buttonjoin">지원하기</button>
            </div>
    </form>
</body>
</html>