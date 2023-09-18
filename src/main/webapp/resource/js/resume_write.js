// 학교 정보 추가
document.getElementById("schoolPlus").onclick = (e) => {
    e.preventDefault();
    console.log('학교 정보 추가 버튼 클릭');

    const list = document.getElementById('schoolList');

    const li = document.createElement('li');
    li.setAttribute('class', 'schoolItem');

    // 학교 정보 입력 폼을 생성하여 <li>에 추가
    li.innerHTML =
        '<input type="text" name="schRating" placeholder="학교 등급"/>'
        + '<input type="text" name="schName" placeholder="대학교 이름"/>'
        + '<input type="text" name="schDepartment" placeholder="학과"/>'
        + '<input type="text" name="schStatus" placeholder="졸업 여부"/>'
        + '<input type="number" name="schGrade" placeholder="학점"/>';

    // 삭제 버튼을 생성하여 <li>에 추가
    const deleteButton = document.createElement('button');
    deleteButton.textContent = '삭제';
    deleteButton.addEventListener('click', function() {
        // 클릭한 삭제 버튼의 부모 노드(<li>) 삭제
        list.removeChild(li);
    });
    li.appendChild(deleteButton);

    // <li>를 <ul>에 추가
    list.appendChild(li);
};

// 경력 정보 추가
document.getElementById("regPlus").onclick = (e) => {
    e.preventDefault();
    console.log('경력 정보 추가 버튼 클릭');

    const list = document.getElementById('regList');

    const li = document.createElement('li');
    li.setAttribute('class', 'regItem');

    // 경력 정보 입력 폼을 생성하여 <li>에 추가
    li.innerHTML =
        '<input type="text" name="regName" placeholder="회사 이름"/>'
        + '<input type="text" name="regJob" placeholder="직무"/>'
        + '<input type="date" name="regSday"/>'
        + '<input type="date" name="regEday"/>';

    // 삭제 버튼을 생성하여 <li>에 추가
    const deleteButton = document.createElement('button');
    deleteButton.textContent = '삭제';
    deleteButton.addEventListener('click', function() {
        // 클릭한 삭제 버튼의 부모 노드(<li>) 삭제
        list.removeChild(li);
    });
    li.appendChild(deleteButton);

    // <li>를 <ul>에 추가
    list.appendChild(li);
};

// 자격증 정보 추가
document.getElementById("liecencePlus").onclick = (e) => {
    e.preventDefault();
    console.log('자격증 정보 추가 버튼 클릭');

    const list = document.getElementById('liecenceList');

    const li = document.createElement('li');
    li.setAttribute('class', 'liecenceItem');

    // 자격증 정보 입력 폼을 생성하여 <li>에 추가
    li.innerHTML =
        '<input type="text" name="lieTitle" placeholder="자격증 명칭"/>'
        + '<input type="date" name="lieAcquisition"/>';
        
        
        
// 포트폴리오 정보 추가
document.getElementById("portfolioPlus").onclick = (e) => {
    e.preventDefault();
    console.log('포트폴리오 정보 추가 버튼 클릭');

    const list = document.getElementById('portfolioList');

    const li = document.createElement('li');
    li.setAttribute('class', 'portfolioItem');

    // 포트폴리오 정보 입력 폼을 생성하여 <li>에 추가
    li.innerHTML =
        '<input type="text" name="portfolioURL" placeholder="포트폴리오 URL"/>';

    // 삭제 버튼을 생성하여 <li>에 추가
    const deleteButton = document.createElement('button');
    deleteButton.textContent = '삭제';
    deleteButton.addEventListener('click', function() {
        // 클릭한 삭제 버튼의 부모 노드(<li>) 삭제
        list.removeChild(li);
    });
    li.appendChild(deleteButton);

    // <li>를 <ul>에 추가
    list.appendChild(li);
};

       
        

    // 삭제 버튼을 생성하여 <li>에 추가
    const deleteButton = document.createElement('button');
    deleteButton.textContent = '삭제';
    deleteButton.addEventListener('click', function() {
        // 클릭한 삭제 버튼의 부모 노드(<li>) 삭제
        list.removeChild(li);
    });
    li.appendChild(deleteButton);

    // <li>를 <ul>에 추가
    list.appendChild(li);
};
