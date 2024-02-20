document.getElementById("input-address").onclick = (event)=>{
    new daum.Postcode({
        oncomplete: function(data){
            console.table(data);
            event.target.value = data.address;
        }
    }).open();
}