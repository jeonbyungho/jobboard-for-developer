<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="b" tagdir="/WEB-INF/tags/base" %>

<c:url var="jsEditorURL" value="/resource/js/editor.js" ></c:url>
<c:url var="jsFormURL" value="/resource/js/jobpost/jobpost_form.js" ></c:url>

<b:page title="채용 공고 작성">
	<jsp:attribute name="head">
		<link href="https://cdn.jsdelivr.net/npm/quill@2.0.0-rc.2/dist/quill.snow.css" rel="stylesheet">
	</jsp:attribute>
	<jsp:attribute name="scripts">
		<script src="https://cdn.jsdelivr.net/npm/quill@2.0.0-rc.2/dist/quill.js"></script>
		<script src="${jsEditorURL }"></script>
		<script src="${jsFormURL }"></script>
	</jsp:attribute>
	
	<jsp:body>
		<div id="editor-container" style="height: 500px;"></div>
		<button id="btn-edit-submit">제출</button>
	</jsp:body>
	
</b:page>