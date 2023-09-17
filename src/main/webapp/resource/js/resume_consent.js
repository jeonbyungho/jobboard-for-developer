console.log('🖐️resume_consent.js');

async function resumeConsent(path, sendId){
	const sendData = {
		sendId : sendId
	}
	console.table(sendData);
	
	try{
		response = await fetch(path + '/resume/consent', {
			method : "PUT",
			headers : {
				"Content-Type": "application/x-json;charset=utf-8",
			},
			body : JSON.stringify(sendData),
		});
		const mes = await response.text();
		console.log("mes :", mes);
		
		// 실패 시..
		if(mes != "success"){
			alert(mes);
			return;
		}
		
		// 성공 시..
		alert('승락!');
		location.reload();
		return;
	
	// 에러
	} catch (error){
		console.error("Error:", error);
		alert('알 수 없는 이유로 이력서 승락 실패..');
	}
}