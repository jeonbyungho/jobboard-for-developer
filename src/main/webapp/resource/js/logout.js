console.log("🖐️logout.js");

const logoutTag = document.getElementById("logout");
logoutTag.onclick = async (e) => {
	e.preventDefault();
	
	// 로그아웃 확인창
	const logoutChecking = confirm("정말로 로그아웃을 하겠습니까?");
	if(!logoutChecking) return;
	
	// 로그아웃 요청
	try {
		response = await fetch(e.target.href, {
			method : "GET",
			headers : {
				"Content-Type": "text/html;charset=utf-8",
			},
		});
		
		// 응답 메시지
		const textValue = await response.text();
		const mes = textValue.trim();
		console.log(textValue);
		
		// 로그아웃 성공
		if(mes == "success"){
			alert('로그아웃 성공');
			location.reload();
		// 실패
		} else if(mes == "fail") alert('로그아웃 실패');
		
	// 오류 발생
	} catch(error){
		console.error("Error:", error);
		alert('알 수 없는 이유로 로그인 실패..');
	}
}