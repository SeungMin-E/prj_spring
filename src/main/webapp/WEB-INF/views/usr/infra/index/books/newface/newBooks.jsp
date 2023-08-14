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
        <!-- 타이틀 -->
			<h1 class="ms-5 mt-4">화제의 신간</h1>
			<p class="ms-5 mt-1">신간 치고는 너무 기대가 된다!</p>
			  	<!-- oven에서 기획한 슬라이드? -->
			  	<div id="carouselExampleFade" class="carousel slide carousel-fade">
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img src="https://cdn.pixabay.com/photo/2016/03/09/15/29/books-1246674_1280.jpg" class="d-block w-100" alt="테스트 중1">
				    </div>
				    <div class="carousel-item">
				      <img src="https://cdn.pixabay.com/photo/2017/08/07/19/07/books-2606859_1280.jpg" class="d-block w-100" alt="테스트 중2">
				    </div>
				    <div class="carousel-item">
				      <img src="https://cdn.pixabay.com/photo/2016/03/16/21/25/book-1261801_1280.jpg" class="d-block w-100" alt="테스트 중3">
				    </div>
				  </div>
				  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Previous</span>
				  </button>
				  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Next</span>
				  </button>
				</div>
				
			  <div class="d-flex justify-content-between mt-4">
			  	<div class="col-auto">
			  		<img src="#" alt="#">
			  	</div>
			  	<!-- 메인 -->
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