<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<h2>로그인</h2>
	<form action="${pageContext.request.contextPath}/member/login" method="post" name="loginForn">
		<input type="text" name="userid"/>
		<input type="password" name="password"/>
		
		<button type="submit">로그인</button>
	</form>
	
	<script>
		document.loginForn.onsubmit = async (e) => {
			e.preventDefault();
			const form = e.target;
			const data = {
					userid : form.userid.value,
					password : form.password.value,
				}
			
			console.log(form.action, data);
			
			try {
				response = await fetch(form.action, {
					method : "POST",
					headers : {
						"Content-Type": "application/x-json;charset=utf-8",
					},
					body : JSON.stringify(data),
				});

				const result = await response.json();
				console.log(result);
				alert(result.result);
			} catch (error) {
    			console.error("Error:", error);
  			}
		}
	</script>
</body>
</html>