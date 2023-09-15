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
    <div id="head">
        <div id="headcontain">
            <div id="siteimg">
                <a href=""><img src="${pageContext.request.contextPath}/resource/img/teamlogo.jpg"></a>
            </div>
            <div id="explain">
                채용공고
            </div>
            <div id="register">
                <button>인제풀 등록하기</button>
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
                        <div id="">
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
                            <th scope="col" class="th-num">번호</th>
                            <th scope="col" class="th-name">기업이름</th>
                            <th scope="col" class="th-title">제목</th>
                            <th scope="col" class="th-career">경력</th>
                            <th scope="col" class="th-salary">연봉</th>
                            <th scope="col" class="th-address">주소</th>
                            <th scope="col" class="th-need_amt">채용수</th>
                        </tr>
                    </thead>
                    <tbody>
 						<c:choose>
                			<c:when test="${articleList != null and fn:length(articleList) > 0 }">
                				<c:forEach var="article" items="${articleList }">                
			                        <tr class="tableItem" onclick="location.href='${pageContext.request.contextPath}/article/${article.ID}'">
				                            <td>${article.R }</td>
				                            <th>${article.NAME }</th>
				                            <td>${article.TITLE }</td>
				                            <td>${article.CAREER }</td>
				                            <td>${article.SALARY }</td>
				                            <td>${article.ADREESS}</td>
				                            <td>${article.NEED_AMT }</td>
			                        </tr>
				                 </c:forEach>
                			</c:when>
                			<c:otherwise>
                		 		<tr>
                		 			<th id="blank">등록된 구직글이 없습니다.</th>
                		 		</tr>
                			</c:otherwise>
                		</c:choose>
                    </tbody>
                </table>
            </div>
        </div>
        <br>
		<div style="border: 0px; width: 100%;">
                <div align="center">
                    <div>
                    	<c:if test="${nowPage > 1 }">
                        	<a 
                        		href="${pageContext.request.contextPath}/article/list?page=${nowPage -1}">
								&lt;
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
								&gt; 
							</a>
						</c:if>
                    </div>
                </div>
            </div> 
    </section>
</body>
</html>