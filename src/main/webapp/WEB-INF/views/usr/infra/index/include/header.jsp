<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<jsp:useBean id="CodeServiceImpl"
	class="com.mycompany.app.infra.code.CodeServiceImpl" />

<header>
	
	<div class="logo-container">
		<a href="/projectNSA/main_page" ><img src="../../resources/images/project_nsa/usr_page/logo.jpg" alt="book-logo"></a> 
		<a href="/projectNSA/main_page" class="logo">Prime Cube</a>
	</div>
	<nav class="nav">
		<a href="/projectNSA/main_page">Home<span></span></a> 
		<a href="about.html">소개<span></span></a>
		<a href="/projectNSA/notice">공지사항<span></span></a>
		<a href="/projectNSA/internation" class="nav-link">국내도서<span></span></a>
		<a href="/projectNSA/global" class="nav-link">해외도서<span></span></a>
		<a href="/projectNSA/question">FAQs<span></span></a>
	</nav>
	<div id="header-icons">
		<c:choose>
			<c:when test="${not empty sessionId }">
				<div class="header-icons">
						<a href="#" class="nav-link"><i class="fa fa-heart"></i></a> 
						<a href="#" class="nav-link">고객센터</a>
						<i class="fas fa-user" onclick="menuToggle();"></i>
	                    
	                    <div class="menu">
	                        <img src="./img/people-1.jpg">
	                        <h3>User Account</h3>
	                        <ul>
	                            <li>
	                                <a href="/Project/mypage" class="nav-link">My Profile</a>
	                            </li>
	                            <li>
	                                <a href="#" id="btnLogout" class="nav-link">Logout</a>
	                            </li>
	                        </ul>
	                    </div>
                </div>              
			</c:when>
			<c:otherwise>
				<div class="header-icons">
					<a href="search.html"><i class="fa fa-search"></i></a> 
					<a href="/projectNSA/login" class="login-btn">로그인</a>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
</header>