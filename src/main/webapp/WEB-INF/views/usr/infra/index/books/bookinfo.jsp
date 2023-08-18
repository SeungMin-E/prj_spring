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
    <link rel="stylesheet" href="../../../../resources/css/project_nsa/user/UserPage.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"> 
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
    <link rel="icon" href="img/book-logo.png" type="image">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    
    <script src="https://kit.fontawesome.com/e402926c7b.js" crossorigin="anonymous"></script>
    <title>Welcome to PrimeCube</title>
</head>

<body>
	<%@include file="../../index/include/header.jsp" %>
	
	<section class = "hero-page">
		<div class = "hero-bg">
		<h3>PrimeCube</h3>
		  <h2>Review Section</h2>
		  <div class = "line">
			  <div></div>
			  <div></div>
			  <div></div>
		  </div>
		  <p class = "text">위에 책에 대한 설명과 리뷰입니다.</p>
		</div>
	</section>
	
	
	<section class="review-details-page">
		<div class="review-details-container">
		<div class = "card-wrapper">
			<div class = "card">
				<div class = "product-imgs">
					<div class = "img-display">
					<div class = "img-showcase">
						<img src = "../../../../resources/images/project_nsa/usr_page/book-1.jpg">
					</div>
					</div>
				</div>
		 
			  <div class = "review-content">
				<h2 class = "product-title"><c:out value="${bookItem.bookTitle }"/></h2>
				<a href = "#" class = "product-link"><c:out value="${bookItem.anthorName }"/></a>
				<div class = "product-rating">
				  <i class = "fas fa-star"></i>
				  <i class = "fas fa-star"></i>
				  <i class = "fas fa-star"></i>
				  <i class = "fas fa-star"></i>
				  <i class = "fas fa-star-half-alt"></i>
				  <span>4.7(21)</span>
				</div>
  
				<div class = "product-price">
				  <p class = "last-price">Old Price: <span><fmt:formatNumber value="${bookItem.price}"  pattern="#,###"/>원</span></p>
				  <p class = "new-price">Discounted Price: 
				  	<span>
						<c:set var="dcPrice" value="${bookItem.price - (bookItem.price * 0.1) }"/>
						<fmt:parseNumber var="dcP" integerOnly="true" value="${dcPrice }"/>
						<fmt:formatNumber value="${dcP}"  pattern="#,###"/>원 (10%)
				  	</span>
				  </p>
				</div>
  
				<div class = "product-detail">
				  <h2>Description: </h2>
				  <p><c:out value="${bookItem.bookContent }"/></p> 
				  <ul>
					<li><i class="fa fa-check"></i> Format: <span>Paperback</span></li>
					<li><i class="fa fa-check"></i> Available: <span>in stock</span></li>
					<li>
						<i class="fa fa-check"></i> Category: 
						<span>
							<c:set var="theme" value="${CodeServiceImpl.selectListCachedCode('3')}"/>
							<c:forEach items = "${theme }" var="category" varStatus="status">
								<c:if test = "${bookItem.bookTheme eq  category.seq}">
	                         		<c:out value="${category.code_value }" />
	                            </c:if>
							</c:forEach>
						</span>
					</li>
					<li><i class="fa fa-check"></i> 배송 가능 지역: <span>한국 전역</span></li>
					<li><i class="fa fa-check"></i> 배송비 : <span>무료</span></li>
				  </ul>
				</div>
  
				<div class = "purchase-info">
				  <input type = "number" min = "0" value = "1">
				  <button type = "button" class = "btn"><i class = "fas fa-shopping-cart"></i>
					Add to Cart 
				  </button>
				  <button type = "button" class = "btn"> <i class = "fas fa-heart"></i> Add to Wishlist</button>
				</div>
  
				<div class = "social-links">
				  <p>Share At:  </p>
				  <a href = "#">
					<i class = "fab fa-facebook-f"></i>
				  </a>
				  <a href = "#">
					<i class = "fab fa-twitter"></i>
				  </a>
				  <a href = "#">
					<i class = "fab fa-instagram"></i>
				  </a>
				  <a href = "#">
					<i class = "fab fa-whatsapp"></i>
				  </a>
				  <a href = "#">
					<i class = "fab fa-pinterest"></i>
				  </a>
				</div>
		  	</div>
		</div>
	  </div>
	</div>
	</section>         
	
	<section class="related">
	<div class="featured" id="featured">
		<h1 class="heading"><span>Related Products</span></h1>
		<div class="swiper featured-slider">
			<div class="swiper-wrapper">

				<div class="swiper-slide box">
				<div class="images">
					<img src="img/book-2.jpg">
				</div>
				<div class="content">
					<h3>Catching Fire</h3>
					<div class="price">&#8369;666.66<span>&#8369;999.99</span></div>
					<a href="#" class="featured-btn">Add to Cart</a>
				</div>
				</div>

				<div class="swiper-slide box">
				<div class="images">
					<img src="img/book-3.jpg">
				</div>
				<div class="content">
					<h3>Mockingjay</h3>
					<div class="price">&#8369;666.66<span>&#8369;999.99</span></div>
					<a href="#" class="featured-btn">Add to Cart</a>
				</div>
				</div>

				<div class="swiper-slide box">
				<div class="images">
					<img src="img/book-4.jpg">
				</div>
				<div class="content">
					<h3>The Raven Boys</h3>
					<div class="price">&#8369;666.66<span>&#8369;999.99</span></div>
					<a href="#" class="featured-btn">Add to Cart</a>
				</div>
				</div>

				<div class="swiper-slide box">
				<div class="images">
					<img src="img/book-5.jpg">
				</div>
				<div class="content">
					<h3>The Raven Boys</h3>
					<div class="price">&#8369;666.66<span>&#8369;999.99</span></div>
					<a href="#" class="featured-btn">Add to Cart</a>
				</div>
				</div>

				<div class="swiper-slide box">
				<div class="images">
					<img src="img/book-6.jpg">
				</div>
				<div class="content">
					<h3>The Dream Thieves</h3>
					<div class="price">&#8369;666.66<span>&#8369;999.99</span></div>
					<a href="#" class="featured-btn">Add to Cart</a>
				</div>
				</div>

				<div class="swiper-slide box">
				<div class="images">
					<img src="img/book-7.jpg">
				</div>
				<div class="content">
					<h3>Blue Lily, Lily Blue</h3>
					<div class="price">&#8369;333.59 <span>&#8369;667.18</span></div>
					<a href="#" class="featured-btn">Add to Cart</a>
				</div>
				</div>

				<div class="swiper-slide box">
				<div class="images">
					<img src="img/book-8.jpg">
				</div>
				<div class="content">
					<h3>The Raven King</h3>
					<div class="price">&#8369;666.66 <span>&#8369;999.99</span></div>
					<a href="#" class="featured-btn">Add to Cart</a>
				</div>
				</div>


				<div class="swiper-slide box">
				<div class="images">
					<img src="img/book-9.jpg">
				</div>
				<div class="content">
					<h3>Six of Crows</h3>
					<div class="price">&#8369;666.66 <span>&#8369;999.99</span></div>
					<a href="#" class="featured-btn">Add to Cart</a>
				</div>
				</div>

				<div class="swiper-slide box">
				<div class="images">
					<img src="img/book-10.jpg">
				</div>
				<div class="content">
					<h3>Crooked Kingdom</h3>
					<div class="price">&#8369;666.66 <span>&#8369;999.99</span></div>
					<a href="#" class="featured-btn">Add to Cart</a>
				</div>
				</div>
			
			</div>

			<div class="swiper-button-next swiper-button-black"></div>
			<div class="swiper-button-prev"></div>

		</div>
	</div>
</section>
    <%@include file="../../index/include/footer.jsp" %>
    
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
	<!--Custom JS file link-->
	<script src="../../../resources/js/project_nsa/user/script.js"></script>
</body>
</html>