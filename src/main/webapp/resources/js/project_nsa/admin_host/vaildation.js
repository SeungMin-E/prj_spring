ttest = function(){
	alert("작동");
}

/*check = function(param){
	myRe = /[^?a-zA-Z0-9/]/;
	
	if(myRe.test($.trim(param)) == false){
				alert("공백없는 숫자와 한글과 대소문자만 입력 가능합니다.");
				$(param).focus();
				return false;
			}else{
				
			}
}*/

check = function(obj){
	alert(obj);
	
	myRe = /[^?a-zA-Z0-9/]/;
	
/*	if(myRe.test($.trim(obj.val())) == false){
				alert("공백없는 숫자와 한글과 대소문자만 입력 가능합니다.");
				$(obj).focus();
				return false;
			}else if($.trim(obj.val()) == "" || $.trim(obj.val()) == null ){
				alert(obj.getName() + "을(를) 작성하셔야합니다.");
				$(obj).focus();
			}else{
				
			}*/

	if($.trim(obj.val()) == "" || $.trim(obj.val()) == null){
				alert("작성하지 않은 곳이 있습니다. 작성하셔야합니다.");
				$(obj).focus();
				return false;
			}else if(myRe.test($.trim(obj.val())) == false){
				alert("공백없는 숫자와 한글과 대소문자만 입력 가능합니다.");
				$(obj).focus();
			}else{
				
			}
}