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
    <title>developer</title>
	
    <link href="${pageContext.request.contextPath}/resource/css/body.css" rel="stylesheet"  type="text/css"/>
    <link href="${pageContext.request.contextPath}/resource/css/header.css" rel="stylesheet"  type="text/css"/>
    <link href="${pageContext.request.contextPath}/resource/css/jobs_main.css" rel="stylesheet"  type="text/css"/>
    <link href="${pageContext.request.contextPath}/resource/css/jobs.css" rel="stylesheet"  type="text/css"/>
    <link href="${pageContext.request.contextPath}/resource/css/jops_table.css" rel="stylesheet"  type="text/css"/>
    <link href="${pageContext.request.contextPath}/resource/css/nav.css" rel="stylesheet"  type="text/css"/>
	
</head>
<body>
 	
    <header><%@ include file= "/WEB-INF/views/header.jsp" %></header>

    <div class="jops_list_article"><%@ include file= "/WEB-INF/views/main/card_list.jsp" %></div>

    <%-- <div class="jops_tabel_article"><%@ include file= "/WEB-INF/views/main/board.jsp" %></div> --%>

    <footer><%@ include file= "/WEB-INF/views/footer.jsp" %></footer>
</body>
</html>