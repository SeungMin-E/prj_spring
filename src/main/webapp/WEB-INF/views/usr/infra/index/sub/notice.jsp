<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"  %>

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
    <title>project NSA(예제 프로젝트)</title>
</head>
<body>
    <%@include file="../../index/include/header.jsp" %>
    <section>
        <div class="wrap_container">
            <div id="notice_head" class="d-flex flex-row justify-content-between mt-1 mb-1">
                <div class="d-flex flex-row justify-content-evenly col-3">
                    <i class="fa-solid fa-exclamation" style="font-size: 40px;"></i>
                    <h1>공지사항</h1>
                    <i class="fa-solid fa-exclamation" style="font-size: 40px;"></i>
                </div>
                <!-- 검색 박스 -->
                <div class="align-self-center" style="width: 300px;">
                        <form class="d-flex col-auto" role="search">
                            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success" type="submit"><i class="bi bi-search"></i></button>
                        </form>
                </div>
            </div>
           <!-- 공지사항 게시판 (일단 틀을 잡고 DB잡으면 DB로 채워진다.) -->
           <table class="table"> 
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>관련 부서</th>
                        <th>공지 제목</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>관리자</td>
                        <td>공지사항 게시판입니다.</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>마케팅</td>
                        <td>오픈 이벤트 공지 안내</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>관리자</td>
                        <td>공지사항 테스트 1</td>
                    </tr>
            
                </tbody>
           </table>
           <!-- 페이지 박스 -->
           <div class="d-flex justify-content-center">
                <nav aria-label="Page navigation example">
                    <ul class="pagination">
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true"><i class="fa-solid fa-chevron-left"></i></span>
                        </a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true"><i class="fa-solid fa-chevron-right"></i></span>
                        </a>
                    </li>
                    </ul>
                </nav>
           </div>
        </div>
        <!-- 사이드바 -->
        <%@include file="../../index/include/side_remote.jsp" %>
    </section>
    <!-- footer -->
    <%@include file="../../index/include/footer.jsp" %>
</body>
</html>