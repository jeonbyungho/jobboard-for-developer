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
	<script src="${pageContext.request.contextPath}/resource/js/validation_article.js" defer></script>
	
	
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/article-write.css">
    <link href="${pageContext.request.contextPath}/resource/css/header.css" rel="stylesheet"  type="text/css"/>
</head>
<body>
	<c:set var="article" value="${requestScope.article }"></c:set>
	<c:set var="company" value="${sessionScope.member }"></c:set>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	
	<header><%@ include file= "/WEB-INF/views/header.jsp" %></header>
	
    <form action="${pageContext.request.contextPath}/article" id="form" name="myForm" method="post">
        <div id="logininfo" name="logininfo">
            <div id="br"><!-- br대용 --></div>
            <h1>구직글 작성</h1>
        </div>
        <div id="br2"><!-- br대용 --></div>
        <div id="childbody" name="childbody">
            <table id="table">
                <tr>
                    <th align="center">
                        기업명
                    </th>
                    <td id="name" name="name" align="left" colspan="8">
                        <span id="name" name="name">${company.name }</span>
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
			</table>
			<div id="br"><!-- br대용 --></div>
			<div id="bodybox"></div>
			<table id="table">                
                <tr>                
                    <th align="center">
                        <div id="br"><!-- br대용 --></div>
                        제목
                    </th>
                    <td align="left" colspan="8">
                        <div id="br"><!-- br대용 --></div>
                        &emsp;<input type="text" id="title" name="title">
                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <th align="center">
                        <div id="br"><!-- br대용 --></div>
                        직무
                    </th>
                    <td id="left" align="left">
                        <div id="br"><!-- br대용 --></div>
                            &emsp;    모바일
                        <div id="br2"><!-- br대용 --></div>
                            &emsp;	  프론트엔드
                        <div id="br2"><!-- br대용 --></div>
                            &emsp;    풀스택
                        <div id="br2"><!-- br대용 --></div>
                            &emsp;   백엔드
                        <div id="br"><!-- br대용 --></div>
                    </td>
                    <td id="job_sel">
                        <div id="br"><!-- br대용 --></div>
                            <input type="checkbox" id="job" name="job" value="모바일">
                        <div id="br3"><!-- br대용 --></div>
                            <input type="checkbox" id="job" name="job" value="프론트엔드">
                        <div id="br3"><!-- br대용 --></div>
                            <input type="checkbox" id="job" name="job" value="풀스택">
                        <div id="br3"><!-- br대용 --></div>
                            <input type="checkbox" id="job" name="job" value="백엔드">
                        <div id="br"><!-- br대용 --></div>
                    </td>
                    <td id="right" align="left">
                        <div id="br"><!-- br대용 --></div>
                            &emsp;   데이터
                        <div id="br2"><!-- br대용 --></div>
                            &emsp;   언리얼엔진
                        <div id="br2"><!-- br대용 --></div>
                            &emsp;   AI
                        <div id="br2"><!-- br대용 --></div>
                            &emsp;   기타
                        <div id="br"><!-- br대용 --></div>
                    </td>
                    <td id="job_sel">
                        <div id="br"><!-- br대용 --></div>
                            <input type="checkbox" id="job" name="job" value="데이터">
                        <div id="br3"><!-- br대용 --></div>
                            <input type="checkbox" id="job" name="job" value="언리얼엔진">
                        <div id="br3"><!-- br대용 --></div>
                            <input type="checkbox" id="job" name="job" value="AI">
                        <div id="br3"><!-- br대용 --></div>
                            <input type="checkbox" id="job" name="job" value="기타">
                        <div id="br"><!-- br대용 --></div>
                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <th align="center">
                        <br>
                        경력
                    </th>
                    <td align="left" id="carr" colspan="8">
                        <div id="br"><!-- br대용 --></div>
                        &emsp;&emsp; 신입 <input type="checkbox" id="new" name="career" value="신입"> &emsp;&emsp; 경력 <input type="checkbox" id="notnew" name="career" value="경력">
                        &emsp;&emsp; 인턴 <input type="checkbox" id="new" name="career" value="인턴">
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <div id="br"><!-- br대용 --></div>
                        급여
                    </th>
                    <td align="left" colspan="8" id="sales">
                        <div id="br"><!-- br대용 --></div>
                        &emsp;<input type="text" id="salary" name="salary"> 만원
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <div id="br"><!-- br대용 --></div>
                        지역
                    </th>
                    <td align="left" colspan="1" id="locationtitle">
                        <div id="br"><!-- br대용 --></div>
                        우편번호
                        <div id="br2"><!-- br대용 --></div>
						주소
                        <div id="br2"><!-- br대용 --></div>
						상세주소
                        <div id="br2"><!-- br대용 --></div>
						참고항목
                        <!-- <span id="location" name="location">로그인정보를 이용한 지역</span> -->
                    </td>
                    <td align="left" colspan="7" id="locationdata">
                        <div id="br"><!-- br대용 --></div>
                        <input type="text" id="postcode" placeholder="우편번호" class="addr" name="zipcode">
                        <input type="hidden" name="location"/>
                        <input type="button" id="locationbutton" onclick="execDaumPostcode()" value="우편번호 찾기">
                        <div id="br2"><!-- br대용 --></div>
                        <input type="text" id="address" placeholder="주소" class="addr" name="address">
                        <div id="br2"><!-- br대용 --></div>
                        <input type="text" id="detail_addr" placeholder="상세주소" class="addr" name="detail_addr">
                        <div id="br2"><!-- br대용 --></div>
                        <input type="text" id="extraAddress" placeholder="참고항목" class="addr" name="addretc">
                    </td>
                </tr>
                <tr>
                   <th align="center">
                        <div id="br"><!-- br대용 --></div>
                        모집인원
                   </th> 
                   <td align="left" id="need" colspan="8" name="need">
                        <div id="br"><!-- br대용 --></div>
                        &emsp;<input type="text" id="need_amt" name="need_amt">명
                   </td>
                </tr>
                <tr>
                    <th align="center">
                        <div id="br"><!-- br대용 --></div>
                        마감일
                    </th>
                    <td align="left" id="date" colspan="8" name="date">
                        <div id="br"><!-- br대용 --></div>
                        &emsp; <input type="date" id="deadline" name="deadline"><!-- 날짜입력 -->
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <div id="br"><!-- br대용 --></div>
                        직무소개
                    </th>
                    <td align="left" colspan="8">
                        <div id="br"><!-- br대용 --></div>
                        &emsp;<textarea id="job_explain" name="job_explain" cols="30" rows="10" oninput='this.style.height = ""; this.style.height = this.scrollHeight + "px"'
                        style="resize: none; padding: 8px; margin: 20px;"></textarea>
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <div id="br"><!-- br대용 --></div>
                        자격요건
                    </th>
                    <td align="left" colspan="8">
                        <div id="br"><!-- br대용 --></div>
                        &emsp;<textarea id="qualify" name="qualify" cols="30" rows="10" oninput='this.style.height = ""; this.style.height = this.scrollHeight + "px"'
                        style="resize: none; padding: 8px; margin: 20px;"></textarea>
                    </td>
                </tr>
                </table>
                <table id="tagstack">
                    <tr>
                        <th align="center">
                            <div id="br"><!-- br대용 --></div>
                            테크스택
                        </th>
                        <td align="center">
                            <div id="br"><!-- br대용 --></div>
                            &emsp;Java&emsp;
                            <div id="br"><!-- br대용 --></div>
                            &emsp;Spring Boot&emsp;
                            <div id="br"><!-- br대용 --></div>
                            &emsp;Spring&emsp;
                            <div id="br"><!-- br대용 --></div>
                            &emsp;Android&emsp;
                        </td>
                        <td align="left" id="checkboxtd">
                            <div id="br"><!-- br대용 --></div>
                            &nbsp;<input type="checkbox" id="stack" value="Java" name="stack">
                            <div id="br"><!-- br대용 --></div>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="Spring Boot">
                            <div id="br"><!-- br대용 --></div>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="Spring">
                            <div id="br"><!-- br대용 --></div>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="Android">
                        </td>
                        <td align="center">
                            <div id="br"><!-- br대용 --></div>
                            &emsp;Unreal5&emsp;
                            <div id="br"><!-- br대용 --></div>
                            &emsp;MySQL&emsp;
                            <div id="br"><!-- br대용 --></div>
                            &emsp;PHP&emsp;
                            <div id="br"><!-- br대용 --></div>
                            &emsp;AJAX&emsp;
                        </td>
                        <td align="left" id="checkboxtd">
                            <div id="br"><!-- br대용 --></div>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="Unreal5">
                            <div id="br"><!-- br대용 --></div>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="MySQL">
                            <div id="br"><!-- br대용 --></div>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="PHP">
                            <div id="br"><!-- br대용 --></div>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="AJAX">
                        </td>
                        <td align="center">
                            <div id="br"><!-- br대용 --></div>
                            &emsp;MSSQL&emsp;
                            <div id="br"><!-- br대용 --></div>
                            &emsp;JSP&emsp;
                            <div id="br"><!-- br대용 --></div>
                            &emsp;Flutter&emsp;
                            <div id="br"><!-- br대용 --></div>
                            &emsp;Python&emsp;
                        </td>
                        <td align="left" id="checkboxtd">
                            <div id="br"><!-- br대용 --></div>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="MSSQL">
                            <div id="br"><!-- br대용 --></div>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="JSP">
                            <div id="br"><!-- br대용 --></div>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="Flutter">
                            <div id="br"><!-- br대용 --></div>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="Python">
                        </td>
                        <td align="center">
                            <div id="br"><!-- br대용 --></div>
                            &emsp;R&emsp;
                            <div id="br"><!-- br대용 --></div>
                            &emsp;Pytorch&emsp;
                            <div id="br"><!-- br대용 --></div>
                            &emsp;Tensorflow&emsp;
                        </td>
                        <td align="left" id="checkboxtd">
                            <div id="br"><!-- br대용 --></div>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="R">
                            <div id="br"><!-- br대용 --></div>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="Pytorch">
                            <div id="br"><!-- br대용 --></div>
                            &nbsp;<input type="checkbox" id="stack" name="stack" value="Tensorflow">
                            <div id="br"><!-- br대용 --></div>
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
        <div id="br"><!-- br대용 --></div>
        <div id="join" name="join">
            <button id="buttontext" name="buttontext" type="submit">작성완료</button>
        </div>
        <div id="footerbox" name="footerbox">
            <!--빈박스-->
        </div>
    </form>
    
    <script>
    	function execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("extraAddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("extraAddress").value = '';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('postcode').value = data.zonecode;
	                document.getElementById('address').value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById('detail_addr').focus();
	            }
	        }).open();
	    }
    </script>
</body>
</html>