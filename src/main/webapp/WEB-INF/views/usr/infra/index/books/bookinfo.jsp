<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

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
	<%@include file="../../index/include/header.jsp" %>
    <section>
        <div class="wrap_container">   <!-- 틀 -->
           <div class="d-flex justify-content-between mt-5" style="height: 400px;">
                <div class="text-center" style="width: 37.5%;">
                    <img src="D:/factory/factory_download/8991799116_1.jpg" class="border border-dark" style="height: 400px;">
                </div>
                <div class="overflow-auto" style="width: 62.5%;">
                    <h2><c:out value="${bookItem.bookTitle }"/></h2>
                    <p>저자(글)는 아직 보류</p>
                    <p>
                   		책 내용도 아직 보류
                    </p>
                </div>
           </div>
           <!-- 도서 상세페이지 하단 : 리뷰 및 평점 넣기 -->
           <div class="d-flex justify-content-around mt-5 mb-5" style="height: 300px;">
                <div>
                    <div>
                        <h2>목차</h2>
                    </div>
                    <div class="overflow-auto mt-3" style="height: 250px;">
                        <ul>
                            <li>머리말_그는 도대체 왜 그럴까?</li>
                            <li>1장 슬픔에 등돌린 가족</li>
                            <li>2장 상냥하고 활달한 학습장애아</li>
                            <li>3장 자기 파괴의 욕망, 알코올 중독</li>
                            <li>4장 내가 바로 하느님</li>
                            <li>5장 세상을 조롱하는 무법자</li>
                            <li>6장 불안을 투사하는 사디스트</li>
                            <li>7장 진실을 감추는 뒤틀린 혀</li>
                            <li>8장 오이디푸스의 파멸</li>
                            <li>9장 두려움과 복수</li>
                            <li>10장 세상을 파괴하는 과대망상</li>
                            <li>에필로그<br>옮긴이 후기</li>
                        </ul>
                    </div>
                </div>
                <div class="d-flex flex-column mb-3">
                	<c:set var="dcPrice" value="${bookItem.price - (bookItem.price * 0.1) }"/>
                	<fmt:parseNumber var="dcP" integerOnly="true" value="${dcPrice }"/>
                    <div>10% <c:out value="${dcP}"/>원 <del><c:out value="${bookItem.price }원"/></del></div>
                    <div class="d-flex  justify-content-around">
                        <div>적립/혜택</div>
                        <div>
                            360P
                            <i class="fa-solid fa-circle-chevron-down"></i></i>
                        </div>
                    </div>
                    <div class="d-flex justify-content-around mb-3">
                        <div>배송안내</div>
                        <div>
                            <p>도서포함 15,000원 이상 무료 배송</p>
                            <p>당일배송 오늘 도착 예정 <i class="fa-sharp fa-solid fa-circle-question"></i></p> <!-- 이건 DB 연결하면 자연히 수정 -->
                        </div>
                    </div>
                </div>
                <div>
                    <p>
                    	<a href="#">
                    		<c:set var = "CodePub" value="${CodeServiceImpl.selectListCachedCode('5') }"/>
		                                    <c:forEach items="${CodePub}" var="pub" varStatus="status">
		                                     <c:if test = "${bookItem.publisher eq  pub.seq}">
		                                    	<c:out value="${pub.code_value }" />
                                       		 </c:if>
                                      	 	</c:forEach>										
                    	</a> · <c:out value="${bookItem.bookReleaseDate }" />
                    </p>
                    <p><i class="fa-solid fa-trophy mb-3"></i>리뷰 평점</p>
                    <div id="reviwe_total" class="d-flex justify-content-evenly">
                        <i class="fa-solid fa-asterisk fa-flip fa-2xl"></i>
                        <i class="fa-solid fa-asterisk fa-flip fa-2xl"></i>
                        <i class="fa-solid fa-asterisk fa-flip fa-2xl"></i>
                        <i class="fa-solid fa-asterisk fa-flip fa-2xl"></i>
                    </div>
                    <p class="text-center mt-3">총 4/4 점</p>
                </div>
           </div>
           <!-- 리뷰 집계 / 박스 -->
           <div id="re_box" class="d-flex justify-content-around">
                <div class="" style="width: 40%;">
                    <div class="mb-3">평점</div>
                    <div>4점</div>
                    <div class="progress mb-3" role="progressbar" aria-label="Basic example" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
                        <div class="progress-bar" style="width: 0%"></div>
                    </div>
                    <div>3점</div>
                    <div class="progress mb-3" role="progressbar" aria-label="Basic example" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
                        <div class="progress-bar" style="width: 0%"></div>
                    </div>
                    <div>2점</div>
                    <div class="progress mb-3" role="progressbar" aria-label="Basic example" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
                        <div class="progress-bar" style="width: 0%"></div>
                    </div>
                    <div>1점</div>
                    <div class="progress mb-3" role="progressbar" aria-label="Basic example" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
                        <div class="progress-bar" style="width: 0%"></div>
                    </div>
                </div>
                <div class="d-flex flex-row justify-content-evenly" style="width: 40%;" >
                    <div class="mt-3">
                        <div class="vertical_bar">
                            <div id="" class="vertical_bar_fill"></div>
                        </div>
                        <p class="mt-3">좋아요</p>
                    </div>
                    <div class="mt-3">
                        <div class="vertical_bar">
                            <div id="" class="vertical_bar_fill"></div>
                        </div>
                        <p class="mt-3">도움되요</p>
                    </div>
                    <div class="mt-3">
                        <div class="vertical_bar">
                            <div id="" class="vertical_bar_fill"></div>
                        </div>
                        <p class="mt-3">추천해요</p>
                    </div>
                    <div class="mt-3">
                        <div class="vertical_bar">
                            <div id="" class="vertical_bar_fill"></div>
                        </div>
                        <p class="mt-3">훌륭해요</p>
                    </div>
                </div>
           </div>

           <!-- 리뷰 -->
           <div id="#" class="mt-3">
            <!-- 리뷰 메뉴 -->
            <div id="section_content_nav">
                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a class="nav-link">전체리뷰</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link">구매리뷰</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link">한달 후 리뷰</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link">좋아요!</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link">별로에요</a>
                    </li>
                </ul>
            </div>

            <!-- 리뷰박스 -->
            <div class="d-flex flex-column text-center" style="height: 100px;">
                <div><!-- 리뷰어(이거 다 DB해서 끌어와야함) -->
                    <div class="d-flex">
                        <span class="p-2 w-20"><i class="fa-regular fa-thumbs-up"></i></span>
                        <span class="p-2 w-20">구매자</span>
                        <span class="p-2 w-30">유저ID(이건 DB끌어오고)</span>
                        <span class="p-2 w-20">리뷰날짜(이것도 DB끌어오고)</span>
                        <span class="p-2 w-10">신고 / 차단</span>
                    </div>
                    <!-- 리뷰 -->
                    <div class="d-flex mt-1" style="height: 80px;">
                        <div class="overflow-auto">t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</div>
                    </div>
                </div>
                <div><!-- 리뷰어(이거 다 DB해서 끌어와야함) -->
                    <div class="d-flex">
                        <span class="p-2 w-20"><i class="fa-regular fa-thumbs-up"></i></span>
                        <span class="p-2 w-20">구매자</span>
                        <span class="p-2 w-30">유저ID(이건 DB끌어오고)</span>
                        <span class="p-2 w-20">리뷰날짜(이것도 DB끌어오고)</span>
                        <span class="p-2 w-10">신고 / 차단</span>
                    </div>
                    <!-- 리뷰 -->
                    <div class="d-flex mt-1" style="height: 80px;">
                        <div class="overflow-auto">t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</div>
                    </div>
                </div>
            </div>
        </div>

        </div>
        <!-- 좌측 팝업 리모콘 -->
        <%@include file="../../index/include/side_remote.jsp" %>
    </section>
    <%@include file="../../index/include/footer.jsp" %>
</body>
</html>