<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/articlelist.css">
</head>
<body>
    <form id="board" action="">
    <c:set var="articleList" value="${requestScope.articleList }" />
	<c:set var="totalCnt" value="${requestScope.totalCnt }" />
        <div id="head">
            <div id="siteimg">
                <a href=""><img src="${pageContext.request.contextPath}/resource/img/teamlogo.jpg" alt=""></a>
            </div>
            <div id="explain" style="padding-top:5px;">
                채용공고
            </div>
            <div id="register">
                <button>인제풀 등록하기</button>
            </div>
        </div>

        <div id="line1">
        </div>

        <div id="search">
            <select id="job" >
                <option value="default" selected>직무</option>
                <option value="backend">백엔드</option>
                <option value="frontend">프론트엔드</option>
                <option value="fullstack">풀스택</option>
            </select>
            <select id="career" >
                <option value="default" selected>경력</option>
                <option value="newbie">신입</option>
                <option value="senior">경력</option>
                <option value="intern">인턴</option>
            </select>
            <input type=button value="검색" onclick = "article_search();"/>
            <span id="cnt">
                &emsp; 글 개수 ${totalCnt } 개
            </span>
        </div>

        

        <div class="job-list">
            
            <div style="width:900px;">
                <div class="banner" align="left">
                    <div id="fix1" style="float:left; width:100px;" >번호</div>
                    <div style="float:left; width:150px;" >기업이름</div>
                    <div style="float:left; width:150px;" >제목</div>
                    <div style="float:left; width:150px;" >직무</div>
                    <div style="float:left; width:150px;" >경력</div>
                    <div style="float:left; width:150px;" >연봉</div>
                    <div style="float:left; width:150px;" >주소</div>
                    <div style="float:left; width:200px;" >채용수</div>
                </div>


                <c:choose>
                	<c:when test="${articleList != null and fn:length(articleList) > 0 }">
                		<c:forEach var="article" items="${articleList }">
                			<a href="${pageContext.request.contextPath}/article/${article.ID}">
                				<div id="main" style="border-bottom:1px solid #CCD1D1; b-color:#03D069;" class="content" align="left"  
								onmouseover="this.style.background='#bbdefb'" onmouseout="this.style.background=''" >
									<div style="float: left; width: 100px; color:#03D069">${article.id }</div>
									<div style="float: left; width: 150px;">${article.R }</div>
									<div style="float: left; width: 150px;">${article.NAME }</div>
									<div style="float: left; width: 150px;">${article.TITLE }</div>
									<div style="float: left; width: 150px;">${article.CAREER }</div>
									<div style="float: left; width: 150px;">${article.SALARY }</div>
									<div style="float: left; width: 150px;">${article.ADREESS}</div>
									<div style="float: left; width: 200spx;">${article.NEED_AMT }</div>
								</div>
                			</a>
							
						</c:forEach>
                	</c:when>
                	<c:otherwise>
                		 <div style="height: 50px;">
                    		<div style="text-align: center; width: 1950px;">등록된 구직글이 없습니다.</div>
               			 </div>
                	</c:otherwise>
                </c:choose>
            </div>
            <br>
            <div style="border: 0px; width: 100%;">
                <div align="center">
                    <div>
                    	<c:if test="${nowPage > 1 }">
                        	<a 
                        		href="${pageContext.request.contextPath}/article/list?page=${nowPage -1}">
								[&lt;] 
                        	</a>
                        </c:if>
                        <c:forEach var="i" begin="${startPage }" end="${endPage }">
                        <c:choose>
								<c:when test="${i == nowPage }">
									[${i }]
								</c:when>
								<c:otherwise>
									<a
										href="${pageContext.request.contextPath}/article/list?page=${i}">
										[${i }] 
									</a>
								</c:otherwise>
							</c:choose>
						</c:forEach> 
                        <c:if test="${nowPage < totalPage }">
							<a
								href="${pageContext.request.contextPath}/article/list?page=${nowPage +1}">
								[&gt;] 
							</a>
						</c:if>
                    </div>
                </div>
            </div>          
        </div>
    </form>
    
    <script>
    	function article_search(){
    		let xhr = new XMLHttpRequest();
    		
    		let job = document.getElementById("job");
    		let career = document.getElementById("career");
    		
    		xhr.open("post", "/article/list?job="+job.value+"&career="+career.value,false);
    		xhr.send();
    		xhr.onreadystatechange = function() {
    			// 응답, 성공
    			if (xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
    				document.getElementById("main").innerHTML = xhr.responseText; 				
    			}
    		}
    		document.
    	} 
	</script>
    
</body>
</html>