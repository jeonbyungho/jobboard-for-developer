<%@page import="com.enums.DEADLINES"%>
<%@page import="com.enums.JOBS"%>
<%@page import="com.enums.ADDRESS"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
            <ul>
                <li class="menu">
                    <h4>채용정보</h4>
                    <div class="sub_meum">
                        <div class="container">
                            <div class="local">
                                <h4>지역별</h4>
                                <ul>
                                <%-- 지역별 메뉴 --%>
                                <c:forEach var="i" items="<%=ADDRESS.values()%>">
                                	<li>
	                                	<a href="${pageContext.request.contextPath}/article/list?addr=${i}">
	                                		${i.getKor()}
	                                	</a>
                                	</li>
                                </c:forEach>
                                </ul>
                            </div>

                            <div class="local">
                                <h4>직무별</h4>
                                <ul>
                                <%-- 직무별 메뉴 --%>
                                <c:forEach var="i" items="<%=JOBS.values()%>">
                                	<li>
                                		<a href="${pageContext.request.contextPath}/article/list?jobs=${i}">
                                			${i.getKor()}
                                		</a>
                                	</li>
                                </c:forEach>
                                </ul>
                            </div>

                            <div class="local">
                                <h4>경력별</h4>
                                <ul>
                                <%-- 경력별 메뉴 --%>
                                <c:forEach var="i" items="<%=DEADLINES.values()%>">
                                	<li>
                                		<a href="${pageContext.request.contextPath}/article/list?deadline=${i}">
                                			${i.getKor()}
                                		</a>
                                	</li>
                                </c:forEach>
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
                                </ul>
                            </div>

                            <div class="member">
                                <h4>기업용</h4>
                                <ul>
                                    <li>서울</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>

            </ul>

</div>