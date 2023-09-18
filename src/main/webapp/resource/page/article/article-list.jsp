<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/articlelist.css">
</head>
<body>
	<div id="head">
		<div id="headcontain">
			<div id="siteimg">
				<a href=""><img
					src="${pageContext.request.contextPath}/resource/img/samplesitename.png"></a>
			</div>
			<div id="explain">채용공고</div>

		</div>
	</div>

	<section class="notice">
		<div class="page-title">
			<div class="container"></div>
		</div>

		<div id="board-search">
			<div class="container">
				<div class="search-window">
					<form action="">
						<div id="">
							<select id="type">
								<option value="default" selected>기업종류</option>
								<option value="1">대기업</option>
								<option value="2">중견기업</option>
								<option value="3">중소기업</option>
							</select> 
							<select id="career">
								<option value="default" selected>경력</option>
								<option value="신입">신입</option>
								<option value="경력">경력</option>
								<option value="인턴">인턴</option>
							</select> 
							<input id="search-btn" type=button value="검색" onclick="searchArticles()"/> 
							<span id="cnt"> &emsp; 글 개수 ${totalCnt } 개 </span>
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
					<tbody id="listContent">
						<c:choose>
							<c:when
								test="${articleList != null and fn:length(articleList) > 0 }">
								<c:forEach var="article" items="${articleList }">
									<a href="${pageContext.request.contextPath}/article/${article.ID}">
										<tr onmouseover="this.style.background='#20C0B7'"
											onmouseout="this.style.background=''">
											<td>${article.R }</td>
											<th>${article.NAME }</th>
											<td>${article.TITLE }</td>
											<td>${article.CAREER }</td>
											<td>${article.SALARY }</td>
											<td>${article.ADREESS}</td>
											<td>${article.NEED_AMT }</td>
										</tr>
									</a>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr >
									<th id="blank" >등록된 구직글이 없습니다.</th>
								</tr>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
		</div>
		<br>
		<div id="paging" style="border: 0px; width: 100%;">
			<div align="center">
				<div>
					<c:if test="${nowPage > 1 }">
						<a
							href="${pageContext.request.contextPath}/article/list?page=${nowPage -1}">
							&lt; </a>
					</c:if>
					<c:forEach var="i" begin="${startPage }" end="${endPage }">
						<c:choose>
							<c:when test="${i == nowPage }">
									[${i }]
								</c:when>
							<c:otherwise>
								<a
									href="${pageContext.request.contextPath}/article/list?page=${i}">
									[${i }] </a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${nowPage < totalPage }">
						<a
							href="${pageContext.request.contextPath}/article/list?page=${nowPage +1}">
							&gt; </a>
					</c:if>
				</div>
			</div>
		</div>
	</section>
	<script>
		function searchArticles() {
			// 선택한 직무와 경력 값을 가져옴
			var s1 = document.getElementById("type")
			var s2 = document.getElementById("career")
			/* var page = document.getElementById("") */
			var selectedType = s1.value;
			var selectedCareer = s2.value;
			/* var selectedPage = page.value; */

			// Ajax를 사용하여 서버에 요청 보냄
			$.ajax({
				type : "GET",
				url : "${pageContext.request.contextPath}/search", // 검색을 처리하는 서버의 URL로 변경 필요
				data : {
					type : selectedType,
					career : selectedCareer 
				},
				success : function(response) {
					// 서버로부터 받은 데이터로 테이블 목록 갱신
					// response 변수에 서버로부터 받은 데이터가 들어있을 것입니다.
					// 이 데이터를 사용하여 테이블을 다시 그리거나 업데이트할 수 있습니다.
					$('#listContent').html(response);
					$('#paging').html("");
					$('#cnt').html("");
				},
				error : function(error) {
					console.error("검색 실패:", error);
				}
			});
		}
	</script>
</body>
</html>