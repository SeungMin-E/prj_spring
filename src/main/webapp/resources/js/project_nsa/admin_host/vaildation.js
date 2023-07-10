ttest = function(){
	alert("작동");
}
check = function(param){
	myRe = /[^?a-zA-Z0-9/]/;
	
	if(myRe.test($.trim(param)) == false){
				alert("공백없는 숫자와 한글과 대소문자만 입력 가능합니다.");
				$(param).focus();
				return false;
			}else{
				
			}
}