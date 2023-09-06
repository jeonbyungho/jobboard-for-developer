<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/article-view.css">
</head>
<body>
    <form action="" id="reghead"> <!-- head-->
        <div>
            <br>
            <div id="siteimg">
                <a href="/index.jsp"><img src="${pageContext.request.contextPath}/resource/img/samplesitename.png"></a>
            </div>
            <div id="login">
                 &emsp;<a href="">로그인</a>&emsp;&emsp;<a href="">회원가입</a>
            </div>
        </div>
        <br>
        <div id="headbox">
            <!-- 빈 라인 -->
        </div>
    </form>
    <form action="" id="body">
        <div id="jobname">
            <br>
            <span id="name">구직글 올린 기업명</span>
        </div>
        <br>
        <div id="jobtitle">
            <span id="title">구직글에 작성한 제목</span>
        </div>
        <div id="bodybox">
            <!-- 빈 라인 -->
        </div>
    </form>
    <br>
    <form action="" id="body">
        <table>
            <tr>
                <th align="center">
                    직무
                </th>
                <td align="left">
                    &emsp;<span id="selectvalue">선택한 직무나옴(for문)</span>
                </td>
            </tr>
            <tr>
                <th align="center">
                    <br>
                    경력
                </th>
                <td align="left">
                    <br>
                    &emsp;<span id="career">선택한 경력나옴(for문)</span>
                </td>
            </tr>
            <tr>
                <th align="center">
                    <br>
                    급여
                </th>
                <td align="left">
                    <br>
                    &emsp;<span id="sales">작성한 급여나옴</span>
                </td>
            </tr>
            <tr>
                <th align="center">
                    <br>
                    지역
                </th>
                <td align="left">
                    <br>
                    &emsp;<span id="location">선택한 지역 나옴</span>
                </td>
            </tr>
            <tr>
                <th align="center">
                    <br>
                    모집인원
                </th>
                <td align="left">
                    <br>
                    &emsp;<span id="need_amt">작성한 모집인원 나옴</span>
                </td>
            </tr>
            <tr>
                <th align="center">
                    <br>
                    마감일
                </th>
                <td align="left">
                    <br>
                    &emsp;<span id="date">선택한 마감일 나옴</span>
                </td>
            </tr>
        </table>
        <br>
        <div id="bodybox">
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
                    &emsp;<span id="job_explain">작성한 직무소개 나옴</span>
                </td>
            </tr>
            <tr>
                <th align="center">
                    <br>
                    자격요건
                </th>
                <td align="left">
                    <br>
                    &emsp;<span id="qualify">작성한 자격요건 나옴</span>
                </td>
            </tr>
        </table>
        <br>
        <div id="bodybox">
            <!-- 빈 라인 -->
        </div>
        <table>
            <tr>
                <th align="center" id="stackhead">
                    <br>
                    태크스택
                </th>
                <td align="left" id="stackbody">
                    <br>
                    &emsp;<span id="stack">선택한 스택나옴(for문)&emsp;</span>
                </td>
            </tr>
        </table>
    </form>
    <form action="" id="logininfobody">
        <div id="logininfodiv">
            <br>
            <div id="bodybox">
                <!-- 빈 라인 -->
            </div>
            <div id="boxhead">
                <br>
                &emsp;기업소개
            </div>
            <div id="boxbody">
                <div id="logininfoname">
                    &emsp;<span id="name">로그인정보를 이용한 기업명</span>
                </div>
                <div id="logininfotext">
                    &emsp;&emsp;<span id="text">로그인정보를 이용한 기업설명</span>
                </div>
                <br>
                <div>
                    <table>
                        <tr>
                            <th align="center" id="logininfohead">
                                설립일
                            </th>
                            <td align="left" id="logininfobody">
                                <span id="birth">로그인정보를 이용한 설립일</span>
                            </td>
                        </tr>
                        <tr>
                            <th align="center" id="logininfohead">
                                분류
                            </th>
                            <td align="left" id="logininfobody">
                                <span id="type">로그인정보를 이용한 기업분류</span>
                            </td>
                        </tr>
                        <tr>
                            <th align="center" id="logininfohead">
                                사원 수
                            </th>
                            <td align="left" id="logininfobody">
                                <span id="employee_no">로그인정보를 이용한 사원 수</span>
                            </td>
                        </tr>
                        <tr>
                            <th align="center" id="logininfohead">
                                매출액
                            </th>
                            <td align="left" id="logininfobody"> 
                                <span id="sale">로그인정보를 이용한 매출액</span>
                            </td>
                        </tr>
                        <tr>
                            <th align="center" id="logininfohead">
                                <br>
                                주소
                            </th>
                            <td align="left" id="logininfobody">
                                <br>
                                <span id="addr">로그인정보를 이용한 주소</span>
                            </td>
                        </tr>
                        <tr>
                            <th align="center" id="logininfohead">
                                상세주소
                            </th>
                            <td align="left" id="logininfobody">
                                <span id="detail_addr">로그인정보를 이용한 상세주소</span>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div id="boxside">
                <div id="otherbox">
                    <!-- 사진정렬을 위한 빈칸 -->
                </div>
                <div>
                    <img src="${pageContext.request.contextPath}/resource/img/sampleimg.png" id="photo">
                </div>
                <br>
                <div id="logininfoceo">
                    &emsp;<span id="ceo">대표자명</span>
                </div>
                <br>
                <div id="logininfourl">
                    &emsp;<span id="url">홈페이지주소@ㅁㅁㅁ.com</span>
                </div>
            </div>
            <div id="footerbox">
                <!-- 빈 라인 -->
            </div>
        </div>
    </form> 
    <form action="/resume.jsp" id="joinbox">
            <div id="join">
                <button id="buttonjoin" type="submit">지원하기</button>
            </div>
    </form>
</body>
</html>