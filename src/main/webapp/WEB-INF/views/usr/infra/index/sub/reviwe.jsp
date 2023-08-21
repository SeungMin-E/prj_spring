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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/e402926c7b.js" crossorigin="anonymous"></script>
<title>Prime Cube | review</title>
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
		  <p class = "text">많은 사용자와 클라이언트들이 남긴 리뷰들입니다.</p>
		  <p class = "text">보고 나서 생각하셔도 늦지 않습니다.</p>
		</div>
	</section>
	
	<%@include file="../../index/include/reviews.jsp" %>
	
	<%@include file="../../index/include/footer.jsp" %>
	
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script src="../../../resources/js/project_nsa/user/script.js"></script>
</body>
</html>