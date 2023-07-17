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
    <%@include file="../index/include/header.jsp" %>
    <section>
        <div class="wrap_container">
            <div id="section_content_sec1">
                <h1 class = "ms-2">PrimeCube의 강추 도서</h1>
                <div id="section_content_nav">
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a class="nav-link">추천도서</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link">베스트셀러</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link">화제의 신간!</a>
                        </li>
                    </ul>
                </div>
                <div id="" class="col-auto d-flex justify-content-around mx-auto p-4">
                    <figure class="figure">
                        <img src="..." class="figure-img img-fluid rounded text-center" alt="...">
                        <figcaption>A caption for the above image.</figcaption>
                    </figure>
                    <figure class="figure">
                        <img src="..." class="figure-img img-fluid rounded text-center" alt="...">
                        <figcaption>A caption for the above image.</figcaption>
                    </figure>
                    <figure class="figure">
                        <img src="..." class="figure-img img-fluid rounded text-center" alt="...">
                        <figcaption>A caption for the above image.</figcaption>
                    </figure>
                    <figure class="figure">
                        <img src="..." class="figure-img img-fluid rounded text-center" alt="...">
                        <figcaption>A caption for the above image.</figcaption>
                    </figure>
                </div>
                <div id="#" class="">
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                </div>
                <div id="#" class="">
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                </div>
            </div>

            <div id="section_content_sec2" class="">
                <h1 class = "ms-2">분류별 추천 도서(국내)</h1>
                <div  id="section_content_nav">
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a class="nav-link">소설</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link">비문학</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link">문학</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link">수험서</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link">코믹/만화</a>
                        </li>
                    </ul>
                </div>
                <div id="#" class="col-auto d-flex justify-content-around mx-auto p-4">
                    <figure>
                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791191891287.jpg" width="200" height="200" class="figure-img img-fluid rounded text-center" alt="메리골드 마음세탁소">
                        <figcaption>메리골드 마음세탁소</figcaption>
                    </figure>
                    <figure>
                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791161571188.jpg" width="200" height="200" class="figure-img img-fluid rounded text-center" alt="불편한 편의점(벚꽃 에디션)">
                        <figcaption>불편한 편의점(벚꽃 에디션)</figcaption>
                    </figure>
                    <figure>
                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9788998441012.jpg" width="200" height="200" class="figure-img img-fluid rounded text-center" alt="모순">
                        <figcaption>모순</figcaption>
                    </figure>
                    <figure>
                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791167913678.jpg" width="200" height="200" class="figure-img img-fluid rounded text-center" alt="단 하루의 부활">
                        <figcaption>단 하루의 부활</figcaption>
                    </figure>
                </div>
                <div id="#" class="">
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                </div>
                <div id="#" class="">
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                </div>
                <div id="#" class="">
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                </div>
                <div id="#" class="">
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                </div>
            </div>
            <div id="section_content_sec3">
                <h1 class = "ms-2">분류별 추천 도서(해외)</h1>
                <div  id="section_content_nav">
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a class="nav-link">소설</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link">비문학</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link">문학</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link">수험서</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link">코믹/만화</a>
                        </li>
                    </ul>
                </div>
                <div class="col-auto d-flex justify-content-around mx-auto p-4">
                    <figure class="figure">
                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791168473690.jpg" width="200" height="200" class="figure-img img-fluid rounded text-center" alt="세이노의 가르침">
                        <figcaption>세이노의 가르침</figcaption>
                    </figure>
                    <figure class="figure">
                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791192579504.jpg" width="200" height="200" class="figure-img img-fluid rounded text-center" alt="바다가 들리는 편의점">
                        <figcaption>바다가 들리는 편의점</figcaption>
                    </figure>
                    <figure class="figure">
                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791169791977.jpg" width="200" height="200" class="figure-img img-fluid rounded text-center" alt="스즈메의 문단속">
                        <figcaption>스즈메의 문단속</figcaption>
                    </figure>
                    <figure class="figure">
                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9788973814725.jpg" width="200" height="200" class="figure-img img-fluid rounded text-center" alt="멋진 신세계">
                        <figcaption>멋진 신세계</figcaption>
                    </figure>
                </div>
                <div id="#" class="">
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                </div>
                <div id="#" class="">
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                </div>
                <div id="#" class="">
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                </div>
                <div id="#" class="">
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                    <figure>
                        <figcaption></figcaption>
                    </figure>
                </div>
            </div>
        </div>
        <%@include file="../index/include/side_remote.jsp" %>
    </section>
   <%@include file="../index/include/footer.jsp" %>
    
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