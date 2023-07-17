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
    <link rel="stylesheet" href="../../resources/css/project_nsa/user/UserPage.css">
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
        <div class="wrap_container">
            <div id="notice_head" class="d-flex flex-row justify-content-between mt-1 mb-1">
                <div class="d-flex flex-row justify-content-evenly col-3" style="width: 450px;">
                    <h1 class="fa-bounce">Q&A</h1><span class="align-self-end">1대1 문의하기 이전에 확인해보세요</span>
                </div>
                <!-- 검색 박스 -->
                <div class="align-self-center" style="width: 300px;">
                        <form class="d-flex col-auto" role="search">
                            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success" type="submit"><i class="bi bi-search"></i></button>
                        </form>
                </div>
            </div>
           <!-- Q&A (일단 틀을 잡고 DB잡으면 DB로 채우려고 계획했으나 일단 테이블만 짜놓을 생각) -->
           <table class="table"> 
                <thead>
                    <tr>
                        <th>분류</th>
                        <th>문의내용</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>계정 문의</td>
                        <td>회원가입이 안됩니다.</td>
                    </tr>
                    <tr>
                        <td>계정 문의</td>
                        <td>로그인이 안됩니다.</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Q&A 테스트 1</td>
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
           <div class="d-flex flex-row justify-content-end">
                <span class="fa-bounce">
                    Q&A를 보고도 해결이 되지 않으신가요?
                    <i class="fa-solid fa-arrow-right"></i>
                </span>
                <div class="mx-3">
                  
                    <!-- 모달 테스트중 -->
                    
                    <button type="button" class="btn btn-outline-warning" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="">1:1 문의</button>

                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-fullscreen">
                            <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">1대1 문의 (자세하게 작성해주시면 감사하겠습니다!)</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form>
                                <div class="mb-3">
                                    <label for="recipient-name" class="col-form-label">문의 제목:</label>
                                    <input type="text" class="form-control" id="recipient-name">
                                </div>
                                <div class="mb-3">
                                    <label for="message-text" class="col-form-label">문의 내용:</label>
                                    <textarea class="form-control" id="message-text" style="height: 500px"></textarea>
                                </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                                <button type="button" class="btn btn-primary">전송</button>
                            </div>
                            </div>
                        </div>
                    </div>
                                        
                </div>
           </div>
        </div>
        <%@include file="../../index/include/side_remote.jsp" %>
    </section>
    <%@include file="../../index/include/footer.jsp" %>
        <script type="text/javascript">

	
	
	$("#btnLogout").on("click", function(){
		$.ajax({
			async: true
			, chche : false
			, type : "post"
			, url : "/logOutP"
			,data : { }
			, success : function(respone){
				alert("로그아웃 되셨습니다.");
				location.href = "/projectNSA/main_page";
			}
			, error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
		
	});


	validation = function() {
//		 if(!checkNull($("#userID"), $.trim($("#userID").val()), "아이디를 입력해 주세요!")) return false;
//		 if(!checkNull($("#userPW"), $.trim($("#userPW").val()), "비밀번호를 입력해 주세요!")) return false;
	}

	</script>
</body>
</html>