<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Welcome to PrimeCube</title>
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="../../../resources/css/project_nsa/user/UserPage.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    
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

		.genre {
			display: flex;
			align-items: center;
		}

		#genres {
			padding: 20px 20px;
		}

		.list-of-genre {
			display: grid;
			grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
			grid-gap: 20px;
			display: flex;
    		flex-direction: column;
		}

		.container {
			display: grid;
			grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
			grid-gap: 20px;
			padding: 20px;
			border-radius: 10px;
			width: 100%;
			position: relative;
			overflow: hidden;
			text-align: center;
		}

		.book {
			background-color: #fff;
			padding: 20px;
			width: 300px;
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

        .genre-list {
            display: flex;
			flex-wrap: wrap;
			list-style: none;
			padding: 0;
			margin: 0;
			justify-content: flex-between;
        }
        
		.genre-item {
            flex: 0 0 25%;
            padding: 10px;
        }
        
        .genre-item a {
            display: block;
            text-align: center;
            text-decoration: none;
            color: #342161;
            border: 1px solid #342161;
            padding: 10px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
		
		.genre-item a {
            display: block;
            text-decoration: none;
            color: #342161;
            border: 1px solid #342161;
            padding: 10px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        
        .genre-item.active a {
            background-color: #342161;
            color: #fff;
        }

		.book-item {
			display: grid;
			grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
			grid-gap: 20px;
			background-color: #fff;
			padding: 20px;
			width: 300px;
			margin: 5px auto;
			position: relative;
			overflow: hidden;
			border: var(--border);
			text-align: center;
		}

		.book-item img{
			width: 250px;
			height: auto;
			align-items: center;
		}

		.icons {
			display: flex;
			justify-content: space-between;
			padding-bottom: 10px;
		}

		.icons a {
			font-size: 24px;
		}

		.content h3 {
			color: black;
		}

		.content .price span {
			text-decoration: line-through;
			color: black;
		}
	</style>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/e402926c7b.js" crossorigin="anonymous"></script>
</head>
<body>
	<%@include file="../../../index/include/header.jsp" %>
	
	<section class = "hero-page">
		<div class = "hero-bg">
		<h3>STORYBOUND</h3>
		  <h2>장르</h2>
		  <div class = "line">
			<div></div>
			<div></div>
			<div></div>
		  </div>
		  <p class = "text">장르별로 찾아보고 싶으면 이 기능을 사용해보세요</p>
		  <section id="genres">
			<div class="container">
				<div class="genre-section">
					<ul class="genre-list">
						<li class="genre-item">
							<a href="#" onclick="filterBooks('all', this)" class="active">All</a>
						</li>
						<li class="genre-item">
							<a href="#" onclick="filterBooks('novel', this)">소설</a>
						</li>
						<li class="genre-item">
							<a href="#" onclick="filterBooks('drama', this)">비문학</a>
						</li>
						<li class="genre-item">
							<a href="#" onclick="filterBooks('literature', this)">문학</a>
						</li>
						<li class="genre-item">
							<a href="#" onclick="filterBooks('non-literature', this)">수험서</a>
						</li>
						 <li class="genre-item">
							<a href="#" onclick="filterBooks('comic', this)">코믹 / 만화</a>
						</li>
					</ul>
				</div>
			</div>
		</section>
		</div>
	</section>

	
	<section id="list-book">
		<div class="box">
			<ul class="genre-list">
				<li class="book-item novel">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-1.jpg" alt="Book Cover">
					<div class="content">
						<h3>The Hunger Games</h3>
						<div class="price">
							&#8369;410.94 <span>&#8369;821.88</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item   literature">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-2.jpg" alt="Book Cover">
					<div class="content">
						<h3>Catching Fire</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item   fantasy">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-3.jpg" alt="Book Cover">
					<div class="content">
						<h3>Mockingjay</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item study">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-4.jpg" alt="Book Cover">
					<div class="content">
						<h3>Spinning Silver</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item comic">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-5.jpg" alt="Book Cover">
					<div class="content">
						<h3>The Raven Boys</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item comic">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-6.jpg" alt="Book Cover">
					<div class="content">
						<h3>The Dream Thieves</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item study">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-7.jpg" alt="Book Cover">
					<div class="content">
						<h3>Blue Lily, Lily Blue</h3>
						<div class="price">
							&#8369;333.59 <span>&#8369;667.18</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item study">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-8.jpg" alt="Book Cover">
					<div class="content">
						<h3>The Raven King</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>
				
				<li class="book-item novel">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-9.jpg" alt="Book Cover">
					<div class="content">
						<h3>Six of Crows</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item literature">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-10.jpg" alt="Book Cover">
					<div class="content">
						<h3>Crooked Kingdom</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item non-literature">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-11.jpg" alt="Book Cover">
					<div class="content">
						<h3>A History of Burning</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item literature">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-12.jpg" alt="Book Cover">
					<div class="content">
						<h3>Yellowface</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item literature adventure">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-13.jpg" alt="Book Cover">
					<div class="content">
						<h3>Deep As The Sky, Red As The Sea</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item literature">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-14.jpg" alt="Book Cover">
					<div class="content">
						<h3>Alone With You In The Ether</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item drama">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-15.jpg" alt="Book Cover">
					<div class="content">
						<h3>Daisy Jones & The Six</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item thriller mystery">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-16.jpg" alt="Book Cover">
					<div class="content">
						<h3>If We Were Villains</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item psychological">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-17.jpg" alt="Book Cover">
					<div class="content">
						<h3>The Secret History</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item psychological">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-18.jpg" alt="Book Cover">
					<div class="content">
						<h3>Normal People</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item psychological">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-19.jpg" alt="Book Cover">
					<div class="content">
						<h3>The Picture of Dorian Gray</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>
				
				<li class="book-item romance fantasy">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-20.png" alt="Book Cover">
					<div class="content">
						<h3>The Master & Margarita</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item historical fantasy">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-21.jpg" alt="Book Cover">
					<div class="content">
						<h3>The Poppy War</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item historical fantasy">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-22.jpg" alt="Book Cover">
					<div class="content">
						<h3>The Dragon Republic</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item fantasy">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-23.jpg" alt="Book Cover">
					<div class="content">
						<h3>The Burning God</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item fantasy">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-24.jpg" alt="Book Cover">
					<div class="content">
						<h3>Throne of Glass</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item fantasy">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-25.jpg" alt="Book Cover">
					<div class="content">
						<h3>Crown of Midnight</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item fantasy">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-26.jpg" alt="Book Cover">
					<div class="content">
						<h3>Heir of Fire</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item fantasy">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-27.jpg" alt="Book Cover">
					<div class="content">
						<h3>Quees of Shadows</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item fantasy">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-28.jpg" alt="Book Cover">
					<div class="content">
						<h3>Empire of Storm</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item fantasy">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-29.jpg" alt="Book Cover">
					<div class="content">
						<h3>Tower of Dawn</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item fantasy romance">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-30.jpg" alt="Book Cover">
					<div class="content">
						<h3>Kingdom of Ash</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item romance">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-31.jpg" alt="Book Cover">
					<div class="content">
						<h3>The Love Hypothesis</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item sciencefiction">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-32.jpg" alt="Book Cover">
					<div class="content">
						<h3>The Blood Gift</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item psychological mystery thriller">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-33.jpg" alt="Book Cover">
					<div class="content">
						<h3>The Silent Bride</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item historical mystery">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-34.jpg" alt="Book Cover">
					<div class="content">
						<h3>The Wager</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item romance">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-35.jpg" alt="Book Cover">
					<div class="content">
						<h3>The Do Over</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item horror thriller">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-36.jpg" alt="Book Cover">
					<div class="content">
						<h3>The Lake House</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item horror thriller mystery">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-37.jpg" alt="Book Cover">
					<div class="content">
						<h3>House of Cotton</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item psychological">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-38.jpg" alt="Book Cover">
					<div class="content">
						<h3>What Happened To You</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item sciencefiction thriller mystery">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-39.jpg" alt="Book Cover">
					<div class="content">
						<h3>Camp Zero</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item romance">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-40.jpg" alt="Book Cover">
					<div class="content">
						<h3>The Fault In Our Stars</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item horror thriller mystery">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-41.jpg" alt="Book Cover">
					<div class="content">
						<h3>This Delicious Death</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item music mystery thriller">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-42.jpg" alt="Book Cover">
					<div class="content">
						<h3>The Violin Conspiracy</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item music romance">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-43.jpg" alt="Book Cover">
					<div class="content">
						<h3>A Whole Song and Dance</h3>
						<div class="price">
							&#8369;666.66 <span>&#8369;999.99</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item music">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-44.jpg" alt="Book Cover">
					<div class="content">
						<h3>High School Musical: The Junior Novel</h3>
						<div class="price">
							&#8369;410.94 <span>&#8369;821.88</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>

				<li class="book-item music mystery thriller">
					<div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
					<img src="img/book-45.jpg" alt="Book Cover">
					<div class="content">
						<h3>Symphony of Secrets</h3>
						<div class="price">
							&#8369;410.94 <span>&#8369;821.88</span>
						</div>
						<a href="#" class="featured-btn">Add to Cart</a>
					</div>
				</li>
			</ul>
		</div>
	</section>
	
	
	  <script>
        window.onload = function() {
            var allCategory = document.querySelector('.genre-item:first-child a');
            filterBooks('all', allCategory);
        };

        function filterBooks(genre, element) {
            var genreItems = document.getElementsByClassName('genre-item');
            
            for (var i = 0; i < genreItems.length; i++) {
                genreItems[i].classList.remove('active');
            }
            
            element.parentNode.classList.add('active');
            
            var books = document.getElementsByClassName('book-item');
            for (var j = 0; j < books.length; j++) {
                var book = books[j];
                if (genre === 'all' || book.classList.contains(genre)) {
                    book.style.display = 'block';
                } else {
                    book.style.display = 'none';
                }
            }
        }
    </script>
	
	
	<%@include file="../../../index/include/footer.jsp" %>
	
	<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script src="../../../resources/js/project_nsa/user/script.js"></script>
	<script>
		function removeImage(button) {
			var bookContainer = button.parentNode;
			bookContainer.parentNode.removeChild(bookContainer);
		}
	</script>
	
	<!--Custom JS file link-->
	<script src="js/script.js"></script>
</body>
</html>