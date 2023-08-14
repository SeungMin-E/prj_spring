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
    
    <section class = "hero-page">
	    <div class = "hero-bg">
			<h3>PrimeCube</h3>
		      <h2>국내도서</h2>
		      <div class = "line">
				<div></div>
				<div></div>
				<div></div>
			  </div>
			  <p class = "text">국내도서를 다루고 있습니다.</p>
	  	</div>
	  </section>
	  
	  <section class="shop-section">
		<div class="container">
			<div class="row">
	
				<div class="col-lg-3 blog-form">
					<h2 class="blog-sidebar-title"><b>Cart</b></h2>
					<hr />
					<p class="blog-sidebar-text">No products in the cart...</p>
					<div>&nbsp;</div>
					<div>&nbsp;</div>
	
					<h2 class="blog-sidebar-title"><b>Categories</b></h2>
					<hr />
					
					<p class="blog-sidebar-list"><b><span class="list-icon"> > </span><a href="/projectNSA/internation/genre">Genre</a></b></p>
					<p class="blog-sidebar-list"><b><span class="list-icon"> > </span><a href="bestseller.html">베스트셀러</a></b></p>
					<p class="blog-sidebar-list"><b><span class="list-icon"> > </span><a href="usedbooks.html">신간도서</a></b></p>
					<p class="blog-sidebar-list"><b><span class="list-icon"> > </span><a href="rarebook.html">Rare Books</a></b></p>
					
					<div>&nbsp;</div>
					<div>&nbsp;</div>
	
					<h2 class="blog-sidebar-title"><b>Filter</b></h2>
					<hr />
	
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="Search" aria-label="Receipient's username" aria-describely="basic-addon2">
						<div class="input-group-append">
							<span class="input-group-text" id="basic-addon2"><i class="fa fa-search"></i></span>
						</div>
						
					</div>
	
					<p class="tags">Price $4 - $25</p>
					<button type="button" class="btn btn-dark btn-lg">Filter</button>
	
					<div>&nbsp;</div>
					<div>&nbsp;</div>
					<h2 class="blog-sidebar-title"><b>Tags</b></h2>
					<p class="product-sidebar-list"><b>#accessory, #arabica</b></p>
					<p class="product-sidebar-list"><b>#candy, #bean, #cup</b></p>
					<p class="product-sidebar-list"><b>#ethopian, #latte</b></p>
	
	
				</div>
				<!--END  <div class="col-lg-3 blog-form">-->
	
				<div class="col-lg-9" style="padding-left: 30px;">
					
					<!-- Sorting by <div class="row"> -->
					<div>&nbsp;</div>
					<div>&nbsp;</div>
	
					<div class="row">
						<c:choose>
							<c:when test="${fn:length(list) eq 0}">
								<div class="col-sm-3 col-md-6 col-lg-4">
									<div class="card">
										<div class="card-body text-center">
											<h5 class="card-title"><b>판매되는 책이 없습니다.</b></h5>
										</div>
									</div>
								</div>
							</c:when>
							<c:otherwise>
								<c:forEach items="${list }" var="list" varStatus="status">
										<c:if test="${status.index % 4 == 0}">
				                    		<div>&nbsp;</div><!-- 4개마다 행 바꾸기 위해 추가한 부분 -->
				                		</c:if>
				                  		<c:if test="${list.nation == 13 }">
						                  	<div class="col-sm-3 col-md-6 col-lg-4">
												<div class="card">
													<div class="card-body text-center">
														<a href="/projectNSA/BookOne?seq=<c:out value="${list.seq}"/>"><img src="#" class="product-image"></a>
														<h5 class="card-title"><b><c:out value="${list.bookTitle }"/></b></h5>
														<p class="card-text small"><c:out value="${list.bookContent }"></c:out></p>
														<p class="tags">price : <c:out value="${list.price }"/></p>
														<p class="tags">
															<c:set var = "CodePub" value="${CodeServiceImpl.selectListCachedCode('5') }"/>
						                                    <c:forEach items="${CodePub}" var="pub" varStatus="status">
						                                     <c:if test = "${list.publisher eq  pub.seq}">
						                                    	<c:out value="${pub.code_value }" />
				                                       		 </c:if>
				                                      	 	</c:forEach>
														</p>
														<p class="tags"><c:out value="${list.bookReleaseDate }" /></p>
														<a href="#" target="_blank" class="btn btn-success button-text"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Add to cart</a>
													</div>
												</div>
											</div>
				                  		</c:if>	
										<div>&nbsp;</div>
										<div>&nbsp;</div>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</div>
					<!-- Sorting by <div class="row"> -->
	
				</div>
				<!--END  <div class="col-lg-9">-->
	
			</div>
		</div>
	</section>

        <%-- <%@include file="../../../index/include/side_remote.jsp" %> --%>

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