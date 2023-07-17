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
    <title>Welcome to PrimeCube</title>
</head>
<body>
    <%@include file="../../../index/include/header.jsp" %>
    <section>
        <div class="wrap_container">
			<h1 class="ms-5 mt-4">베스트샐러</h1>
			<p class="ms-5 mt-1">많은 분들이 찾은 도서입니다.</p>
			  <div class="d-flex justify-content-between mt-4">
			  	<div class="col-auto">
			  		<img src="#" alt="#">
			  	</div>
			  	<div class="col-auto">
			  		<div class="row">
				  		<div class="d-flex justify-content-start">
				  			<span class="me-5">title</span>
				  			<span>writer</span>
				  		</div>
				  		<div class="">price</div>
				  		<div class="">dec_section</div>
			  		</div>
			  	</div>
			  </div>
			  <div class="d-flex justify-content-between mt-4">
			  	<div class="col-auto">
			  		<img src="#" alt="#">
			  	</div>
			  	<div class="col-auto">
			  		<div class="row">
				  		<div class="">
				  			<span class="me-5">title</span>
				  			<span>writer</span>
				  		</div>
				  		<div class="">price</div>
				  		<div class="">dec_section</div>
			  		</div>
			  	</div>
			  </div>
			  <div class="d-flex justify-content-between mt-4">
			  	<div class="col-auto">
			  		<img src="#" alt="#">
			  	</div>
			  	<div class="col-auto">
			  		<div class="row">
				  		<div class="">
				  			<span class="me-5">title</span>
				  			<span>writer</span>
				  		</div>
				  		<div class="">price</div>
				  		<div class="">dec_section</div>
			  		</div>
			  	</div>
			  </div>
        </div>
        <%@include file="../../../index/include/side_remote.jsp" %>
    </section>
   <%@include file="../../../index/include/footer.jsp" %>
    
    <script type="text/javascript">

	
	
	$("#btnLogout").on("click", function(){
		$.ajax({
			async: true
			, chche : false
			, type : "post"
			, url : "/logOutP"
			,data : { }
			, success : function(respone){
				alert("로그아웃 되셨습니다.");
				location.href = "/projectNSA/main_page";
			}
			, error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
		
	});


	validation = function() {
//		 if(!checkNull($("#userID"), $.trim($("#userID").val()), "아이디를 입력해 주세요!")) return false;
//		 if(!checkNull($("#userPW"), $.trim($("#userPW").val()), "비밀번호를 입력해 주세요!")) return false;
	}

	</script>
</body>
</html>