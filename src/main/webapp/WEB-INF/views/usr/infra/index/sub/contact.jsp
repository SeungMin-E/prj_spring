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
<link rel="stylesheet" href="../../resources/css/project_nsa/user/UserPage.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/e402926c7b.js" crossorigin="anonymous"></script>
<title>문의</title>
</head>
<body>
	<%@include file="../../index/include/header.jsp" %>
	
	<!-- 상단 -->
	<section class="hero-page">
		<div class="hero-bg">
			<h3>PrimeCube</h3>
			<h2>1:1 문의</h2>
			<div class="line">
				<div></div>
				<div></div>
				<div></div>
			</div>
			<p class="text">저희 프라임 큐브를 사용하시는데 어려움이 있으십니까?</p>
			<p class="text">물건을 구매했는데 배송이 안되거나 책이 불량품인가요?</p>
			<p class="text">어려움이 있으시다면 언제든지 연락 주시길 바랍니다.</p>
			<p class="text">성심성의껏 도와드리겠습니다! 감사합니다.</p>
		</div>
	
	<!-- 본문 -->
	<div class = "contact-body">
        <div class = "contact-info">
          <div>
            <span><i class = "fas fa-map-marker-alt"></i></span>
            <span>본사 주소</span>
            <span class = "text">김포시 장기동 2018-2 라베니체마치에비뉴, 대한민국</span>
          </div>
          <div>
            <span><i class = "fas fa-mobile-alt"></i></span>
            <span>연락처</span>
            <span class = "text">+82 10 5035 5926</span>
          </div>
          <div>
            <span><i class = "fas fa-envelope-open"></i></span>
            <span>이메일</span>
            <span class = "text">rainy2368@gmail.com</span>
          </div>
          <div>
            <span><i class = "fas fa-clock"></i></span>
            <span>업무 시간</span>
            <span class = "text">월 - 금 (9:00 AM to 5:00 PM)</span>
          </div>
        </div>
       </div>

        <div class = "contact-form">  
              <form>
                <h1>문의사항 보내기</h1>
                <p>아래의 양식대로 작성해서 보내주시면 업무시간에 맞춰서 감사히 도와드리겠습니다.</p>
                <div>
                  <input type = "text" class = "form-control" placeholder="성">
                  <input type = "text" class = "form-control" placeholder="이름">
                </div>
                <div>
                  <input type = "email" class = "form-control" placeholder="이메일 주소">
                  <input type = "text" class = "form-control" placeholder="연락처 및 휴대폰 번호">
                </div>
                <textarea rows = "5" class = "form-control" placeholder="문의사항을 말씀하세요"></textarea>
                <input type = "submit" class = "send-btn" value = "문의하기">
              </form>
        </div>
    </section>
	
	<%@include file="../../index/include/footer.jsp" %>
	
	<script
		src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
	<script src="../../../resources/js/project_nsa/user/script.js"></script>
	<script src="js/script.js"></script>
</body>
</html>