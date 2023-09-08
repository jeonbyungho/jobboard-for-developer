<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/js/article-write.js" defer></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/article-write.css">
</head>
<body>
	<c:set var="article" value="${requestScope.article }"></c:set>
    <form action="${pageContext.request.contextPath}/article" id="form" name="form" method="post">
        <div>
            <br>
            <div id="siteimg" name="siteimg">
                <a href="/*"><img src="${pageContext.request.contextPath}/resource/img/samplesitename.png"></a>
            </div>
            <div id="mypage" name="mypage">
                 &emsp;&emsp;<a href="/branch/mypage.job">마이페이지</a>
            </div>
        </div>
        <br>
        <div id="headbox" name="headbox">
            <!-- 빈 라인 -->
        </div>
        <div id="logininfo" name="logininfo">
            <br>
            <h1>구직글 작성</h1>
        </div>
        <br>
        <br>
        <div id="childbody" name="childbody">
            <table id="table" name="table">
                <tr>
                    <th align="center">
                        기업명
                    </th>
                    <td id="name" name="name" align="left" colspan="8">
                        &emsp;<span id="companyname" name="companyname">로그인정보를 이용한 기업명</span>
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <br>
                        기업설명
                    </th>
                    <td align="left" colspan="8">
                        <br>
                        &emsp;<span id="text" name="text">로그인정보를 이용한 기업설명</span>
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <br>
                        제목
                    </th>
                    <td align="left" colspan="8">
                        <br>
                        &emsp;<input type="text" id="title" name="title">
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <br>
                        직무
                    </th>
                    <td id="left" align="left" colspan="4">
                        <br>
                        <label>
                            &emsp;    모바일 <input type="checkbox" id="job" name="job" value="mobile">
                        </label>
                        <br>
                        <br>
                        <label>
                            &emsp;	  프론트엔드 <input type="checkbox" id="job" name="job" value="frontend">
                        </label>
                        <br>
                        <br>
                        <label>
                            &emsp;    풀스택 <input type="checkbox" id="job" name="job" value="fullstack">
                        </label>
                        <br>
                        <br>
                        <label>
                            &emsp;   백엔드 <input type="checkbox" id="job" name="job" value="backend">
                        </label>
                        <br>
                    </td>
                    <td id="right" align="left" colspan="4">
                        <br>
                        <label>
                            데이터 <input type="checkbox" id="job" name="job" value="data">
                        </label>
                        <br>
                        <br>
                        <label>
                            얼리얼엔진 <input type="checkbox" id="job" name="job" value="unrealengine">
                        </label>
                        <br>
                        <br>
                        <label>
                            AI <input type="checkbox" id="job" name="job" value="ai">
                        </label>
                        <br>
                        <br>
                        <label>
                            기타 <input type="checkbox" id="job" name="job" value="other">
                        </label>
                        <br>
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <br>
                        경력
                    </th>
                    <td align="left" id="career" colspan="8">
                        <br>
                        &emsp;&emsp; 신입 <input type="checkbox" id="new" name="carr"> &emsp;&emsp; 경력 <input type="checkbox" id="notnew" name="carr">
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <br>
                        급여
                    </th>
                    <td align="left" colspan="8" id="sales">
                        <br>
                        &emsp;<input type="text" id="salary" name="salary"> &emsp;  만원
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <br>
                        지역
                    </th>
                    <td align="left" colspan="8">
                        <br>
                        &emsp; <input type="text" id="location" name="location">  
                        <!-- <span id="location" name="location">로그인정보를 이용한 지역</span> -->
                    </td>
                </tr>
                <tr>
                   <th align="center">
                        <br>
                        모집인원
                   </th> 
                   <td align="left" id="need" colspan="8" name="need">
                        <br>
                        &emsp;<input type="text" id="need_amt" name="need_amt"> &emsp; 명
                   </td>
                </tr>
                <tr>
                    <th align="center">
                        <br>
                        마감일
                    </th>
                    <td align="left" id="date" colspan="8" name="date">
                        <br>
                        &emsp; <input type="text" id="deadline" name="deadline">
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <br>
                        직무소개
                    </th>
                    <td align="left" colspan="8">
                        <br>
                        &emsp;<textarea id="job_explain" name="job_explain" cols="30" rows="10" oninput='this.style.height = ""; this.style.height = this.scrollHeight + "px"'
                        style="resize: none; padding: 8px; margin: 20px;"></textarea>
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <br>
                        자격요건
                    </th>
                    <td align="left" colspan="8">
                        <br>
                        &emsp;<textarea id="qualify" name="qualify" cols="30" rows="10" oninput='this.style.height = ""; this.style.height = this.scrollHeight + "px"'
                        style="resize: none; padding: 8px; margin: 20px;"></textarea>
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <br>
                        테크스택
                    </th>
                    <td align="center" id="">
                        <br>
                        Java <input type="checkbox" id="stack" value="java" name="stack">
                        <br>
                        Spring Boot <input type="checkbox" id="stack" name="stack" value="spring boot">
                    </td>
                    <td align="center">
                        <br>
                        Spring <input type="checkbox" id="stack" name="stack" value="spring">
                        <br>
                        Android <input type="checkbox" id="stack" name="stack" value="android">
                    </td>
                    <td align="center">
                        <br>
                        Unreal5 <input type="checkbox" id="stack" name="stack" value="unreal5">
                        <br>
                        MySQL <input type="checkbox" id="stack" name="stack" value="mysql">
                    </td>
                    <td align="center">
                        <br>
                        PHP <input type="checkbox" id="stack" name="stack" value="php">
                        <br>
                        AJAX <input type="checkbox" id="stack" name="stack" value="ajax">
                    </td>
                    <td align="center">
                        <br>
                        MSSQL <input type="checkbox" id="stack" name="stack" value="mssql">
                        <br>
                        JSP <input type="checkbox" id="stack" name="stack" value="jsp">
                    </td>
                    <td align="center">
                        <br>
                        Flutter <input type="checkbox" id="stack" name="stack" value="flutter">
                        <br>
                        Python <input type="checkbox" id="stack" name="stack" value="python">
                    </td>
                    <td align="center">
                        <br>
                        R <input type="checkbox" id="stack" name="stack" value="r">
                        <br>
                        Pytorch <input type="checkbox" id="stack" name="stack" value="pytorch">
                    </td>
                    <td align="center">
                        <br>
                        Tensorflow <input type="checkbox" id="stack" name="stack" value="tensorflow">
                    </td>
                </tr>
            </table>
        </div>
        <div id="footerbox" name="footerbox">
            <!--빈박스-->
        </div>
        <div id="footerline" name="footerline">

        </div>
        <br>
        <div id="join" name="join">
            <button id="buttontext" name="buttontext" type="submit">작성완료</button>
        </div>
        <div id="footerbox" name="footerbox">
            <!--빈박스-->
        </div>
    </form>
</body>
</html>