console.log('🖐️resume_send.js');

async function resumeSend(path, articleId, resumeId){
	const sendData = {
		articleId : articleId,
		resumeId : resumeId
	}
	console.log('이력서 보냄 경로 : ',path)
	console.table(sendData);
	
	try {
		response = await fetch(path, {
			method : "POST",
			headers : {
				"Content-Type": "application/x-www-form-urlencoded;charset=utf-8",
			},
			body : new URLSearchParams(sendData).toString(),
		});
		const mes = await response.text();
		console.log("mes :", mes);
		
		if(mes == "success"){
			alert('이력서 제출');
			window.close();
		}
		
	} catch (error) {
		console.error("Error:", error);
		alert('알 수 없는 이유로 이력서 제출 실패..');
	}
}