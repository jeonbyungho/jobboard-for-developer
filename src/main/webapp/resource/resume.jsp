<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.skill {
    display: inline-block;
    padding: 5px 10px;
    border: 1px solid #6799FF;
    margin: 5px;
    border-radius: 5px;
    text-align: center; /* 가운데 정렬 추가 */
    }
    
    button:hover {
    background-color: #0056b3;
    }
    
    button {
    display: block;
    width: 100%;
    margin-top: 100px;
    padding: 10px;
    background-color: #0056b3;
    color: white;
    border: none;
    border-radius: 4px;
    font-size: 14px;
    cursor: pointer;
    text-align: center; /* 가운데 정렬 추가 */
    }
    .resume_snb {
        position: relative;
        width: 294px
    }
    .resume_snb .snb_box {
        padding: 24px 16px 24px;
        width: 294px;
        border-radius: 80px;
        box-sizing: border-box;
        background: #fff;
        box-shadow: 0 4px 16px rgba(21, 39, 111, 0.08)
    }
    .resume_snb .snb_box .snb_top {
        display: flex;
        align-items: center;
        justify-content: space-between;
        flex-wrap: wrap
    }
    .resume_snb .snb_box .progress_bar:after {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 80px;
        border-radius: 100px;
        background: linear-gradient(270deg, #5189fa 0%, #bcd1fc 100%);
        transition: transform 0.5s ease;
        transform-origin: left center;
        content: ""
    }
    .resume_snb {
        position: fixed;
        top: 0;
        right: 0;
        height: 100%;
        width: 300px; /* 원하는 너비 조정 */
        background-color: #fff; /* 배경색상 설정 */
        border-left: 1px solid #ccc; /* 왼쪽에 경계선 추가 */
        z-index: 1000; /* 다른 콘텐츠 위에 나타나도록 설정 (조절 가능) */
        overflow-y: auto; /* 내용이 넘칠 경우 스크롤 가능하도록 설정 */
        box-shadow: -2px 0 5px rgba(0, 0, 0, 0.2); /* 그림자 효과 추가 (선택사항) */
    }

    .snb_container {
        padding: 20px;
    }
    
    /* 이력서 완성도 상자 스타일 */
    .snb_box {
        background-color: #f5f5f5;
        border: 1px solid #ccc;
        padding: 20px;
        border-radius: 5px;
    }

     input[type="checkbox"]:checked~ul{
            display:none;
        }
</style>
</head>
<body>
	<div class="resumeHeader">
		<div class="container">
			<a href="${pageContext.request.contextPath}" class="logo linkLogo">
				<!-- 로고클릭 시메인페이지 이동--> <img
				src="https://search.pstatic.net/common/?src=http%3A%2F%2Fimgnews.naver.net%2Fimage%2F5575%2F2021%2F10%2F26%2F0000240596_001_20211026080003057.jpg&type=sc960_832"
				width="200px; " height=80px; alt="JOBKOREA">
			</a>
		</div>
	</div>
	<!-- 이력서 상단 부분 -->
	<div class="top">
		<h1 class="username">테스트(로그인시 유저정보 바로나오게)</h1>
		<br />
		<h3>
			<p class="txt">내 이력서를 작성해보세요!</p>
		</h3>
		<ul class="userinfo">

			<li class="user_email">이메일(로그인시 유저정보 바로나오게)</li>
			<li class="user_phone">전화번호(로그인시 유저정보 바로나오게)</li>
			<li class="user_addr">주소를(로그인시 유저정보 바로나오게)</li>
		</ul>
		<div class="career">
			<fieldset>
				<label for="careerCd" class="blind">경력구분</label> <select
					name="career_cd" id="careerCd">
					<option value="1" selected="selected">신입</option>
					<option value="2">경력</option>
				</select>
			</fieldset>
			<!-- 우측박스 추가-->
			<div class="resume_snb">
				<div class="snb_container">
					<div class="snb_box">
						<div class="snb_top">
							<h3 class="tit">이력서 완성하기</h3>
						</div>
						<p class="txt">
							<em>기본정보</em>만 입력하면<br>이력서가 완성돼요!
						</p>
						<ul class="item_list">
							<li class="item active"><a href="#mycareer"
								class="BtnType con_link">내 경력</a></li>
							<li class="item essential"><a href="#school_end"
								class="BtnType con_link">학력</a></li>
							<li class="item"><a href="#career_now"
								class="BtnType con_link">경력</a></li>
							<li class="item add"><a href="#skill"
								class="BtnType con_link">기술</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--경력 -->
	<fieldset>
		<div class="box">
			<div id="mycareer" class="content-section"></div>
			<h2 class="mycareer">MY Career</h2>
			<input type="checkbox" id="root"> <label for="root">정보열기</label>
			<div class="contents_edit"></div>
			<ul class="resume_tit">
				<li class="list">
					<p class="tit">테스트1</p>
					<p class="desc">테스트2</p>
					<button type="button" class="editButton">추가/수정하기</button>
		</div>
		</li>
		</ul>
		<div class="edit"></div>
		</div>
	</fieldset>

	</div>
	<!-- 학력 정보 부분 -->
	<fieldset>
		<div class="resume_tit">
			<div class="box_tit">
				<div id="school_end" class="content-section"></div>
				<h2 class="school">
					학력<span class="must"></span>
				</h2>

				<input type="checkbox" id="root"> <label for="root">정보열기</label>
				<ul class="list">
					<li class="list">
						<div class="contents">
							<h3 class="tit">
								<span>학교</span> (년제) <span class="state">(졸업여부)</span>
							</h3>
							<h3>컴퓨터공학과</h3>
							<p class="desc"></p>
							<label for="careerCd" class="blind">주/야간 선택</label> <select
								name="career_cd" id="careerCd">
								<option value="1" selected="selected">주간</option>
								<option value="2">야간</option>
							</select>
						</div>
						<div class="edit"></div>
						<button type="button" class="editButton">추가/수정하기</button>
	</fieldset>
	</li>
	</ul>
	<input type="hidden" id="school" value="userschool">
	</div>
	</div>

	<!--경력부분-->
	<fieldset>
		<div class="box">
			<div id="career_now" class="content-section"></div>
			<h2 class="career">경력</h2>
			<input type="checkbox" id="root"> <label for="root">정보열기</label>
			<ul>
				<li>1</li>
				<li>2</li>
				<button type="button" class="editButton">추가/수정하기</button>
			</ul>
	</fieldset>
	</div>
	<fieldset>
		<div id="skill" class="content-section"></div>
		<h2>나의 기술</h2>
		<input type="checkbox" id="root"> <label for="root">정보열기</label>
		<ul>
			<li>1</li>
			<li>2</li>
			<button type="button" class="editButton">추가/수정하기</button>
		</ul>
	</fieldset>
	<!-- 이력서 하단 부분 -->
	<div class="resume_btm">
		<form action="">
			<section id="resume_title">
				<div class="inner">
					<!--메인페이지로 이동 -->
					<button type="button" onclick="window.location.href='finsh.jsp'">제출하기</button>

				</div>
			</section>
	</div>
	<script>
            // 링크 클릭 시 스크롤 처리
            document.querySelectorAll('a.BtnType.con_link').forEach(anchor => {
                anchor.addEventListener('click', function(e) {
                    e.preventDefault();
    
                    const targetId = this.getAttribute('href').substring(1);
                    const targetElement = document.getElementById(targetId);
    
                    if (targetElement) {
                        window.scrollTo({
                            top: targetElement.offsetTop,
                            behavior: 'smooth'
                        });
                    }
                });
            });
      </script>
</body>
</html>