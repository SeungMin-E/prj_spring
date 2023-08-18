<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<jsp:useBean id="CodeServiceImpl"
	class="com.mycompany.app.infra.code.CodeServiceImpl" />

<header>
	<div class="logo-container">
		<img src="../../resources/images/project_nsa/usr_page/logo.jpg" alt="book-logo"> 
		<a href="/projectNSA/main_page" class="logo">Prime Cube</a>
	</div>
	
	<nav class="nav">
		<a href="/projectNSA/main_page">Home<span></span></a> 
		<a href="/projectNSA/notice">공지사항<span></span></a>
		<a href="/projectNSA/internation" class="nav-link">shop<span></span></a>
		<a href="/projectNSA/contact" class="nav-link">문의<span></span></a>
	</nav>
		<c:choose>
			<c:when test="${not empty sessionId }">
				<div class="header-icons">
						<a href="search.html" ><i class="fa fa-search"></i></a>
						<a href="/Project/myWish"><i class="fa fa-heart"></i></a> 
                    	<a href="cart.html" ><i class="fa fa-shopping-cart"></i></a>
						<i class="fas fa-user" onclick="menuToggle();"></i>
	                    
	                    <div class="menu">
	                        <img src="../../resources/images/project_nsa/usr_page/people-1.jpg">
	                        <h3>User Account</h3>
	                        <ul>
	                            <li>
	                                <a href="/Project/mypage" class="nav-link">My Profile</a>
	                            </li>
	                            <li>
                                	<a href="#">Edit Account</a>    
                            	</li>
	                            <li>
                                	<a href="/projectNSA/contact">고객센터</a>    
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
</header>