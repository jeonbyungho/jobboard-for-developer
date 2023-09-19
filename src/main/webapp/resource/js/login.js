console.log("🖐️login.js");
document.loginForn.onsubmit = async (e) => {
	e.preventDefault();
	// form 데이터 구성
	const form = e.target;
	const loginData = {
			userid : form.userid.value,
			password : form.password.value,
		}
	console.table(form.action,loginData);
	
	// 로그인 요청
	try {
		response = await fetch(form.action, {
			method : "POST",
			headers : {
				"Content-Type": "application/x-www-form-urlencoded;charset=utf-8",
			},
			body : new URLSearchParams(loginData).toString(),
		});
		
		// 응답 메시지
		const mes = await response.text();
		console.log("Login :", mes);
		
		// 로그아웃 성공
		if(mes == "success"){
			const l = document.referrer;
			if(l.indexOf('signup') > -1){
				location.href = document.location.origin+'/jspweb/';
			} else {
				location.href = document.referrer;
			}
		// 실패
		} else if(mes == "fail") alert('로그인 실패');
		
	// 오류 발생
	} catch (error) {
		console.error("Error:", error);
		alert('알 수 없는 이유로 로그인 실패..');
	}
}