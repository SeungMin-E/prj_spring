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
    <link rel="stylesheet" href="../CSS/UserPage.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/e402926c7b.js" crossorigin="anonymous"></script>
    <title>project NSA(예제 프로젝트)</title>
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
                    <h2>부시의 정신분석</h2>
                    <p>저자(글) 저스틴A.프랭크 번역 한승동</p>
                    <p>
                        책 속으로
                        이번 연구는 공과 사, 과거와 현재를 불문하고 대통령이 이 세상과 어떤 방식으로 관계를 맺고 있는지 속속들이 보여줄 것이다. 청소년기의 품위 없는 촌뜨기 짓에서부터 대통령이 된 뒤의 능글맞은 웃음에 이르기까지, 학습장애와 알코올 중독에서 벗어나기 위한 젊은 시절의 몸부림에서부터 현재의 근본주의적 종교 의존과 융통성 없는 일과표에 이르기까지 다루지 못할 것이 없으며, 어떤 것도 사소한 것으로 취급돼 연구 대상에서 빠지는 일은 없을 것이다. - 14쪽에서
                    </p>
                    <p>
                        술을 마셔서 한때 가라앉혔으나 결국은 더 심해진 혼돈으로부터 구원을 갈구하던 조지 부시는 종교에서 술과 별로 다르지 않은 평안의 샘, 그리고 자기 주변 세계와 내면 세계를 함께 꾸려갈 수 있도록 도와주는 규칙들을 발견했을 것이다. 부시의 인생에서 근본주의의 역할을 살펴보면, 그가 알코올을 대신하여 종교를 적응 기제로 삼아 거기에 의존하고 있음을 알 수 있다. 클라인 이론은 종교가 지적인 독립을 저해한다는 데 초점을 맞추고 있다. 이를 토대로 삼아 우리는 부시가 생각을 단순화하고 심지어 생각을 대체하기까지 하는 데 종교를 이용하며, 그리하여 어떤 면에서는 생각할 필요조차 느끼지 않는다는 사실을 알게 될 것이다. - 98～99쪽에서
                    </p>
                    <p>
                        부시의 상냥한 겉모습 뒤에는 행동을 끌어내는 강력하지만 모호한 망상 체계가 작동하고 있다는 것을 알 수 있다. 그의 병리를 묘사하는 가장 엄밀한 정신과 용어는 정신분열증 환자들이 보이는 특별한 상태를 확인할 때 가장 흔히 사용되는데, 그 상태는, 우리가 앞으로 살펴보겠지만, 과대망상이다. 과대망상이라는 심리학적 개념은 정신적 태도뿐만 아니라 실제 행동 표출에도 적용된다. 과대망상 환자는 자신을 세계의 중심이며, 모든 답을 갖고 있는 유일한 사람으로 본다. 그는 이견을 용납하지 않고 외부 현실을 위협적인 것으로 보거나 아니면 아예 존재하지 않는 것으로 본다. 이런 시각은 불안과 두려움을 이기고, 내면의 박해 환상과 공격당할 것이라는 두려움을 부인하고 근절하려는 욕구에서 비롯된다. - 309쪽에서
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
                    <div>10% 11,700원 <del>13,000원</del></div>
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
                    <p><a href="#">교양인</a> · 2005년 09월 12일</p>
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