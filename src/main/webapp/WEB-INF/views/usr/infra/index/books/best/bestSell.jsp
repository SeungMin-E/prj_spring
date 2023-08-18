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
    <!-- css -->
    <link rel="stylesheet" href="../../../resources/css/project_nsa/user/UserPage.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"> 
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    
    <!-- custom css -->
    <style>
        body {
            background-image: url('../../../resources/images/project_nsa/usr_page/background2.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }

        header {
            color: #fff;
            padding: 10px;
            text-align: center;
        }

        h1 {
            margin: 0;
        }

        .container {
            height: 750px;
            max-width: 960px;
            margin: 20px auto;
            margin-top: 100px;
            padding: 0 20px;
            border: 5px outset #6e07696f;
            background: linear-gradient(to right, rgba(138, 43, 226, 0.7), rgba(148, 0, 211, 0.7));
            text-align: center;
        }

        .book {
            display: flex;
            margin-bottom: 20px;
        }

        .book img {
            margin-top: 20px;
            width: 150px;
            height: 200px;
            margin-right: 20px;
        }

        .book-info {
            position: relative;
            left: -100px;
            flex: 1;
            margin-top: 15px;
        }

        .book-title {
            font-size: 24px;
            font-weight: bold;
            margin: 0 0 10px;
        }

        .book-author {
            font-size: 16px;
            color: #000000;
            margin: 0 0 10px;
        }

        .book-description {
            font-size: 14px;
            line-height: 1.5;
            margin: 0;
        }

        .medal img {
            height: 50px;
            width: auto;
        }

        .add-to-cart-button 
        {
        position: relative;
        top: 170px;
        height: 50px;
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
        }

        .add-to-cart-button:hover {
        background-color: #0056b3;
        }

        .stars {
        font-size: 1rem;
        position: relative;
        top: 225px;
        left: -210px;
        height: 0px;
        width: auto;
        color:#ffee00; 
        }

        .orders {
        color:#000000; 
        }

    </style>
    
    <!-- script cdn -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/e402926c7b.js" crossorigin="anonymous"></script>
    <title>Welcome to PrimeCube</title>
</head>
<body>
    <%@include file="../../../index/include/header.jsp" %>
    
    <!-- 베스트셀러 메인페이지 -->
    <section class = "hero-page">
		<div class = "hero-bg">
		<h3>PrimeCube</h3>
		  <h2>Best Seller</h2>
		  <div class = "line">
			<div></div>
			<div></div>
			<div></div>
		  </div>
		  <p class = "text">많은 고객님들이 찾으신 책들을 모아보았습니다.</p>
		</div>
	</section>

    <div class="container">
        <div class="book">
            <img src="img/book-101.jpg" alt="Book 1">

            <div class = "medal">
            <img src="img/gold.png">
            </div>

            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
                <span class = "orders">( 823 )</span>
             </div>

            <div class="book-info">
                <h2 class="book-title">Atomic Habits</h2>
                <p class="book-author">James Clear</p>
                <p class="book-description">Atomic Habits is a bestselling book by James Clear that teaches how small changes can lead to big results through the power of habits.</p>
            </div>


            <button class="add-to-cart-button">Add to Cart</button>


        </div>
        <div class="book">
            <img src="img/book-99.jpg" alt="Book 2">
            <div class = "medal">
                <img src="img/silver.png">
            </div>

            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
                <span class = "orders">( 576 )</span>
             </div>


            <div class="book-info">
                <h2 class="book-title">How to Think Like A Roman Emperor</h2>
                <p class="book-author">Donald Robertson</p>
                <p class="book-description">"How to Think Like an Emperor" is a book by Donald Robertson that applies Stoic philosophy, inspired by Marcus Aurelius, to cultivate resilience and wisdom for a fulfilling life.</p>
            </div>

            <button class="add-to-cart-button">Add to Cart</button>

        </div>
        <div class="book">
            <img src="img/book-100.jpg" alt="Book 3">
            <div class = "medal">
                <img src="img/bronze.png">
                </div>

                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                    <span class = "orders">( 250 )</span>
                 </div>
    

            <div class="book-info">
                <h2 class="book-title">The Alchemist</h2>
                <p class="book-author">Paulo Coelho</p>
                <p class="book-description">"The Alchemist" by Paulo Coelho is a captivating novel about a shepherd's quest for his personal legend, inspiring readers to follow their dreams and find true fulfillment.</p>
            
            </div>

            <button class="add-to-cart-button">Add to Cart</button>

        	</div>
    	   <%-- <%@include file="../../../index/include/side_remote.jsp" %> --%>
       </div> 
   <%@include file="../../../index/include/footer.jsp" %>
    
   	<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
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