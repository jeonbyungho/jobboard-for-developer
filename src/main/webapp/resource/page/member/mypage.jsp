<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                            <th scope="col" class="th-id">번호</th>
                            <th scope="col" class="th-name">이력서제목</th>
                            <th scope="col" class="th-title">작성날짜</th>
                            <th scope="col" class="th-job">지원기업</th>
                            <th scope="col" class="th-career">수락여부</th>
                            <th scope="col" class="th-address">열람여부</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>3</td>
                            <th>이력서1</th>
                            <th>2017.07.13</th>
                            <th>SKT</th>
                            <td>X</td>
                            <td>X</td>
                        </tr>

                        <tr>
                            <td>2</td>
                            <th>이력서2</th>
                            <th>2017.06.15</th>
                            <th>KT</th>
                            <td>X</td>
                            <td>X</td> 
                        </tr>

                        <tr>
                            <td>1</td>
                            <th>이력서3</th>
                            <th>2017.06.15</th>
                            <th>LG</th>
                            <td>X</td>
                            <td>X</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</body>
</html>