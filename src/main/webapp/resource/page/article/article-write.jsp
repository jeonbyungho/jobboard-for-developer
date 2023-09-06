<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        html,body {
            height: 100%;
        }
        #headbox{
            position: relative;
            bottom: 20px;
            background-color: rgb(206, 206, 206);
            height: 1px;
        }
        #siteimg{
            position: relative;
            left: 50px;
        }
        #mypage{
            color: blue;
            position: relative;
            left: 1700px;         
            bottom: 35px;
        }
        a:hover{
            color: orange;
        }
        #body{
            width: 1000px;
            margin: auto;
        }
        #childbody{
            width: 800px;
            margin: auto;
        }
        #table{
            border: 1px;
        }
        th{
            font-weight: bold;
            width: 200px;
            font-size: 25px;
        }
        #name{
            font-size: 25px;
        }
        #text{
            font-size: 25px;
        }
        #left{
            width: 300px;
            font-size: 25px;
        }
        #right{
            width: 300px;
            font-size: 25px;
        }
        #title{
            width: 600px;
            font-size: 25px;
        }
        #career{
            font-size: 25px;
        }
        #sales{
            font-size: 25px;
        }
        #salary{
            width: 250px;
            font-size: 25px;
        }
        #location{
            font-size: 25px;
        }
        #need{
            font-size: 25px;
        }
        #need_amt{
            width: 50px;
            font-size: 25px;
        }
        #date{
            font-size: 25px;
        }
        #job_explain{
            font-size: 25px;
        }
        textarea{
            width: 600px;
            font-size: 25px;
        }
        #footerbox{
            height: 50px;
        }
        #footerline{
            position: relative;
            background-color: rgb(206, 206, 206);
            width: 100%;
            height: 1px;
        }
        #join{
            position: relative;
            left: 900px;
            background-color: aquamarine;
            width: 100px;
            height: 50px;
            border-radius: 20px;
        }
        #buttontext{
            position: relative;
            left: 20px;
            top: 12px;
        }
    </style>
</head>
<body>
    <form action="" id="head"> <!-- head-->
        <div>
            <br>
            <div id="siteimg">
                <a href=""><img src="img/samplesitename.png" alt=""></a>
            </div>
            <div id="mypage">
                 &emsp;&emsp;<a href="">마이페이지</a>
            </div>
        </div>
        <br>
        <div id="headbox">
            <!-- 빈 라인 -->
        </div>
    </form>
    <form action="" id="body">
        <div id="logininfo">
            <br>
            <h1>구직글 작성</h1\>
        </div>
        <br>
        <br>
        <div id="childbody">
            <table id="table">
                <tr>
                    <th align="center">
                        기업명
                    </th>
                    <td id="name" align="left" colspan="8">
                        &emsp;<span id="companyname">로그인정보를 이용한 기업명</span>
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <br>
                        기업설명
                    </th>
                    <td align="left" colspan="8">
                        <br>
                        &emsp;<span id="text">로그인정보를 이용한 기업설명</span>
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <br>
                        제목
                    </th>
                    <td align="left" colspan="8">
                        <br>
                        &emsp;<input type="text" id="title">
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <br>
                        직무
                    </th>
                    <td id="left" align="left" colspan="4">
                        <br>
                        <label>
                            &emsp;    모바일 <input type="checkbox" id="job" value="mobile">
                        </label>
                        <br>
                        <br>
                        <label>
                            &emsp;    기타 <input type="checkbox" id="job" value="other">
                        </label>
                        <br>
                        <br>
                        <label>
                            &emsp;    풀스택 <input type="checkbox" id="job" value="fullstack">
                        </label>
                        <br>
                        <br>
                        <label>
                            &emsp;   백엔드 <input type="checkbox" id="job" value="backend">
                        </label>
                        <br>
                    </td>
                    <td id="right" align="left" colspan="4">
                        <br>
                        <label>
                            데이터 <input type="checkbox" id="job" value="data">
                        </label>
                        <br>
                        <br>
                        <label>
                            얼리얼엔진 <input type="checkbox" id="job" value="unrealengine">
                        </label>
                        <br>
                        <br>
                        <label>
                            AI <input type="checkbox" id="job" value="ai">
                        </label>
                        <br>
                        <br>
                        <label>
                            프론트엔드 <input type="checkbox" id="job" value="frontend">
                        </label>
                        <br>
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <br>
                        경력
                    </th>
                    <td align="left" id="career" colspan="8">
                        <br>
                        &emsp;&emsp; 신입 <input type="checkbox" id="new"> &emsp;&emsp; 경력 <input type="checkbox" id="notnew">
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <br>
                        급여
                    </th>
                    <td align="left" colspan="8" id="sales">
                        <br>
                        &emsp;<input type="text" id="salary"> &emsp;  만원
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <br>
                        지역
                    </th>
                    <td align="left" colspan="8">
                        <br>
                        &emsp; <span id="location">로그인정보를 이용한 지역</span>
                    </td>
                </tr>
                <tr>
                   <th align="center">
                        <br>
                        모집인원
                   </th> 
                   <td align="left" id="need" colspan="8">
                        <br>
                        &emsp;<input type="text" id="need_amt"> &emsp; 명
                   </td>
                </tr>
                <tr>
                    <th align="center">
                        <br>
                        마감일
                    </th>
                    <td align="left" id="date" colspan="8">
                        <br>
                        &emsp;23.09.04
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <br>
                        직무소개
                    </th>
                    <td align="left" colspan="8">
                        <br>
                        &emsp;<textarea id="job_explain" cols="30" rows="10" oninput='this.style.height = ""; this.style.height = this.scrollHeight + "px"'
                        style="resize: none; padding: 8px; margin: 20px;"></textarea>
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <br>
                        자격요건
                    </th>
                    <td align="left" colspan="8">
                        <br>
                        &emsp;<textarea id="qualify" cols="30" rows="10" oninput='this.style.height = ""; this.style.height = this.scrollHeight + "px"'
                        style="resize: none; padding: 8px; margin: 20px;"></textarea>
                    </td>
                </tr>
                <tr>
                    <th align="center">
                        <br>
                        테크스택
                    </th>
                    <td align="center" id="">
                        <br>
                        Java <input type="checkbox" id="stack" value="java">
                        <br>
                        Spring Boot <input type="checkbox" id="stack" value="spring boot">
                    </td>
                    <td align="center">
                        <br>
                        Spring <input type="checkbox" id="stack" value="spring">
                        <br>
                        Android <input type="checkbox" id="stack" value="android">
                    </td>
                    <td align="center">
                        <br>
                        Unreal5 <input type="checkbox" id="stack" value="unreal5">
                        <br>
                        MySQL <input type="checkbox" id="stack" value="mysql">
                    </td>
                    <td align="center">
                        <br>
                        PHP <input type="checkbox" id="stack" value="php">
                        <br>
                        AJAX <input type="checkbox" id="stack" value="ajax">
                    </td>
                    <td align="center">
                        <br>
                        MSSQL <input type="checkbox" id="stack" value="mssql">
                        <br>
                        JSP <input type="checkbox" id="stack" value="jsp">
                    </td>
                    <td align="center">
                        <br>
                        Flutter <input type="checkbox" id="stack" value="flutter">
                        <br>
                        Python <input type="checkbox" id="stack" value="python">
                    </td>
                    <td align="center">
                        <br>
                        R <input type="checkbox" id="stack" value="r">
                        <br>
                        Pytorch <input type="checkbox" id="stack" value="pytorch">
                    </td>
                    <td align="center">
                        <br>
                        Tensorflow <input type="checkbox" id="stack" value="tensorflow">
                    </td>
                </tr>
            </table>
        </div>
        <div id="footerbox">
            <!--빈박스-->
        </div>
        <div id="footerline">

        </div>
        <br>
        <div id="join">
            <span id="buttontext">작성완료</span>
        </div>
        <div id="footerbox">
            <!--빈박스-->
        </div>
    </form>
</body>
</html>