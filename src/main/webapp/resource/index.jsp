<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>사람인</title>
    
    <link href="${pageContext.request.contextPath}/resource/css/body.css" rel="stylesheet"  type="text/css"/>
    <link href="${pageContext.request.contextPath}/resource/css/header.css" rel="stylesheet"  type="text/css"/>
    <link href="${pageContext.request.contextPath}/resource/css/jobs_main.css" rel="stylesheet"  type="text/css"/>
    <link href="${pageContext.request.contextPath}/resource/css/jobs.css" rel="stylesheet"  type="text/css"/>
    <link href="${pageContext.request.contextPath}/resource/css/jops_table.css" rel="stylesheet"  type="text/css"/>
    <link href="${pageContext.request.contextPath}/resource/css/nav.css" rel="stylesheet"  type="text/css"/>

    <link href="https://fontawesome.com/icons/magnifying-glass?f=classic&s=solid"/>
</head>
<body>

    <header>
        <div class="header container">
            <div class="site_logo">
                <h1><a href="header.html">Saramin</a></h1>
            </div>

            <div class="search">
                <form action="">
                    <input type="text" name="search" placeholder="직무, 회사, 지역,키워드로 검색해보세요."/>
                    <button type="submit">
                        <svg xmlns="http://www.w3.org/2000/svg" class="icon" viewBox="0 0 512 512">
                            <!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
                            <path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"/>
                        </svg>
                    </button>
                </form>
            </div>

            <div class="member">
                <a href="${pageContext.request.contextPath}/member/login">로그인</a>
                <span>|</span>
                <a href="${pageContext.request.contextPath}/member/join">회원가입</a>
            </div>
        </div>
    </header>

    <nav>
        <div class="container">
            <ul>
                <li class="menu">
                    <h4>채용정보</h4>
                    <div class="sub_meum">
                        <div class="container">
                            <div class="local">
                                <h4>지역별</h4>
                                <ul>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                </ul>
                            </div>

                            <div class="local">
                                <h4>지역별</h4>
                                <ul>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                </ul>
                            </div>

                            <div class="local">
                                <h4>업무별</h4>
                                <ul>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>

                <li class="menu">
                    <h4>회원 서비스</h4>
                    <div class="sub_meum">
                        <div class="container">
                            <div class="member">
                                <h4>회원용</h4>
                                <ul>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                </ul>
                            </div>

                            <div class="member">
                                <h4>기업용</h4>
                                <ul>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                    <li>서울</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>

            </ul>

        </div>
    </nav>

    <div class="jops_list_article">
        <div class="container">
            <h2 class="jops_title">대표 기업</h2>
            
            <ul class="jops_list">

                <li class="job_item">
                    <a href="${pageContext.request.contextPath}/article/2">
                        <img src="${pageContext.request.contextPath}/resource/img/apple.png" class="logo"/>
                        <h4 class="company">애플 코리아 유한회사</h4>
                        <h3 class="title">다양한 신입/경력직 채용</h3>
                        <div class="bottom">
                            <p class="local">서울 강남구</p>
                            <p>·</p>
                            <p class="pay">3,000,000원</p>
                        </div>
                    </a>
                </li>

            </ul>
        </div>
    </div>

    <div class="jops_tabel_article">
        <div class="container">
            <h2 class="jops_title">주요 채용정보</h2>
            <ul class="jobs_tabel">
            
                <li class="job_item">
                    <a href="">
                        <div class="jobs_tabel_item">
                            <div class="job_item_left">
                                <h4 class="company">애플 코리아 유한회사</h4>
                                <h3 class="title">다양한 신입/경력직 채용</h3>
                                <div class="bottom">
                                    <p class="local">서울 강남구</p>
                                    <p>·</p>
                                    <p class="pay">3,000,000원</p>
                                </div>
                            </div>

                            <div class="job_item_right">
                                <h5 class="day">오늘마감</h5>
                            </div>
                        </div>
                    </a>
                </li>

            </ul>
        </div>
    </div>

    <footer>
        <div class="container">
            <p>사람인 고객센터 02-2025-4733 (평일 09:00~19:00, 주말·공휴일 휴무)</p>
            <p>이메일 : help@saramin.co.kr, Fax : 02-6937-0039(대표), 02-6937-0035(세금계산서)</p>
            <p>(주)사람인, 우 : 08378, 구로구 디지털로 34길 43, 14층, 대표 : 김용환</p>
            <p>사업자등록 : 113-86-00917, 직업정보제공사업 : 서울 관악 제 2005-6호, 통신판매업 : 제 2005-02339호</p>
            <p>Copyright (c) (주)사람인. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>