<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="kr">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>관리자 로그인</title>

    <!-- Custom fonts for this template-->
    <link href="../../resources/vender/project_nsa/admin_host/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
	
	<!-- custom font awesome -->
   	<script src="https://kit.fontawesome.com/e402926c7b.js" crossorigin="anonymous"></script>
	
    <!-- Custom styles for this template-->
    <link href="../../resources/css/project_nsa/admin_host/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                                    </div>
                                    <form id="formLogin" class="user">
                                        <div class="form-group">
                                            <input type="text" name="userID" class="form-control form-control-user"
                                                id="userID" value="rain" aria-describedby="emailHelp"
                                                placeholder="Enter userID...">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="userPW" class="form-control form-control-user"
                                                id="userPW" value="134679" placeholder="Password">
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" class="custom-control-input" id="customCheck">
                                                <label class="custom-control-label" for="customCheck">Remember
                                                    Me</label>
                                            </div>
                                        </div>
                                        <a id="btnLogin"  class="btn btn-primary btn-user btn-block">
                                            Login
                                        </a>
                                        <hr>
                                        <a href="/admin_page" class="btn btn-google btn-user btn-block">
                                            <i class="fab fa-google fa-fw"></i> Login with Google
                                        </a>
                                        <a href="/admin_page" class="btn btn-facebook btn-user btn-block">
                                            <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                                        </a>
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="/pwLost">Forgot Password?</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="/register">Create an Account!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="../../resources/vender/project_nsa/admin_host/jquery/jquery.min.js"></script>
    <script src="../../resources/vender/project_nsa/admin_host/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../../resources/vender/project_nsa/admin_host/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../../resources/js/project_nsa/admin_host/sb-admin-2.min.js"></script>
    

</body>
<script type="text/javascript">

	$("#btnLogin").on("click", function(){
		
		if(validation() == false) return false;
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/loginP"
			/* ,data : $("#formLogin").serialize() */
			,data : {
				"userID" : $("#userID").val(),
				"userPW" : $("#userPW").val()
				}
			,success: function(response) {
				if(response.rt == "success") {
					 if(response.rtUserAccount.userID == "rain"){
						 alert(response.rtUserAccount.userName + "관리자님 환영합니다.");
						 location.href = "/admin_page";
					 }else{
						 alert("관리자 페이지는 관리자 외 로그인을 할 수 없습니다.");
						 return false;
					 }
					
				} else {
					alert("그런 회원 없습니다.");
					
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
	
	$("#btnLogout").on("click", function(){
		$.ajax({
			async: true
			, chche : false
			, tpye : "post"
			, url : "/logOutP"
			,data : {"sessonId" : sessonId}
			, success : function(respone){
				alert("로그아웃 되셨습니다.");
				location.href = "/admin_page";
			}
			, error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
		
	});


	validation = function() {

		function checkNull(element, value, errorMessage) {
			  if (value === "" || value === null || value === undefined) {
			    alert(errorMessage);
			    element.focus();
			    return false;
			  }
			}
		
		 if(checkNull($("#userID"), $.trim($("#userID").val()), "아이디를 입력해 주세요!")) return false;
		 if(checkNull($("#userPW"), $.trim($("#userPW").val()), "비밀번호를 입력해 주세요!")) return false;
	}

</script>
</html>