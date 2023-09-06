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
    <form action="" name="reghead"> <!-- head-->
        <div>
            <br>
            <div name="siteimg">
                <a href="/index.jsp"><img src="${pageContext.request.contextPath}/resource/img/samplesitename.png" alt=""></a>
            </div>
            <div name="login">
                 &emsp;<a href="">로그인</a>&emsp;&emsp;<a href="">회원가입</a>
            </div>
        </div>
        <br>
        <div name="headbox">
            <!-- 빈 라인 -->
        </div>
    </form>
    <form action="" name="body">
        <div name="jobname">
            <br>
            <span name="name">구직글 올린 기업명</span>
        </div>
        <br>
        <div name="jobtitle">
            <span name="title">구직글에 작성한 제목</span>
        </div>
        <div name="bodybox">
            <!-- 빈 라인 -->
        </div>
    </form>
    <br>
    <form action="" name="body">
        <table>
            <tr>
                <th align="center">
                    직무
                </th>
                <td align="left">
                    &emsp;<span name="selectvalue">선택한 직무나옴(for문)</span>
                </td>
            </tr>
            <tr>
                <th align="center">
                    <br>
                    경력
                </th>
                <td align="left">
                    <br>
                    &emsp;<span name="career">선택한 경력나옴(for문)</span>
                </td>
            </tr>
            <tr>
                <th align="center">
                    <br>
                    급여
                </th>
                <td align="left">
                    <br>
                    &emsp;<span name="sales">작성한 급여나옴</span>
                </td>
            </tr>
            <tr>
                <th align="center">
                    <br>
                    지역
                </th>
                <td align="left">
                    <br>
                    &emsp;<span name="location">선택한 지역 나옴</span>
                </td>
            </tr>
            <tr>
                <th align="center">
                    <br>
                    모집인원
                </th>
                <td align="left">
                    <br>
                    &emsp;<span name="need_amt">작성한 모집인원 나옴</span>
                </td>
            </tr>
            <tr>
                <th align="center">
                    <br>
                    마감일
                </th>
                <td align="left">
                    <br>
                    &emsp;<span name="date">선택한 마감일 나옴</span>
                </td>
            </tr>
        </table>
        <br>
        <div name="bodybox">
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
                    &emsp;<span name="job_explain">작성한 직무소개 나옴</span>
                </td>
            </tr>
            <tr>
                <th align="center">
                    <br>
                    자격요건
                </th>
                <td align="left">
                    <br>
                    &emsp;<span name="qualify">작성한 자격요건 나옴</span>
                </td>
            </tr>
        </table>
        <br>
        <div name="bodybox">
            <!-- 빈 라인 -->
        </div>
        <table>
            <tr>
                <th align="center" name="stackhead">
                    <br>
                    태크스택
                </th>
                <td align="left" name="stackbody">
                    <br>
                    &emsp;<span name="stack">선택한 스택나옴(for문)&emsp;</span>
                </td>
            </tr>
        </table>
    </form>
    <form action="" name="logininfobody">
        <div name="logininfodiv">
            <br>
            <div name="bodybox">
                <!-- 빈 라인 -->
            </div>
            <div name="boxhead">
                <br>
                &emsp;기업소개
            </div>
            <div name="boxbody">
                <div name="logininfoname">
                    &emsp;<span name="name">로그인정보를 이용한 기업명</span>
                </div>
                <div name="logininfotext">
                    &emsp;&emsp;<span name="text">로그인정보를 이용한 기업설명</span>
                </div>
                <br>
                <div>
                    <table>
                        <tr>
                            <th align="center" name="logininfohead">
                                설립일
                            </th>
                            <td align="left" name="logininfobody">
                                <span name="birth">로그인정보를 이용한 설립일</span>
                            </td>
                        </tr>
                        <tr>
                            <th align="center" name="logininfohead">
                                분류
                            </th>
                            <td align="left" name="logininfobody">
                                <span name="type">로그인정보를 이용한 기업분류</span>
                            </td>
                        </tr>
                        <tr>
                            <th align="center" name="logininfohead">
                                사원 수
                            </th>
                            <td align="left" name="logininfobody">
                                <span name="employee_no">로그인정보를 이용한 사원 수</span>
                            </td>
                        </tr>
                        <tr>
                            <th align="center" name="logininfohead">
                                매출액
                            </th>
                            <td align="left" name="logininfobody"> 
                                <span name="sale">로그인정보를 이용한 매출액</span>
                            </td>
                        </tr>
                        <tr>
                            <th align="center" name="logininfohead">
                                <br>
                                주소
                            </th>
                            <td align="left" name="logininfobody">
                                <br>
                                <span name="addr">로그인정보를 이용한 주소</span>
                            </td>
                        </tr>
                        <tr>
                            <th align="center" name="logininfohead">
                                상세주소
                            </th>
                            <td align="left" name="logininfobody">
                                <span name="detail_addr">로그인정보를 이용한 상세주소</span>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div name="boxside">
                <div name="otherbox">
                    <!-- 사진정렬을 위한 빈칸 -->
                </div>
                <div>
                    <img src="" name="photo">
                </div>
                <br>
                <div name="logininfoceo">
                    &emsp;<span name="ceo">대표자명</span>
                </div>
                <br>
                <div name="logininfourl">
                    &emsp;<span name="url">홈페이지주소@ㅁㅁㅁ.com</span>
                </div>
            </div>
            <div name="footerbox">
                <!-- 빈 라인 -->
            </div>
        </div>
    </form> 
    <form action="/resume.jsp" name="joinbox">
            <div name="join">
                <button name="buttonjoin" type="submit">지원하기</button>
            </div>
    </form>
</body>
</html>