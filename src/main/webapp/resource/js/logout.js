console.log("🖐️logout.js");

const logoutTag = document.getElementById("logout");
logoutTag.onclick = async (e) => {
	e.preventDefault();
	const logoutChecking = confirm("정말로 로그아웃을 하겠습니까?");
	console.log(e.target.href);
	
	if(!logoutChecking) return;
	
	// 로그아웃 요청
	try {
		response = await fetch(e.target.href, {
			method : "GET",
			headers : {
				"Content-Type": "text/html;charset=utf-8",
			},
		});
		
		// 로그 아웃 성공 여부 메시지 출력
		const body = await response.text();
		const mes = body.trim();
		console.log(mes);
		if(mes == "success"){
			alert('로그아웃 성공');
			location.reload();
		} else if(mes == "fail"){
			alert('로그아웃 실패');
		}
	
	// 오류
	} catch(error){
		console.error("Error:", error);
		alert('알 수 없는 이유로 로그인 실패..');
	}
}