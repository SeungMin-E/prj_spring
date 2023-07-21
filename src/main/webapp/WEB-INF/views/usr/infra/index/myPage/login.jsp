<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"  %>

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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/e402926c7b.js" crossorigin="anonymous"></script>
    <title>로그인</title>
</head>
<body>
    <%@include file="../../index/include/header.jsp" %>
    <section>
        <div class="wrap_container">
            <div class="d-flex flex-row justify-content-center mt-5">
                <i class="fa-sharp fa-solid fa-book align-self-center" style="font-size: 135px; color: rgb(206, 179, 26);"></i>
                <h1 class="align-self-center">&nbsp;&nbsp;&nbsp;&nbsp;로그인</h1>
            </div>
            <div class="d-flex justify-content-center mt-5">
                <form id="formLogin">
                    <div class="col-auto mb-3" style="width: 500px;">
                        <label for="exampleInputEmail1" class="form-label fs-3">ID</label>
                        <input type="text" name="userID" class="form-control p-3" id="userID" aria-describedby="emailHelp">
                    </div>
                    <div class="col-auto mb-3" style="width: 500px;">
                        <label for="exampleInputPassword1" class="form-label fs-3">PW</label>
                        <input type="password" name="userPW" class="form-control p-3" id="userPW">
                    </div>
                    <div class="col-auto mb-3 d-flex justify-content-center">
                        <div class="mb-3 form-check-inline">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">아이디 저장</label>
                        </div>
                        <div class="mb-3 form-check-inline">
                            <input type="checkbox" class="form-check-input" id="exampleCheck2">
                            <label class="form-check-label" for="exampleCheck2">자동 로그인</label>
                        </div>
                    </div>
                    <div class="d-flex justify-content-center">
                        <button type="button" name="btnLogin" id="btnLogin" class="btn btn-primary">로그인</button>
                    </div>
                    <!-- 오븐 확인하고 빠진거나 부족한거 수정 예정 -->
                </form>
            </div>
        </div>
    </section>
    <!-- 풋 인클루드 확정 -->
    <%@include file="../../index/include/footer.jsp" %>
    <!-- 푸터 끝 -->
</body>


<script type="text/javascript">

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

</script>
</html>