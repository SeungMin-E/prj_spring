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
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    
      <style>
      	.carousel{
      		width: 85%; 
      		height: 400px;
      	}
      
        .container {
            position: relative;
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            grid-gap: 20px;
            margin-top: 100px;
        }
        .book {
            text-align: center;
            margin-bottom : 20px;
        }
        .book img {
            width: 200px;
            height: 300px;
        }
        .book p {
            margin-top: 10px;
        }
        .button {
            margin-top: 10px;
        }
        
        .button {
    background-color: green;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
</style>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/e402926c7b.js" crossorigin="anonymous"></script>
    <title>Welcome to PrimeCube</title>
</head>
<body>
    <%@include file="../../../index/include/header.jsp" %>
    
    <section class = "hero-page">
		<div class = "hero-bg">
		  <h3>Prime Cube</h3>
		  <h2>신간 도서</h2>
		  <div class = "line">
			<div></div>
			<div></div>
			<div></div>
		  </div>
		  <p class = "text">새로 들어온 신간도서입니다. 마음에 드셨으면 좋겠습니다.</p>
		  
		  <div id="carouselExample" class="carousel slide">
		      <div class="carousel-inner">
		        <div class="carousel-item active">
		          <svg class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="800" height="400"  xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: First slide" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#555" dy=".3em">First slide</text></svg>
		        </div>
		        <div class="carousel-item">
		          <svg class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="800" height="400" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Second slide" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#666"></rect><text x="50%" y="50%" fill="#444" dy=".3em">Second slide</text></svg>
		        </div>
		        <div class="carousel-item">
		          <svg class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="800" height="400" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Third slide" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#555"></rect><text x="50%" y="50%" fill="#333" dy=".3em">Third slide</text></svg>
		        </div>
		      </div>
		      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
		        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		        <span class="visually-hidden">Previous</span>
		      </button>
		      <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
		        <span class="carousel-control-next-icon" aria-hidden="true"></span>
		        <span class="visually-hidden">Next</span>
		      </button>
	    </div>
    </div>
	</section>
	
	
	 
	
	<h1></h1>
    <div class="container">
    
        <div class="book">
            <img src="../../../resources/images/project_nsa/usr_page/book-56.jpg" alt="Book 1">
            <h3>The Hobbit</h3>
            <p>Book 1 Description</p>
            <button class="button">Add to Cart</button>
        </div>
        <div class="book">
            <img src="../../../resources/images/project_nsa/usr_page/book-57.jpg" alt="Book 2">
            <h3>Alice's Adventures in Wonderland</h3>
            <p>Book 2 Description</p>
            <button class="button">Add to Cart</button>
        </div>
        <div class="book">
            <img src="../../../resources/images/project_nsa/usr_page/book-58.jpg" alt="Book 3">
            <h3>Harry Potter and the Philosopher's Stone</h3>
            <p>Book 3 Description</p>
            <button class="button">Add to Cart</button>
        </div>
        <!-- Repeat the above book elements for the remaining books -->
        <div class="book">
            <img src="../../../resources/images/project_nsa/usr_page/book-59.jpg" alt="Book 4">
            <h3>Charlie and the Chocolate Factory</h3>
            <p>Book 4 Description</p>
            <button class="button">Add to Cart</button>
        </div>
        <div class="book">
            <img src="../../../resources/images/project_nsa/usr_page/book-60.jpg" alt="Book 5">
            <h3>The Velveteen Rabbit</h3>
            <p>Book 5 Description</p>
            <button class="button">Add to Cart</button>
        </div>
        <div class="book">
            <img src="../../../resources/images/project_nsa/usr_page/book-61.jpg" alt="Book 6">
            <h3>Winnie the Pooh</h3>
            <p>Book 6 Description</p>
            <button class="button">Add to Cart</button>
        </div>
        <div class="book">
            <img src="../../../resources/images/project_nsa/usr_page/book-62.jpg" alt="Book 7">
            <h3>A Wrinkle in Time</h3>
            <p>Book 7 Description</p>
            <button class="button">Add to Cart</button>
        </div>
        <div class="book">
            <img src="../../../resources/images/project_nsa/usr_page/book-63.jpg" alt="Book 8">
            <h3>The Wonderful Wizard of Oz</h3>
            <p>Book 8 Description</p>
            <button class="button">Add to Cart</button>
        </div>
        <div class="book">
            <img src="../../../resources/images/project_nsa/usr_page/book-101.jpg" alt="Book 9">
            <h3>Atomic Habits</h3>
            <p>Book 9 Description</p>
            <button class="button">Add to Cart</button>
        </div>
    </div>
    
   <%@include file="../../../index/include/footer.jsp" %>
	
	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>    
	<script src="../../../resources/js/project_nsa/user/script.js"></script>
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