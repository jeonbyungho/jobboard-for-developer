<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="${pageContext.request.contextPath}/resource/js/resume_consent.js" defer></script>
    <title>Document</title>
    <link rel="stylesheet" href="tmp.css">
</head>

<body>
    <div id="head">
        <div id="headcontain">
            <div id="siteimg">
                <a href=""><img src="branch.jpg"></a>
            </div>
          
            <div id="register">
                <button></button>
            </div>
        </div>
    </div>
    <section class="notice">
        <div class="page-title">
            <div class="container">
             
            </div>
        </div>
        <!-- board seach area -->
        <div id="board-search">
            <div class="container">
                <div class="search-window">
                    <form action="">
                        <div>
                            <button type="button" onclick="article_search('resume')">이력서목록 검색</button>
                        </div>
        
                        <div>
                            <button type="button" onclick="article_search('company')">지원기업 검색</button>
                        </div>
        
                        <div>
                            <button type="button" onclick="article_search('offer')">입사제안 검색</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- board list area -->
        <div id="board-list">
            <div class="container">
                <table class="board-table">
                    <thead>
                        <tr>
                            <th scope="col" class="th-name">구인글</th>
                            <th scope="col" class="th-title">지원자</th>
                            <th scope="col" class="th-job">이력서</th>
                            <th scope="col" class="th-career">버튼</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="resume" items="${receiveResumeList}">
					    	<tr>
	                            <td>${resume.ARTICLE_TITLE }</td>
	                            <td>${resume.MEMBER_NAME }</td>
	                            <td>${resume.RESUME_TITLE }</td>
	                            <td>
		                            <c:choose>
		                            	<c:when test="${empty resume.CONSENT }">
		                            		<button onclick="resumeConsent('${pageContext.request.contextPath}',${resume.ID})">수락</button>
		                            	</c:when>
		                            	<c:otherwise>
		                            		${resume.CONSENT }
		                            	</c:otherwise>
		                            </c:choose>
	                            </td>
					    	</tr>
					    </c:forEach>
                </table>
            </div>
        </div>
    </section>
</body>
</html>