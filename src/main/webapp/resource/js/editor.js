console.log('editor');

function editorImageUpload(options){
    return function(){
        console.log('Event editorImageUpload');
        const editor = this.quill;
        
        const fileEl = document.createElement('input');
        
        fileEl.type = 'file';
        fileEl.accept = options.accept.join(",");
        fileEl.onchange = async (event)=>{
            console.log('Event onchange');
            try{
	            // 파일
	            const file = event.target.files[0];
	            
	            // 유효성 검사
	            if(file.size > options.size){
	                throw new Error('파일 크기가 너무 큽니다.');
	            } else if(!options.accept.includes(file.type)){
	                throw new Error('지원하지 않는 형식입니다.');
	            }
	            
	            // 보낼 데이터 구성
	            const formDate = new FormData();
	            formDate.append('image', file);
	            
	            // 서버에 이미지 전송
	            const resp = await fetch(location.href + '/image',{
	                method: 'POST',
	                body: formDate
	            });
	            
	            // 전송 시 에러
	            if(!resp.ok) {
	                throw new Error('응답 에러');
	            }else if(!resp.redirected) {
	                throw new Error('응답 에러');
				}
				
				// 이미지 태그 삽입
	            editor.insertEmbed(editor.getSelection().index, 'image', resp.url);
	    	} catch(error){
				console.log(error);
				alert(error.message);
			}
		}
		fileEl.click();
    }
}

const editorContainerEl = document.getElementById("editor-container");
const editOption = {
    modules:{
        toolbar: {
            container: [
                [{ 'header': [1, 2, 3, false] }],
                ['bold', 'italic', 'underline', 'strike'],
                [{ 'align': [] }],
                [{ 'list': 'ordered'}, { 'list': 'bullet' }],
                ['link', 'image']
            ],
            handlers:{
                image: editorImageUpload({
                        accept:['image/jpeg','image/png'],
                        size: 2 * 1024 * 1024
                    }),
            }
        }
    },
    theme: 'snow',
    placeholder: '게시판',
}

const quill = new Quill(editorContainerEl, editOption);

const btnEditSubmit = document.getElementById('btn-edit-submit');

btnEditSubmit.onclick = async (event)=>{
    const formData = new FormData();
    formData.append("content", quill.getSemanticHTML());
    const bodyData = new URLSearchParams(formData);
    try{
        // 서버에 이미지 전송
        const resp = await fetch(location.href,{
            method: 'POST',
			headers: {
                "Content-Type": "application/x-www-form-urlencoded;charset=UTF-8",
            },
            body: bodyData
        });
        // 전송 시 에러
        if(!resp.ok) {
            editor.insertText(0, 'Error', 'bold', true);
            throw new Error('응답 에러');
        }

        if(resp.redirected){
            location.href = resp.url;
        } else {
            throw new Error('리다이렉션이 발생하지 않음', error);
        }

    } catch(error){
        throw new Error('요청 에러', error);
    }
}