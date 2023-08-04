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
    <%@include file="../../../index/include/header.jsp" %>
    <section>
        <div class="wrap_container">
        
        	<!-- 메뉴와 도서 타이틀 -->
			<div class="pt-3">
				<nav class="nav navbar-expand-lg">
				<h5 class="p-2">국내도서</h5>
					<ul class="nav">
						<li class="nav-item"><a class="nav-link" href="#">소설</a></li>
						<li class="nav-item"><a class="nav-link" href="#">비문학</a></li>
						<li class="nav-item"><a class="nav-link" href="#">수험서</a></li>
						<li class="nav-item"><a class="nav-link" href="#">문학</a></li>
						<li class="nav-item"><a class="nav-link" href="#">코믹 / 만화</a></li>
					</ul>
				</nav>
			</div>
			<!-- /메뉴와 도서 타이틀 -->
			
			<!-- 메인 컨텐츠 -->
			<div class="overflow-y-auto col-auto">
				<c:choose>
					<c:when test="${fn:length(list) eq 0}">
						판매되는 책이 없습니다.
					</c:when>
					<c:otherwise>
						<c:forEach items="${list }" var="list" varStatus="status">
							<c:if test="${status.index % 4 == 0}">
			                    <div class="w-100"></div><!-- 4개마다 행 바꾸기 위해 추가한 부분 -->
			                </c:if>
								<div class = "card float-sm-start  mt-2 m-auto col-3  bg-primary-subtle" style="height: 400px;">
									<img class="card-img-top col-auto" src="..." style="height: 190px"/>
									<div class="card-body p-4">
										<h4><c:out value="${list.bookTitle }" /></h4>
										<p>저자 : </p>
										<p>금액 : <c:out value="${list.price }"/></p>
									</div>
									<div class="card-footer">
										<small class="text-body-secondary"><c:out value="${list.bookReleaseDate }" /></small>
									</div>
								</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
        </div>
        <%@include file="../../../index/include/side_remote.jsp" %>
    </section>
   <%@include file="../../../index/include/footer.jsp" %>
    
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