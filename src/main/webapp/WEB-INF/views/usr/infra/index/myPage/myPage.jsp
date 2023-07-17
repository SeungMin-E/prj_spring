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
    <title>Welcome to PrimeCube</title>
</head>
<body>
     <!-- include head 확정 -->
   	<%@include file="../../index/include/header.jsp" %>
    <!-- 헤드 끝 -->
    <section>
        <div class="wrap_container">
            <div class="d-flex flex-row justify-content-center mt-5">
                <i class="fa-sharp fa-solid fa-book align-self-center" style="font-size: 135px; color: rgb(206, 179, 26);"></i>
                <h1 class="align-self-center">&nbsp;&nbsp;&nbsp;&nbsp;마이페이지</h1>
            </div>
            <div class="d-flex justify-content-center mt-5">
                <form>
                    <!-- 인적사항 내용 창 -->
                    <div class="d-flex flex-column">
                        <div class="col-auto mb-3" style="width: 500px;">
                            <span>이름 : </span>
                            <span>@@@</span>
                        </div>
                        <div class="col-auto mb-3" style="width: 500px;">
                            <span>성별 : </span>
                            <span>비공개</span>
                        </div>
                        <div class="col-auto mb-3" style="width: 500px;">
                            <span>이메일 : </span>
                            <span>Loremipsum@dolorsit.com</span>
                        </div>
                        <div class="col-auto mb-3" style="width: 500px;">
                            <span>우편번호 : </span>
                            <span>11010</span>
                        </div>
                        <div class="col-auto mb-3" style="width: 500px;">
                            <span>주소 : </span>
                            <span>@@시 !@#구 ##동 @!#$%%</span>
                        </div>
                    </div>
                        
                    <!-- 변경 툴 -->
                    <div class="d-grid gap-2 col-10 mx-auto">
                        <button class="btn btn-primary" type="button">인적사항 변경하기</button>
                        <button class="btn btn-primary" type="button">비밀번호 변경</button>
                        <button class="btn btn-primary" type="button">회원 탈퇴</button>
                      </div>
                    <!-- 오븐 확인하고 빠진거나 부족한거 수정 예정 -->
                </form>
            </div>
        </div>
    </section>
    <%@include file="../../index/include/footer.jsp" %>
</body>
</html>