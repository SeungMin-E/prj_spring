<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="../../../resources/css/project_nsa/user/UserPage.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

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

.book-item img {
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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/e402926c7b.js"
	crossorigin="anonymous"></script>
<title>Welcome to PrimeCube</title>
</head>
<body>
	<%@ include file="../../../index/include/header.jsp" %>

	<section class="hero-page">
		<div class="hero-bg">
			<h3>PrimeCube</h3>
			<h2>국내도서</h2>
			<div class="line">
				<div></div>
				<div></div>
				<div></div>
			</div>
			<p class="text">국내도서를 다루고 있습니다.</p>
			<section id="genres">
				<div class="container">
					<div class="genre-section">
						<ul class="genre-list">
							<li class="genre-item"><a href="#"
								onclick="filterBooks('all', this)" class="active">All</a></li>
							<li class="genre-item"><a href="#"
								onclick="filterBooks('8', this)">소설</a></li>
							<li class="genre-item"><a href="#"
								onclick="filterBooks('9', this)">비문학</a></li>
							<li class="genre-item"><a href="#"
								onclick="filterBooks('10', this)">문학</a></li>
							<li class="genre-item"><a href="#"
								onclick="filterBooks('11', this)">수험서</a></li>
							<li class="genre-item"><a href="#"
								onclick="filterBooks('12', this)">코믹 / 만화</a></li>
						</ul>
					</div>
				</div>
			</section>
		</div>
	</section>

	<section class="shop-section">
		<div class="container">
			<div class="row">

				<div class="col-lg-3 blog-form">
					<h2 class="blog-sidebar-title">
						<b>Cart</b>
					</h2>
					<hr />
					<p class="blog-sidebar-text">No products in the cart...</p>
					<div>&nbsp;</div>
					<div>&nbsp;</div>

					<h2 class="blog-sidebar-title">
						<b>Categories</b>
					</h2>
					<hr />

					<p class="blog-sidebar-list">
						<b><span class="list-icon"> > </span><a href="bestseller.html">베스트셀러</a></b>
					</p>
					<p class="blog-sidebar-list">
						<b><span class="list-icon"> > </span><a href="usedbooks.html">신간도서</a></b>
					</p>
					<p class="blog-sidebar-list">
						<b><span class="list-icon"> > </span><a href="rarebook.html">Rare
								Books</a></b>
					</p>

					<div>&nbsp;</div>
					<div>&nbsp;</div>

					<h2 class="blog-sidebar-title">
						<b>Filter</b>
					</h2>
					<hr />

					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="Search"
							aria-label="Receipient's username" aria-describely="basic-addon2">
						<div class="input-group-append">
							<span class="input-group-text" id="basic-addon2"><i
								class="fa fa-search"></i></span>
						</div>

					</div>

					<p class="tags">Price $4 - $25</p>
					<button type="button" class="btn btn-dark btn-lg">Filter</button>

					<div>&nbsp;</div>
					<div>&nbsp;</div>
					<h2 class="blog-sidebar-title">
						<b>Tags</b>
					</h2>
					<p class="product-sidebar-list">
						<b>#accessory, #arabica</b>
					</p>
					<p class="product-sidebar-list">
						<b>#candy, #bean, #cup</b>
					</p>
					<p class="product-sidebar-list">
						<b>#ethopian, #latte</b>
					</p>


				</div>
				<!--END  <div class="col-lg-3 blog-form">-->

				<div class="col-lg-9" style="padding-left: 30px;">

					<!-- Sorting by <div class="row"> -->
					<div>&nbsp;</div>
					<div>&nbsp;</div>
					<section id="list-book">
						<div class="box">
							<ul class="genre-list">
								<c:choose>
									<c:when test="${fn:length(list) eq 0}">
										<li class="book-item all">
											<p>판매중인 책이 없습니다.</p>
										</li>
									</c:when>
									<c:otherwise>
										<c:forEach items="${list }" var="list" varStatus="status">
											<c:if test="${list.nation == 13 }">
												<li class="book-item ${list.bookTheme}">
													<div class="icons">
														<a
															href="/projectNSA/BookOne?seq=<c:out value="${list.seq}"/>"
															class="fas fa-search"></a> <a href="#"
															class="fas fa-heart"></a> <a href="#" class="fas fa-eye"></a>
													</div> <img src="#" alt="Book Cover">
													<div class="content">
														<h3>
															<c:out value="${list.bookTitle }" />
														</h3>
														<div class="price">
															<c:out value="${list.price }" />
															원 <span><c:out value="${list.price }" />원</span>
														</div>
														<a href="#" class="featured-btn">Add to Cart</a>
													</div>
												</li>
											</c:if>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</ul>
						</div>
					</section>
					<!-- Sorting by <div class="row"> -->

				</div>
				<!--END  <div class="col-lg-9">-->

			</div>
		</div>
	</section>

	<script>
		window.onload = function() {
			var allCategory = document
					.querySelector('.genre-item:first-child a');
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

	<%-- <%@include file="../../../index/include/side_remote.jsp" %> --%>

	<%@include file="../../../index/include/footer.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
	<script src="../../../resources/js/project_nsa/user/script.js"></script>
	<script type="text/javascript">
		$("#btnLogout").on(
				"click",
				function() {
					$.ajax({
						async : true,
						chche : false,
						type : "post",
						url : "/logOutP",
						data : {},
						success : function(respone) {
							alert("로그아웃 되셨습니다.");
							location.href = "/projectNSA/main_page";
						},
						error : function(jqXHR, textStatus, errorThrown) {
							alert("ajaxUpdate " + jqXHR.textStatus + " : "
									+ jqXHR.errorThrown);
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