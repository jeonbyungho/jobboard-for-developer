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
	<style>
        #head {
            padding: 20px 0 20px 10px;
        }

        #siteimg {
            float: left;
        }

        #explain {
            float: left;
            margin-left: 50px;

        }

        #register {
            color: blue;
            float: right;
            padding-right: 20px;

        }

        #line1 {
            margin-top: 30px;
            background-color: rgb(206, 206, 206);
            height: 1px;
        }

        #search {
            margin: 20px 20px;
        }
       
        #search#cnt {
            float: left;
         
           
        }
        #search#job {
            float: left;
        }

        #search#career {
            float: left;
        }

        .job-list {
            width: 100%;
            margin-top: 20px;
            padding: 20px;
            background-color: white;

        }

        .job-item {
            border: 1px solid #ddd;
            padding: 10px;
            margin-bottom: 10px;
            background-color: white;
        }
        
        a:visited {
			color: black; text-decoration: none;
		}
		a:hover {
			color: black; text-decoration: none; font-weight: bold;
		}
		a:link {
			color: black; text-decoration: none;
		}
		table {
			margin: 0 auto;
		}

        .banner {
            padding-top: 10px;
            padding-bottom: 30px;
            background-color:lightgray;   
        }
        .content {
            padding-top: 10px;
            padding-bottom: 30px;   
        }
    
        #fix1 {
            position: fixed;
            background: lightgray;
            height: 100%;
            position: sticky;
            top: 0;
            left: 0;
            
        }
    </style>
</head>
<body>
    <form id="board">
    <c:set var="articleList" value="${requestScope.articleList }" />
	<c:set var="totalCnt" value="${requestScope.totalCnt }" />
        <div id="head">
            <div id="siteimg">
                <a href=""><img src="${pageContext.request.contextPath}/resource/img/samplesitename.png" alt=""></a>
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
            
            <div style="width:1864px;">
                <div class="banner" align="left">
                    <div id="fix1" style="float:left; width:100px;" >번호</div>
                    <div style="float:left; width:100px;" >직무</div>
                    <div style="float:left; width:100px;" >경력</div>
                    <div style="float:left; width:150px;" >연봉</div>
                    <div style="float:left; width:100px;" >지역</div>
                    <div style="float:left; width:100px;" >채용수</div>
                    <div style="float:left; width:150px;" >마감기한</div>
                    <div style="float:left; width:650px;" >직무설명</div>
                    <div style="float:left; width:100px;" >자격</div>
                    <div style="float:left; width:100px;" >태그스택</div>
                </div>


                <c:choose>
                	<c:when test="${articleList != null and fn:length(articleList) > 0 }">
                		<c:forEach var="article" items="${articleList }">
                			<a href="${pageContext.request.contextPath}/article/${article.id}">
                				<div style="border-bottom:1px solid #CCD1D1;" class="content" align="left" 
								onmouseover="this.style.background='#bbdefb'" onmouseout="this.style.background=''" >
									<div style="float: left; width: 100px;">${article.id }</div>
									<div style="float: left; width: 100px;">${article.job }</div>
									<div style="float: left; width: 100px;">${article.career }</div>
									<div style="float: left; width: 150px;">${article.salary }</div>
									<div style="float: left; width: 100px;">${article.location }</div>
									<div style="float: left; width: 100px;">${article.need_amt }</div>
									<div style="float: left; width: 150px;">${article.deadline }</div>
									<div style="float: left; width: 650px;">${article.job_explain }</div>
									<div style="float: left; width: 100px;">${article.qualify }</div>
									<div style="float: left; width: 100px;">${article.tag_stack }</div>
								</div>
                			</a>
							
						</c:forEach>
                	</c:when>
                	<c:otherwise>
                		 <div style="height: 50px;">
                    		<div style="text-align: center; width: 1700px;">등록된 구직글이 없습니다.</div>
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
		let xhr = new XMLHttpRequest();
		
		let job = document.getElementById("job");
		let career = document.getElementById("career");
		
		xhr.open("GET", "request_search.jsp?job="+job.value+"&career="+career.value,true);
		xhr.send();
		xhr.onreadystatechange = function() {
			// 응답, 성공
			if (xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
				document.getElementById("result").innerHTML = xhr.responseText;
				
			}
		} 
	</script>
    
</body>
</html>