<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"  %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../resources/css/project_nsa/user/UserPage.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/e402926c7b.js" crossorigin="anonymous"></script>
    <title>회원가입</title>
</head>
<body>
    <header id="head_backg">
        <div id="wrap" class="wrap_container">
            <div class="">
                <div id="head_nav_bar">
                    <ul class="nav justify-content-end">
                      <li class="nav-item">
                            <a href="/projectNSA/join" class="nav-link">회원가입</a>
                        </li>
                        <li class="nav-item">
                            <a href="/projectNSA/login" class="nav-link">로그인</a>
                        </li>
                    </ul>
                </div>
                <div id="title_box" class="d-flex flex-row justify-content-center">
                    <i class="fa-solid fa-book-open-reader align-self-center" style="font-size: 135px; color: rgb(206, 179, 26);"></i>
                    <div class="text-center">
                        <h1 id="title_box_title">예제 : PROJECT NSA(문고/서점)</h1>
                    </div>
                </div>
            </div>
            <nav class="nav navbar-expand-lg bg-light">
            <div class="">
                <ul class="nav">
                        <li class="nav-item">
                            <a class="nav-link">공지사항</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link">베스트셀러</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link">화제의신간</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link">국내도서</a>
                        </li>
                    <li class="nav-item">
                            <a class="nav-link">해외도서</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link">이벤트</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link">Q&A/1:1문의</a>
                        </li>
                    </ul>
                </div> 
            </nav>
        </div>
    </header>
    <section>
        <!-- 섹션 웹 컨테이너 -->
        <div id="wrap" class="wrap_container">
            <!-- 타이틀 박스 -->
            <div class="d-flex justify-content-center mt-4" style="font-size: 60px;">
                <i class="fa-solid fa-user fa-beat-fade"></i>
                <h1 class="mx-4">회원가입</h1>
            </div>
            <!-- 회원가입 폼 -->
            <form name="formList" class="col-8 mx-auto">
            
                <!-- 아이디 -->
                <div class="form-floating mt-3 mb-3">
  					<input type="text" class="form-control" id="floatingInput" name="userID" placeholder="아이디를 입력하세요">
  					<label for="floatingInput" class="form-label">아이디</label>
				</div>
				
                <!-- 비밀번호  -->
                <div class="d-flex justify-content-between ">
                    <div class="form-floating col-6 mt-3">
				  		<input type="password" class="form-control" name="userPW" id="floatingPassword" placeholder="비밀번호 확인">
					  	<label for="floatingPassword">비밀번호</label>
					</div>
                    <div class="form-floating col-6 mt-3">
				  		<input type="password" class="form-control" name="#" id="floatingPassword" placeholder="비밀번호 확인">
					  	<label for="floatingPassword">비밀번호 확인</label>
					</div>
                </div>

                <!-- 이름 & 성별 -->
                <div class = "d-flex justify-content-between mt-3 mb-5">
	                <div class="col-6 mt-3">
	                    <div class="form-floating mt-3">
	                        <input type = "text" id="floatingInput" name = "userName" class = "form-control" placeholder = "이름을 입력하세요">
		                    <label for = "floatingInput" class = "form-label">이름</label>
	                    </div>
	                </div>
	                <div class="mt-3 col-5">
	                	<p>성별</p>
	                    <div class = "form-check form-check-inline mt-1">
	                        <label for = "man" class = "form-check-label">남자</label>
	                        <input type = "radio" name="gender" value="1" class = "form-check-input">    
	                    </div>
	                    <div class="form-check form-check-inline mt-1">
	                        <label for = "woman" class = "form-check-label">여자</label>
	                        <input type="radio" name="gender" value="2" class="form-check-input">
	                    </div>
	                </div>
                </div>

                <!-- 이메일 -->
                	<div class="d-flex justify-content-start mb-3">
	                	<div class="form-floating col-8">
	                        <input type="email" name="email" type="text" id="floatingInput" class="form-control"placeholder="name@example.com">
	                    	<label for="floatingInput">이메일 주소</label>
	                    </div>
	                        <input type="button" class="btn btn-outline-primary btn-sm" value="이메일 인증">
                	</div>
                                    
                <!-- 주소 -->
                <div class="d-flex flex-column">
                    <label for="" class="form-check-label">주소</label>
                    <div class="d-flex">
	                    <div class="input-group flex-shrink-1 mb-3">
	                        <button class="btn btn-outline-primary"><i class="bi bi-search"></i></button>
	                        <input class="form-control" type="text">
	                    </div>
	                    <div class="col-8 mb-3">
	                        <input class="form-control" type="text" placeholder="주소(우편주소 입력시 자동 입력)" value="" readonly>
	                    </div>
                    </div>
                    <div class="col-auto mb-3">
                        <input class="form-control" type="text" placeholder="상세주소를 입력하세요." >
                    </div>
                </div>
                
                <!-- 약관 동의  -->
                
                <div class="col-6 mx-auto mb-3">
	                <div class="form-check form-check-inline">
	                    <input type="checkbox"  class="form-check-inline mb-3">
	                    <label class="form-check-label mb-3">모든 약관에 동의합니다.</label>
	                </div>
                    <button id="create" class="btn btn-primary">회원가입하기</button>
                </div>

            </form>
        </div>
    </section>
</body>

	<script src="../resources/js/project_nsa/admin_host/vaildation.js"></script>
	
	<script type="text/javascript">
		var form = $("form[name='formList']");
		var id = $("input[name='userID']");
    	
    	vaildationUpdt = function(){
    		if(nc(id) == false ) return false;
    	}
		
		$(id).on("blur",function(){
			
			if(vaildationUpdt() == false){
				return false();
			}
				$.ajax({
					async : true
					, cache : false
					, type : "post"
					, url : "/duplicate"
					, data : {
						"userID" : $(id).val()
					}
				,success : function(response){
					if(response.du == "available"){
						alert("이 아이디는 사용이 가능합니다.");
					}else{
						alert("이 아이디는 사용이 불가능합니다.");
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
				
			});
		});
		
		$("#create").on("click", function(){
			form.attr("method", "post");
			form.attr("action", "/getReadyForTheNextBattle").submit();
			
		});
		
	
	
	</script>
</html>