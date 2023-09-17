<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${resume.NAME} : ${resume.TITLE}</title>
</head>
<body>
	
	<header><%@ include file= "/WEB-INF/views/header.jsp" %></header>
	
	<h3>${resume.NAME}</h3>
	
	<table border="1">
		<tr>
			<th>생일</th> <td>${resume.BIRTHDAY}</td>
		</tr>
		<tr>
			<th>전화번호</th> <td>${resume.PHONE}</td>
		</tr>
		
		<tr>
			<th>이메일</th> <td>${resume.EMAIL}</td>
		</tr>
		<tr>
			<th>주소</th> <td>${resume.ADDRESS}</td>
		</tr>
		<tr>
			<th>포트폴리오</th> <td>${resume.PORTFOLIO}</td>
		</tr>
	</table>
	
	<h3>${resume.TITLE}</h3>
	
	<c:if test="${not empty school}">
		<fieldset>
			<legend>학교</legend>
			<c:forEach var="i" items="${school}">
				<div>
				<span>${i.RATING }</span>
				<span>${i.NAME }</span>
				<span>${i.DEPARTMENT }</span>
				<span>${i.STATUS }</span>
				</div>
			</c:forEach>
		</fieldset>
	</c:if>
	
	<c:if test="${not empty reg}">
		<fieldset>
			<legend>경력</legend>
			<c:forEach var="i" items="${reg}">
				<p>${i.NAME }</p>
				<p>${i.JOB }</p>
				<p>${i.SWORK_DAY } ~ ${i.EWORK_DAY }</p>
			</c:forEach>
		</fieldset>
	</c:if>
	
	<c:if test="${not empty liecence}">
		<fieldset>
			<legend>자격증</legend>
			<c:forEach var="i" items="${liecence}">
				<p>${i.TITLE }</p>
				<p>${i.ACQUISITION }</p>
			</c:forEach>
		</fieldset>
	</c:if>
	
</body>
</html>