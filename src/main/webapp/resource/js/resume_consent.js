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
		
		if(mes != "success"){
			alert('승락 실패..');
			return;
		}
		
		alert('승락!');
		return;
		
	} catch (error){
		console.error("Error:", error);
		alert('알 수 없는 이유로 이력서 승락 실패..');
	}
}