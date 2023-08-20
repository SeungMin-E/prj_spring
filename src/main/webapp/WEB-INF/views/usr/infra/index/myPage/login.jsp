<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../resources/css/project_nsa/user/UserPage.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/e402926c7b.js" crossorigin="anonymous"></script>
    <title>로그인</title>
</head>
<body>
	<!-- header -->
    <%@include file="../../index/include/header.jsp" %>
    	
    	
  <div class="account-container">
        
    <div class="forms-container">
       <!-- 로그인 -->
        <div class="signin-signup" >
            <form id="formLogin" class="sign-in-form">
        
                <h2 class="title">로그인</h2>
            
                <div class="input-field">
                    <i class="fas fa-user"></i>
                    <input type="text" name="userID" id="userID" value="rain" placeholder="Username"/>
                </div>

                <div class="input-field">
                    <i class="fas fa-lock"></i>
                    <input type="password" name="userPW" id="userPW" value="134679" placeholder="Password"/>
                </div>

                
                <input type="button" name="btnLogin" id="btnLogin" value="Login" class="account-btn solid"/>
                    
                <p class="social-text">소설미디어 로그인</p>
            
                <div class="social-media">
                    <a href="index-logged-in.html" class="social-icon"><i class="fab fa-facebook-f"></i></a>
                    <a href="index-logged-in.html" class="social-icon"><i class="fab fa-twitter"></i></a>
                    <a href="index-logged-in.html" class="social-icon"><i class="fab fa-google"></i></a>
                    <a href="index-logged-in.html" class="social-icon"><i class="fab fa-linkedin-in"></i></a>
                </div>

            </form>
     		
     		<!-- 회원가입  -->
            <form  name="formList" class="sign-up-form">
                
                <h2 class="title">회원가입</h2>
                
                <div class="input-field">
                    <i class="fas fa-user"></i>
                    <input type="text" name="userID" placeholder="Username"/>
                </div>

                <div class="input-field">
                    <i class="fas fa-envelope"></i>
                    <input type="email" placeholder="Email"/>
                </div>

                <div class="input-field">
                    <i class="fas fa-lock"></i>
                    <input type="password" name="userPW" placeholder="Password"/>
                </div>
				
				<div class="input-field">
					<i class="fa-solid fa-venus-mars"></i>
                    <select>
                    	<option value="" selected>::성별을 선택해주세요::</option>
                    	<option value="1">남</option>
                    	<option value="2">여</option>
                    	<option value="3">기타(밝히지 않음)</option>
                    </select>
                </div>
               
                <input type="button" id="create" class="account-btn" value="Sign up"/>
               
                <p class="social-text">Or Sign up with social platforms</p>
            
                <div class="social-media">
                    <a href="#" class="social-icon"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="social-icon"> <i class="fab fa-twitter"></i></a>
                    <a href="#" class="social-icon"><i class="fab fa-google"></i></a>
                    <a href="#" class="social-icon"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </form>

        </div>
    </div>

        <div class="panels-container">
            
            <div class="panel left-panel">
                <div class="content">
                    <h3>New here?</h3>
                    <p>회원가입하시고 프라임 큐브의 회원으로서 만끽하시면 감사합니다.</p>
                    <button class="account-btn transparent" id="sign-up-btn">Sign up</button>
                </div>  
            </div>

        <div class="panel right-panel">
            <div class="content">
                <h3>이미 가입하셨나요?</h3>
                <p>여기서 로그인하시고 프라임 큐브를 만끽해주세여!</p>
                <button class="account-btn transparent" id="sign-in-btn"> Sign in</button>
            </div>
        </div>
    
    </div>
</div>

  <script type="text/javascript">
   
  </script>
    	
    	
</body>

<script src="../resources/js/project_nsa/admin_host/vaildation.js"></script>
<script type="text/javascript">
	
	/* 로그인 */
	$("#btnLogin").on("click", function(){
		
		if(validation() == false) return false;
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/loginP"
			/* ,data : $("#formLogin").serialize() */
			,data : {
				"userID" : $("#userID").val(),
				"userPW" : $("#userPW").val()
				}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/projectNSA/main_page";
				} else {
					alert("그런 회원 없습니다.");
					
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});


	validation = function() {

		function checkNull(element, value, errorMessage) {
			  if (value === "" || value === null || value === undefined) {
			    alert(errorMessage);
			    element.focus();
			    return false;
			  }
			  
			}
		
		 if(checkNull($("#userID"), $.trim($("#userID").val()), "아이디를 입력해 주세요!")) return false;
		 if(checkNull($("#userPW"), $.trim($("#userPW").val()), "비밀번호를 입력해 주세요!")) return false;
	}
	
	/* 회원가입 */
	var form = $("form[name='formList']");
	var id = $("input[name='userID']");
    	
    	vaildationUpdt = function(){
    		if(nc(id) == false ) return false;
    	}
		
		$(id).on("blur",function(){
			
			if(vaildationUpdt() == false){
				return false();
			}
				$.ajax({
					async : true
					, cache : false
					, type : "post"
					, url : "/duplicate"
					, data : {
						"userID" : $(id).val()
					}
				,success : function(response){
					if(response.du == "available"){
						alert("이 아이디는 사용이 가능합니다.");
					}else{
						alert("이 아이디는 사용이 불가능합니다.");
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
				
			});
		});
		
		$("#create").on("click", function(){
			form.attr("method", "post");
			form.attr("action", "/getReadyForTheNextBattle").submit();
		});
	
	/* 페이지 전환 */
	 const sign_in_btn = document.querySelector("#sign-in-btn");
	    const sign_up_btn = document.querySelector("#sign-up-btn");
	    const container = document.querySelector(".account-container");

	    sign_up_btn.addEventListener("click", () => {
	    container.classList.add("sign-up-mode");
	    });

	    sign_in_btn.addEventListener("click", () => {
	    container.classList.remove("sign-up-mode");
	    });

</script>
</html>