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
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/article-view.css"/>
	<link href="${pageContext.request.contextPath}/resource/css/body.css" rel="stylesheet"  type="text/css"/>
    <link href="${pageContext.request.contextPath}/resource/css/header.css" rel="stylesheet"  type="text/css"/>
</head>
<body>
	<c:set var="article" value="${requestScope.article }"></c:set>
	<c:set var="jobs" value="${requestScope.job }"></c:set>
	<c:set var="stacks" value="${requestScope.stack }"></c:set>
	<c:set var="company" value="${requestScope.company }"></c:set>
	<c:set var="addresss" value="${requestScope.address }"></c:set>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <header><%@ include file= "/WEB-INF/views/header.jsp" %></header>

	
    <form action="" id="reghead" name="reghead"> <!-- head-->
        <div>
            <div id="br"><!-- br대용 --></div>
        </div>
        <div id="br"><!-- br대용 --></div>
        <div id="headbox">
            <!-- 빈 라인 -->
        </div>
    </form>
    <form action="" id="body" name="body">
        <div id="jobname">
            <div id="br"><!-- br대용 --></div>
            <span id="name" name="name">${company.NAME }</span>
        </div>
        <div id="br"><!-- br대용 --></div>
        <div id="jobtitle">
            <span id="title">${article.title }</span>
        </div>
        <div id="titlebox">
            <!-- 빈 라인 -->
        </div>
    </form>
    <div id="br"><!-- br대용 --></div>
    <form action="" id="body" name="body">
        <table>
            <tr>
                <th align="center" class="articletable">
                    직무
                </th>
                <td align="left" class="articletable">
                    <c:forEach items="${jobs}" var="item">
                    	<span class="emsp" id="selectvalue">${item}</span>
                    </c:forEach>
                </td>
            </tr>
            <tr>
                <th align="center" class="articletable">
                    경력
                </th>
                <td align="left" class="articletable">
                    <c:forEach items="${fn:split(article.career, ',') }" var="item">
                    	<span class="emsp" id="career">${item}</span>
                    </c:forEach>
                </td>
            </tr>
            <tr>
                <th align="center" class="articletable">
                    급여
                </th>
                <td align="left" class="articletable">
                    <span class="emsp" id="sales">${article.salary }</span><span class="emsp">만원</span>
                </td>
            </tr>
            <tr>
                <th align="center" class="articletable">
                    지역
                </th>
                <td align="left" class="articletable">
                    <span class="emsp" id="location">${article.address } ${article.detail_addr}</span>
                </td>
            </tr>
            <tr>
                <th align="center" class="articletable">
                    모집인원
                </th>
                <td align="left" class="articletable">
                    <span class="emsp" id="need_amt">${article.need_amt }</span><span class="emsp">명</span>
                </td>
            </tr>
            <tr>
                <th align="center" class="articletable">
                    마감일
                </th>
                <td align="left" class="articletable">
                    <span class="emsp" id="date">${article.deadline.substring(0,10) }</span>
                </td>
            </tr>
        </table>
        <div id="br"><!-- br대용 --></div>
        <div id="br"><!-- br대용 --></div>
        <div>
             <p align="center">직무소개</p>
             <div id="bodybox"><!--빈 라인 --></div>
             <ul>
             	<span class="emsp" id="job_explain">${article.job_explain }</span><br>
             </ul>
        </div>
        <div id="br"><!-- br대용 --></div>
        <div>            
             <p align="center">자격요건</p>
             <div id="bodybox"><!--빈 라인 --></div>
             <ul>
             	<span class="emsp" id="qualify">${article.qualify }</span><br>
             </ul>
        </div>
        	<div id="br"><!-- br대용 --></div>
        	<div id="br"><!-- br대용 --></div>
        	<div id="bodybox"><!--빈 라인 --></div>
       	<table>
            <tr>
                <th align="center" id="stackhead">
                    태크스택
                </th>
                <td align="left" id="stackbody">
                    <c:forEach items="${stacks }" var="item">
                    	<span class="emsp" id="stack">${item}</span>
                    </c:forEach>
                </td>
            </tr>
        </table>
        <div id="bodybox"><!--빈 라인 --></div>
    </form>
    <div id="br"><!-- br대용 --></div>
    <div id="br"><!-- br대용 --></div>
<!--      <div id="bodybox"> -->
<!-- <!--                 빈 라인 -->
<!--             </div> -->
    <form action="" id="logininfobody" name="logininfobody">
        <div id="logininfodiv">
            <div id="boxhead">
                <span class="emsp">기업소개</span>
                <div id="bodybox"></div>
            </div>
            <div id="boxbody">
                <div id="logininfoname">
                    <span class="emsp" id="name">${company.NAME }</span>
                </div>
                <div id="logininfocontent">
                	<span class="emsp" id="content">${company.CONTENT }</span>
                </div>
                <div>
                <div id="box"></div>
                    <table id="companytable">
                        <tr>
                            <th align="center" id="logininfohead">
                                설립일
                            </th>
                            <td align="left" id="logininfobody">
                                <span id="birth">${fn:substring(company.ESTA, 0 , 10)}</span>
                            </td>
                        </tr>
                        <tr>
                            <th align="center" id="logininfohead">
                                분류
                            </th>
                            <td align="left" id="logininfobody">
                                <span id="type">${company.SCALE }</span>
                            </td>
                        </tr>
                        <tr>
                            <th align="center" id="logininfohead">
                                사원 수
                            </th>
                            <td align="left" id="logininfobody">
                                <span id="employee_no">${company.EMPLOYEE_NO }</span>명
                            </td>
                        </tr>
                        <tr>
                            <th align="center" id="logininfohead">
                                <div id="br"><!-- br대용 --></div>
                                주소
                            </th>
                            <td align="left" id="logininfobody">
                                <span id="addr">${company.ADDRESS }</span>
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
                    <!-- <img src="" id="photo" name="photo"> -->
                </div>
                <div id="br"><!-- br대용 --></div>
                <div id="logininfoceo">
                    <span class="emsp" id="ceo">${company.CEO }</span>
                </div>
                <div id="br"><!-- br대용 --></div>
                <div id="logininfourl">
                    <span class="emsp" id="url">${company.URL }</span>
                </div>
            </div>
        </div>
        <div id="bodybox">
            <!-- 빈 라인 -->
        </div>
        <c:if test="${not empty sessionScope.member}">
        	<c:if test="${sessionScope.member.kind}">
			<div id="join">
				<button id="buttonjoin" type="submit" name="buttonjoin" onclick="window.open('${pageContext.request.contextPath}/resume/popup?articleId=${article.id}','지원서');">지원하기</button>
				<div id="box"></div>
			</div>
			</c:if>
		</c:if>
		<div id="footbox"></div>
	</form> 
</body>
</html>