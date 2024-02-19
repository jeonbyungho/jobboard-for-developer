<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ attribute name="title" type="java.lang.String"%>
<%@ attribute name="head" fragment="true" %>
<%@ attribute name="navbarRemove" type="java.lang.Boolean" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"/>
    <link rel="stylesheet" href="<c:url value='/resource/css/base.css'/>"/>
    <jsp:invoke fragment="head"/>
    <title>${title}</title>
</head>
<body>
    <c:if test="${not navbarRemove}" ><jsp:include page="/WEB-INF/include/navbar.jsp" flush="true"/></c:if>
    <main class="container"><jsp:doBody></jsp:doBody></main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>