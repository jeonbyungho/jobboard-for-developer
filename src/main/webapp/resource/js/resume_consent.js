console.log('🖐️resume_consent.js');

async function resumeConsent(path, resumeId){
	alert(path + ":" + resumeId);
	const resumeData = {
		resumeId : resumeId
	}
	console.table(resumeData);
	
	try{
		response = await fetch(path + '/resume/consent', {
			method : "PUT",
			headers : {
				"Content-Type": "application/x-json;charset=utf-8",
			},
			body : JSON.stringify(resumeData),
		});
		const mes = await response.text();
		console.log("mes :", mes);
		
		if(mes == "success"){
			alert('승락!');
			return;
		}
		
	} catch (error){
		console.error("Error:", error);
		alert('알 수 없는 이유로 이력서 승락 실패..');
	}
}