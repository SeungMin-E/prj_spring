<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="../../resources/css/project_nsa/admin_host/UserPage.css">
    <link rel="stylesheet" href="../../resources/css/project_nsa/admin_host/mainPage.css">
    <link rel="stylesheet" href="../../resources/css/project_nsa/admin_host/adminPage.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/e402926c7b.js" crossorigin="anonymous"></script>
    <title>관리자 로그인</title>
</head>
<body>
    
    <section>
        <div class="wrap_container">
            <div class="d-flex flex-row justify-content-center" style="margin-top: 9%;">
                <h1 class="align-self-center">관리자 로그인</h1>
            </div>
            <div class="d-flex justify-content-center mt-5">
                <form>
                    <div class="col-auto mb-3" style="width: 500px;">
                        <label for="exampleInputEmail1" class="form-label fs-3">ID</label>
                        <input type="id" class="form-control p-3" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                    <div class="col-auto mb-3" style="width: 500px;">
                        <label for="exampleInputPassword1" class="form-label fs-3">PW</label>
                        <input type="password" class="form-control p-3" id="exampleInputPassword1">
                    </div>
                    <div class="d-flex justify-content-center">
                        <button type="button" class="btn btn-primary" onclick="location.href='/admin_page'">로그인</button>
                    </div>
                    
                </form>
            </div>
        </div>
    </section>
    <footer>
        <div class="container-fluid p-3 text-center">
            <div class="align-items-center">
                <p>NSA Company | 대표 : 이승민 | 사업자등록번호 : 123-12-123456 | 김포시 장기동 2018-2 라베니체마치에비뉴 </p>
                <p>copyright 2023. NSA Company Inc. all rights reserved</p>
            </div>
        </div>
    </footer>
</body>
</html>