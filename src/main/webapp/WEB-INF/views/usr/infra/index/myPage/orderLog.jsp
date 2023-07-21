<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="kr">
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
		<%@include file="../../index/include/header.jsp" %>	
		<section>
			<!-- wrap -->
			<div class="wrap_container">
				<h3>구매내역</h3>			
				<!-- navbar -->
				<div>
					<nav>
						<ul>
							<li>전체</li>
							<li>1개월 이내</li>
							<li>6개월 이내</li>
							<li>1년 이내</li>
						</ul>
					</nav>
				</div>
				<!-- /nav bar -->
				
				<!-- main content -->
				<div>
					<div>
						<!-- 도서 이미지 -->
						<div></div>
						<!-- 주문 내역 (아마도 DB랑 함수로 걸어서 불러야할거 같다.) -->
						<div>
							<div>여기에 (타이틀 / 저자 정보) 입력</div>
							<div>구매한 날짜 적용</div>
							<div>
								<div>가격(구매금액)</div>
								<button class="button btn btn-primary">상세내역보기</button>
							</div>
						</div>
					</div>
				
				</div>
				<!-- /main content -->
			</div>
			<!-- /wrap -->
			<!-- side bar -->
		<%@include file="../../index/include/side_remote.jsp" %>
		</section>
		<!-- footer -->
		<%@include file="../../index/include/footer.jsp" %>
	</body>
</html>