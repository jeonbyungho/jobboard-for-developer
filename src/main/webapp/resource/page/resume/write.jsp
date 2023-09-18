<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>이력서 작성</title>
<script
	src="${pageContext.request.contextPath}/resource/js/resume_write.js"
	defer></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resource/css/resume.css">
<link href="${pageContext.request.contextPath}/resource/css/body.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/resource/css/header.css"
	rel="stylesheet" type="text/css" />
</head>
<body>

	<header><%@ include file="/WEB-INF/views/header.jsp"%></header>
	<div class="resumeHeader">
		<div class="container">
			<a href="${pageContext.request.contextPath}" class="logo linkLogo">
				<!-- 로고클릭 시 메인페이지 이동 -->

			</a>
		</div>
	</div>


	<form action="${pageContext.request.contextPath}/resume" method="post"
		name="resumeForm">

		<fieldset id="titleField">
			<legend>
				<h3>이력서 제목</h3>
			</legend>
			<input type="text" name="title" value="제목" />
		</fieldset>


		<!-- 이력서 상단 부분 -->
		<div class="top">
			<h1 class="username">${sessionScope.member.name}</h1>
			<br />
			<h3>
				<p class="txt">내 이력서를 작성해보세요!</p>
			</h3>
			<ul class="userinfo">
				<h3>
					<li class="user_email">${sessionScope.member.email}</li>
				</h3>
				<h3>
					<li class="user_phone">${sessionScope.member.phone}</li>
				</h3>
				<h3>
					<li class="user_addr">${sessionScope.member.address}
				</h3>
				<h3>${sessionScope.member.detail_addr}</li>
				</h3>
			</ul>



			<!-- 우측박스 추가 -->
			<div class="resume_snb">
				<div class="snb_container">
					<div class="snb_box">
						<div class="snb_top">
							<h3 class="tit">이력서 완성하기</h3>
						</div>
						<p class="txt">
							<em>기본정보</em>만 입력하면<br>이력서가 완성돼요!
						</p>
						필요한 항목으로 이동
						<ul class="item_list">
							<li class="item essential"><a href="#schoolField"
								class="BtnType con_link">경력</a></li>
							<li class="item"><a href="#portfolioField"
								class="BtnType con_link">포트폴리오</a></li>
							<li class="item add"><a href="#regField"
								class="BtnType con_link">학교</a></li>
							<li class="item add"><a href="#liecenceField"
								class="BtnType con_link">자격증</a></li>
						</ul>
					</div>
				</div>
			</div>


			<fieldset id="portfolioField">
				<legend>
					<h3>포트폴리오 주소</h3>
				</legend>
				<input type="text" name="portfolio" value="url" />
				<button id="portfolioPlus">추가</button>
				<ul id="portfolioList">
				
				</ul>
			</fieldset>

			<fieldset id="regField">
				<legend>
					<h3>경력</h3>
				</legend>
				<button id="regPlus">추가</button>
				<ul id="regList">

				</ul>
			</fieldset>

			<fieldset id="schoolField">
				<legend>
					<h3>학교</h3>
				</legend>
				<button id="schoolPlus">추가</button>
				<ul id="schoolList">

				</ul>
			</fieldset>

			<fieldset id="liecenceField">
				<legend>
					<h3>자격증</h3>
				</legend>
				<div class="liecenceItem">
					<button id="liecencePlus">추가</button>
					<ul id="liecenceList">
						<!-- 기존의 자격증 정보는 여기에 있음 -->
					</ul>
				</div>
			</fieldset>

			<fieldset id="selfField">
				<legend>
					<h3>자기소개</h3>
				</legend>
				<textarea name="self_intro" rows="4" cols="50"></textarea>
			</fieldset>


			<input type="submit" id="submit" />
	</form>
</body>
</html>