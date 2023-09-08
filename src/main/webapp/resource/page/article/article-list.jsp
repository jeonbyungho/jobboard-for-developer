<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
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

        #opt#job {
            float: left;
        }

        #opt#career {
            float: left;
        }

        .job-list {
            width: 100%;
            margin-top: 20px;
            padding: 20px;
            background-color: #f9f9f9;

        }

        .job-item {
            border: 1px solid #ddd;
            padding: 10px;
            margin-bottom: 10px;
            background-color: white;
        }
        
        a:visited {
		color: #ce93d8; text-decoration: none;
		}
		a:hover {
		color: #ce93d8; text-decoration: none; font-weight: bold;
		}
		a:link {
			color: ce93d8; text-decoration: none;
		}
		table {
			margin: 0 auto;
		}
    </style>
</head>
<body>
	<form action="" id="board"> 
        <div id="head">
            <div id="siteimg">
                <a href=""><img src="${pageContext.request.contextPath}/resource/img/samplesitename.png" alt=""></a>
            </div>
            <div id="explain">
                채용공고
            </div>
            <div id="register">
                <button>인제풀 등록하기</button>
            </div>
        </div>

        <div id="line1">
        </div>

        <div id="search">
            <div id="opt">
                <select id="job" name="job">
                    <option value="default" selected>직무</option>
                    <option value="backend">백엔드</option>
                    <option value="frontend">프론트엔드</option>
                    <option value="fullstack">풀스택</option>
                </select>
                <select id="career" name="career">
                    <option value="default" selected>경력</option>
                    <option value="newbie">신입</option>
                    <option value="senior">경력</option>
                    <option value="intern">인턴</option>
                </select>
            </div>
        </div>

        <div class="job-list">
			<c:set var="articleList" value="${requestScope.articleList }" />
			<c:set var="totalCnt" value="${requestScope.totalCnt }" />
			<table style="width: 1500px; border: 10px;">
				<tr align="center" valign="middle">
					<td></td>
				</tr>
				<tr align="right" valign="middle">
					<td>글 개수 ${totalCnt } 개</td>
				</tr>
			</table>
			<table border="1"
				style="border-collapse: collapse; border-spacing: 0; width: 1500px;">
				<tr align="center" valign="middle">
					<th width="8%">번호</th>
					<th width="10%">직무</th>
					<th width="10%">경력</th>
					<th width="10%">연봉</th>
					<th width="10%">지역</th>
					<th width="8%">채용수</th>
					<th width="10%">마감기한</th>
					<th width="14%">직무설명</th>
					<th width="10%">자격</th>
					<th width="10%">태그스택</th>
				</tr>
				<c:choose>
					<c:when test="${articleList != null and fn:length(articleList) > 0 }">
						<c:forEach var="article" items="${articleList }">
							
								<tr align="center" valign="middle"
									onmouseover="this.style.background='#bbdefb'"
									onmouseout="this.style.background=''" height="23px">
										<td>${article.id }</td>
										<td> <!-- 구인글 상세 페이지로 이동 -->
												${article.job } </td>
										<td>${article.career }</td>
										<td>${article.salary }</td>
										<td>${article.location }</td>
										<td>${article.need_amt }</td>
										<td>${article.deadline }</td>
										<td><a href="${pageContext.request.contextPath}/article/${article.id}">
										${article.job_explain }</a></td>
										<td>${article.qualify }</td>
										<td>${article.tag_stack }</td>
								</tr>
							
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr style="height: 50px;">
							<td colspan="10" style="text-align: center">등록된 구직글이 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</table>
			<table style="border: 0px; width: 1500px;">
				<tr align="center" valign="middle">
					<td><c:if test="${nowPage > 1 }">
							<a
								href="${pageContext.request.contextPath}/board/BoardList.bo?page=${nowPage -1}">
								[&lt;] </a>
						</c:if> <c:forEach var="i" begin="${startPage }" end="${endPage }">
							<c:choose>
								<c:when test="${i == nowPage }">
							[${i }]
						</c:when>
								<c:otherwise>
									<a
										href="${pageContext.request.contextPath}/board/BoardList.bo?page=${i}">
										[${i }] </a>
								</c:otherwise>
							</c:choose>
						</c:forEach> <c:if test="${nowPage < totalPage }">
							<a
								href="${pageContext.request.contextPath}/board/BoardList.bo?page=${nowPage +1}">
								[&gt;] </a>
						</c:if></td>
				</tr>
			</table>
			<table style="border: 0px; width: 1500px">
				<tr align="center" valign="middle">
					<td><a
						href="${pageContext.request.contextPath}/article">
							[글쓰기] </a></td>
				</tr>
			</table>
		</div>
    </form>
</body>
</html>