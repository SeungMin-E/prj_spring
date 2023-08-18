<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>나의 위시 리스트 - Prime Cube</title>
<link rel="stylesheet" href="../../../resources/css/project_nsa/user/UserPage.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

<!-- 커스텀 CSS -->
<style>
		section {
			font-family: Poppins, sans-serif;
			font-size: 16px;
			line-height: 1.5;
		}

		.header-container {
			display: flex;
			align-items: center;
			justify-content: flex-start;
			margin-left: 50px;
		}

		.heart {
			display: flex;
			align-items: center;
		}

		.heart-icon {
			background: #ffffff;
			width: 30px;
			height: 30px;
			border-radius: 50%;
			display: flex;
			justify-content: center;
			align-items: center;
			margin-right: 5px;
		}

		#likes {
			padding: 40px 20px;
		}

		#likes h1 {
			font-size: 28px;
			margin-bottom: 20px;
		}

		.book-list {
			display: grid;
			grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
			grid-gap: 20px;
		}

		.book {
			background-color: #fff;
			box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
			padding: 20px;
			border-radius: 10px;
			width: 250px;
			position: relative;
			overflow: hidden;
			border: var(--border);
			text-align: center;
		}

		.book img {
			width: 250px;
			height: auto;
			align-items: center;
		}

		.btn {
			background-color: #342161;
			color: white;
			border: none;
			font-size: 16px;
			margin-top: 10px;
			display: block; 
			margin-top: auto;
			margin-bottom: auto;
			margin-left: auto; 
			margin-right: auto;
			cursor: pointer;
			border-radius: 50px;
			text-align: center;
			width: 30px;
			height: 30px;
			text-decoration: none;
	}
	
	</style>

</head>
<body>
	<%@include file="../../index/include/header.jsp" %>
	
	 <section class = "contact-page">
		<div class = "contact-bg">
		  <h2>나의 위시리스트 - 찜 목록</h2>
		  <div class = "line">
			<div></div>
			<div></div>
			<div></div>
		  </div>
		  <p class = "text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Assumenda iste facilis quos impedit fuga nobis modi debitis laboriosam velit reiciendis quisquam alias corporis, maxime enim, optio ab dolorum sequi qui.</p>
		</div>
	</section>
	
	<section id="likes">
				<div class="container">
					<div class="book-list">
						<div class="book">
							<img src="img/book-1.jpg" alt="Book Title 1">
							<a href="#" class="btn" onclick=removeImage(this)>X</a>
						</div>
						<div class="book">
							<img src="img/book-6.jpg" alt="Book Title 2">
							<a href="#" class="btn" onclick=removeImage(this)>X</a>
						</div>
						<div class="book">
							<img src="img/book-11.jpg" alt="Book Title 3">
							<a href="#" class="btn" onclick=removeImage(this)>X</a>
						</div>
						<div class="book">
							<img src="img/book-16.jpg" alt="Book Title 4">
							<a href="#" class="btn" onclick=removeImage(this)>X</a>
						</div>
					</div>
				</div>
			</section>
	
	<%@include file="../../index/include/footer.jsp" %>
</body>
</html>