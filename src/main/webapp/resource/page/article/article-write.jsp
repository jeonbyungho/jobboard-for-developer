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
    
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js" defer></script>
	<script src="${pageContext.request.contextPath}/resource/js/kakaomap.js" defer></script>
	<script src="${pageContext.request.contextPath}/resource/js/article-write.js" defer></script>
	
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/article-write.css">
</head>
<body>
	<c:set var="article" value="${requestScope.article }"></c:set>
	<c:set var="company" value="${requestScope.company }"></c:set>
    <form action="${pageContext.request.contextPath}/article" id="form" name="myForm" method="post">
        <div>
            <br>
            <div id="siteimg" name="siteimg">
                <a href="/resuorce/index.jsp"><img src="${pageContext.request.contextPath}/resource/img/samplesitename.png"></a>
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
                        &emsp;<span id="companyname" name="companyname">${company.name }</span>
                    </td>
                </tr>
                <!-- <tr>
                    <th align="center">
                        <br>
                        기업설명
                    </th>
                    <td align="left" colspan="8">
                        <br>
                        &emsp;<span id="text" name="text">로그인정보를 이용한 기업설명</span>
                    </td>
                </tr> -->
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
            </table>
            <table>
                <tr>
                    <th align="center">
                        <br>
                        직무
                    </th>
                    <td id="left" align="left">
                        <br>
                            &emsp;    모바일
                        <br>
                        <br>
                            &emsp;	  프론트엔드
                        <br>
                        <br>
                            &emsp;    풀스택
                        <br>
                        <br>
                            &emsp;   백엔드
                        <br>
                    </td>
                    <td id="job_sel">
                        <br>
                            <input type="checkbox" id="job" name="job" value="모바일">
                        <br>
                        <br>
                        <br>
                            <input type="checkbox" id="job" name="job" value="프론트엔드">
                        <br>
                        <br>
                        <br>
                            <input type="checkbox" id="job" name="job" value="풀스택">
                        <br>
                        <br>
                        <br>
                            <input type="checkbox" id="job" name="job" value="백엔드">
                        <br>
                    </td>
                    <td id="right" align="left">
                        <br>
                            &emsp;   데이터
                        <br>
                        <br>
                            &emsp;   언리얼엔진
                        <br>
                        <br>
                            &emsp;   AI
                        <br>
                        <br>
                            &emsp;   기타
                        <br>
                    </td>
                    <td id="job_sel">
                        <br>
                            <input type="checkbox" id="job" name="job" value="데이터">
                        <br>
                        <br>
                        <br>
                            <input type="checkbox" id="job" name="job" value="언리얼엔진">
                        <br>
                        <br>
                        <br>
                            <input type="checkbox" id="job" name="job" value="AI">
                        <br>
                        <br>
                        <br>
                            <input type="checkbox" id="job" name="job" value="기타">
                        <br>
                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <th align="center">
                        <br>
                        경력
                    </th>
                    <td align="left" id="career" colspan="8">
                        <br>
                        &emsp;&emsp; 신입 <input type="checkbox" id="new" name="carr" value="신입"> &emsp;&emsp; 경력 <input type="checkbox" id="notnew" name="carr" value="경력">
                        &emsp;&emsp; 인턴 <input type="checkbox" id="new" name="carr" value="인턴">
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <br>
                        급여
                    </th>
                    <td align="left" colspan="8" id="sales">
                        <br>
                        &emsp;<input type="text" id="salary" name="salary"> 만원
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <br>
                        지역
                    </th>
                    <td align="left" colspan="1" id="locationtitle">
                        <br>
                        우편번호
                        <br>
                        <br>
						주소
                        <br>
                        <br>
						상세주소
                        <br>
                        <br>
						참고항목
                        <!-- <span id="location" name="location">로그인정보를 이용한 지역</span> -->
                    </td>
                    <td align="left" colspan="7" id="locationdata">
                        <br>
                        <input type="text" id="postcode" placeholder="우편번호" class="addr" name="zipcode">
                        <input type="hidden" name="location"/>
                        <input type="button" id="locationbutton" onclick="execDaumPostcode()" value="우편번호 찾기">
                        <br>
                        <br>
                        <input type="text" id="address" placeholder="주소" class="addr" name="addr">
                        <br>
                        <br>
                        <input type="text" id="detailAddress" placeholder="상세주소" class="addr" name="addrdetail">
                        <br>
                        <br>
                        <input type="text" id="extraAddress" placeholder="참고항목" class="addr" name="addretc">
                    </td>
                </tr>
                <tr>
                   <th align="center">
                        <br>
                        모집인원
                   </th> 
                   <td align="left" id="need" colspan="8" name="need">
                        <br>
                        &emsp;<input type="text" id="need_amt" name="need_amt">명
                   </td>
                </tr>
                <tr>
                    <th align="center">
                        <br>
                        마감일
                    </th>
                    <td align="left" id="date" colspan="8" name="date">
                        <br>
                        &emsp; <input type="date" id="deadline" name="deadline"><!-- 날짜입력 -->
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
                <table id="tagstack">
                    <tr>
                        <th align="center">
                            <br>
                            테크스택
                        </th>
                        <td align="center">
                            <br>
                            &emsp;Java&emsp;
                            <br>
                            &emsp;Spring Boot&emsp;
                            <br>
                            &emsp;Spring&emsp;
                            <br>
                            &emsp;Android&emsp;
                        </td>
                        <td align="left" id="checkboxtd">
                            <br>
                            &nbsp;<input type="checkbox" id="stack" value="Java" name="stack">
                            <br>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="Spring Boot">
                            <br>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="Spring">
                            <br>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="Android">
                        </td>
                        <td align="center">
                            <br>
                            &emsp;Unreal5&emsp;
                            <br>
                            &emsp;MySQL&emsp;
                            <br>
                            &emsp;PHP&emsp;
                            <br>
                            &emsp;AJAX&emsp;
                        </td>
                        <td align="left" id="checkboxtd">
                            <br>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="Unreal5">
                            <br>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="MySQL">
                            <br>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="PHP">
                            <br>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="AJAX">
                        </td>
                        <td align="center">
                            <br>
                            &emsp;MSSQL&emsp;
                            <br>
                            &emsp;JSP&emsp;
                            <br>
                            &emsp;Flutter&emsp;
                            <br>
                            &emsp;Python&emsp;
                        </td>
                        <td align="left" id="checkboxtd">
                            <br>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="MSSQL">
                            <br>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="JSP">
                            <br>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="Flutter">
                            <br>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="Python">
                        </td>
                        <td align="center">
                            <br>
                            &emsp;R&emsp;
                            <br>
                            &emsp;Pytorch&emsp;
                            <br>
                            &emsp;Tensorflow&emsp;
                        </td>
                        <td align="left" id="checkboxtd">
                            <br>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="R">
                            <br>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="Pytorch">
                            <br>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="Tensorflow">
                            <br>
                        </td>
                    </tr>
                </table>
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