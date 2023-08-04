<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"  %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.mycompany.app.infra.code.CodeServiceImpl" />

<header id="head_backg">
        <div id="wrap" class="wrap_container">
            <div class="">
                <div id="head_nav_bar">
                    <ul class="nav justify-content-end">
                        <c:choose>
                       		<c:when test="${not empty sessionId }">
                       			<li class="nav-item">
		                            <a href="#" id="btnLogout" class="nav-link">로그아웃</a>
		                        </li>
		                        <li class="nav-item">
		                            <a href="/Project/mypage" class="nav-link">마이페이지</a>
		                        </li>
		                        <li class="nav-item">
		                            <a href="#" class="nav-link">장바구니</a>
		                        </li>
		                        <li class="nav-item">
		                            <a href="#" class="nav-link">고객센터</a>
		                        </li>	
                       		</c:when>
                       		<c:otherwise>
	                       		 <li class="nav-item">
	                            		<a href="/projectNSA/join" class="nav-link">회원가입</a>
	                      			 </li>
	                        		<li class="nav-item">
	                            		<a href="/projectNSA/login" class="nav-link">로그인</a>
	                       		 	</li>
                       		</c:otherwise>
                       </c:choose>
                    </ul>
                </div>
                <div id="title_box" class="d-flex flex-row justify-content-center">
                    <div class="col-auto">
                    	<a href="/projectNSA/main_page">
	                    	<img src="../../resources/images/project_nsa/usr_page/logo-removebg-preview.png" 
    	                	alt="프라임 큐브 로고 밑에는 'Nil desperadum'라는 슬로건이 적혀있습니다. 라틴어이고 풀이하면 어떤것도 절망하지 말아라는 뜻을 가지고 있습니다." 
        	            	 style="width: 10em; height: 10em;" class="me-5" />
                    	</a>
                    </div>
                    <div class="text-center col-auto">
                        <h1 class="mb-1" id="title_box_title">Prime Cube</h1>
                        <p>'Nil desperadum'</p>
                        <form class="d-flex col-auto" role="search" id="search_books">
                            <button class="btn btn-outline-success" id="search_books" type="button"><i class="bi bi-search"></i></button>
                            <input class="form-control me-2 col-5 mx-auto" type="search" placeholder="Search" aria-label="Search">
                        </form>
                    </div>
                </div>
            </div>
            <nav class="nav navbar-expand-lg bg-light">
               <div class="">
                   <ul class="nav">
                        <li class="nav-item">
                            <a href="/projectNSA/notice" class="nav-link">공지사항</a>
                        </li>
                        <li class="nav-item">
                            <a href="/projectNSA/bestSeller" class="nav-link">베스트셀러</a>
                        </li>
                        <li class="nav-item">
                            <a href="/projectNSA/newJeans" class="nav-link">화제의신간</a>
                        </li>
                        <li class="nav-item">
                            <a href="/projectNSA/internation" class="nav-link">국내도서</a>
                        </li>
                       <li class="nav-item">
                            <a href="/projectNSA/global" class="nav-link">해외도서</a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">이벤트</a>
                        </li>
                        <li class="nav-item">
                            <a href="/projectNSA/question" class="nav-link">Q&A/1:1문의</a>
                        </li>
                    </ul>
                </div> 
            </nav>
        </div>
    </header>