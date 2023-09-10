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
    
    <form action="" id="body" name="body">
        <div id="jobname" name="jobname">
            <br>
            <span id="name" name="name">구직글 올린 기업명</span>
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
                    &emsp;<span id="selectvalue" name="selectvalue">${article.job }</span>
                </td>
            </tr>
            <tr>
                <th align="center">
                    <br>
                    경력
                </th>
                <td align="left">
                    <br>
                    &emsp;<span id="career" name="career">${article.career }</span>
                </td>
            </tr>
            <tr>
                <th align="center">
                    <br>
                    급여
                </th>
                <td align="left">
                    <br>
                    &emsp;<span id="sales" name="sales">${article.salary }</span>
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
                    &emsp;<span id="need_amt" name="need_amt">${article.need_amt }</span>
                </td>
            </tr>
            <tr>
                <th align="center">
                    <br>
                    마감일
                </th>
                <td align="left">
                    <br>
                    &emsp;<span id="date" name="date">${article.deadline }</span>
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
                    &emsp;<span id="stack" name="stack">${article.tag_stack }&emsp;</span>
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
                    &emsp;<span id="name" name="name">로그인정보를 이용한 기업명</span>
                </div>
                <div id="logininfotext" name="logininfotext">
                    &emsp;&emsp;<span id="text" name="text">로그인정보를 이용한 기업설명</span>
                </div>
                <br>
                <div>
                    <table>
                        <tr>
                            <th align="center" id="logininfohead" name="logininfohead">
                                설립일
                            </th>
                            <td align="left" id="logininfobody" name="logininfobody">
                                <span id="birth">로그인정보를 이용한 설립일</span>
                            </td>
                        </tr>
                        <tr>
                            <th align="center" id="logininfohead" name="logininfohead">
                                분류
                            </th>
                            <td align="left" id="logininfobody" name="logininfobody">
                                <span id="type">로그인정보를 이용한 기업분류</span>
                            </td>
                        </tr>
                        <tr>
                            <th align="center" id="logininfohead" name="logininfohead">
                                사원 수
                            </th>
                            <td align="left" id="logininfobody" name="logininfobody">
                                <span id="employee_no" name="employee_no">로그인정보를 이용한 사원 수</span>
                            </td>
                        </tr>
                        <tr>
                            <th align="center" id="logininfohead" name="logininfohead">
                                매출액
                            </th>
                            <td align="left" id="logininfobody" name="logininfobody"> 
                                <span id="sale">로그인정보를 이용한 매출액</span>
                            </td>
                        </tr>
                        <tr>
                            <th align="center" id="logininfohead" name="logininfohead">
                                <br>
                                주소
                            </th>
                            <td align="left" id="logininfobody" name="logininfobody">
                                <br>
                                <span id="addr" name="addr">로그인정보를 이용한 주소</span>
                            </td>
                        </tr>
                        <tr>
                            <th align="center" id="logininfohead" name="logininfohead">
                                상세주소
                            </th>
                            <td align="left" id="logininfobody" name="logininfobody">
                                <span id="detail_addr">로그인정보를 이용한 상세주소</span>
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
                    &emsp;<span id="ceo">대표자명</span>
                </div>
                <br>
                <div id="logininfourl" name="logininfourl">
                    &emsp;<span id="url" name="url">홈페이지주소@ㅁㅁㅁ.com</span>
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