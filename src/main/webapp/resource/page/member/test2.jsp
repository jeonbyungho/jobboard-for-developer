<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>이력서 입력</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/member/resume" method="post">
        <label for="ID">ID:</label>
        <input type="number" id="ID" name="ID" required><br><br>
        
        <label for="USER_ID">User ID:</label>
        <input type="text" id="USER_ID" name="USER_ID" required><br><br>
        
        <label for="CAREER">Career:</label>
        <input type="text" id="CAREER" name="CAREER" required><br><br>
        
        <label for="SCHOOL">School:</label>
        <input type="text" id="SCHOOL" name="SCHOOL" required><br><br>
        
        <label for="PORTFOLIO">Portfolio:</label>
        <input type="text" id="PORTFOLIO" name="PORTFOLIO" required><br><br>
        
        <label for="REG_DATE">Registration Date:</label>
        <input type="text" id="REG_DATE" name="REG_DATE" required><br><br>
        
        <label for="LICENCE">Licence:</label>
        <input type="text" id="LICENCE" name="LICENCE"><br><br>
        
        <input type="submit" value="Submit">
    </form>
</body>
</html>
