<%@page import="com.enums.DEADLINES"%>
<%@page import="com.enums.JOBS"%>
<%@page import="com.enums.ADDRESS"%>
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
 
    <header><%@ include file= "/WEB-INF/views/header.jsp" %></header>
    <nav><%@ include file= "/WEB-INF/views/navigation.jsp" %></nav>

    <div class="jops_list_article"><%@ include file= "/WEB-INF/views/main/card_list.jsp" %></div>

    <div class="jops_tabel_article"><%@ include file= "/WEB-INF/views/main/board.jsp" %></div>

    <footer><%@ include file= "/WEB-INF/views/footer.jsp" %></footer>
</body>
</html>