<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html lang="kr">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>테이블</title>

<!-- Custom fonts for this template -->
<link
	href="resources/vender/project_nsa/admin_host/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="resources/css/project_nsa/admin_host/sb-admin-2.min.css"
	rel="stylesheet">

<!-- Custom styles for this page -->
<link
	href="resources/vender/project_nsa/admin_host/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

<!-- custom font awesome -->
<script src="https://kit.fontawesome.com/e402926c7b.js"
	crossorigin="anonymous"></script>

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<%@include file="../../include/sidebar.jsp"%>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<%@include file="../../include/header.jsp"%>

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">BookList</h1>
						<a href="#"
							class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
							class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
					</div>
					<!-- Content Row -->
					<div class="row col-auto">
						<form name="formTarget" method="post"
							class="d-none d-sm-block mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
							<div class="mb-3">

								<!-- 일련번호 -->
								<div class="input-group mt-3">
									<span class="input-group-text">책 제목 명</span> <input type="text"
										name="bookSerialNum" id="bookSerialNum"
										class="form-control bg-white border-0 small"
										aria-label="Search" aria-describedby="basic-addon2"
										placeholder="책 일련번호를 적으세요">
								</div>

								<!-- 책 제목 -->
								<div class="input-group mt-3">
									<span class="input-group-text">책 제목 명</span> <input type="text"
										name="codeGroup_name" id="codeGroup_name"
										class="form-control bg-white border-0 small"
										aria-label="Search" aria-describedby="basic-addon2"
										placeholder="책 제목을 적으세요">
								</div>

								<!-- 등록일자 -->
								<div class="input-group mt-3">
									<span class="input-group-text">등록일자</span> <input type="text"
										name="bookReleaseDate" id="bookReleaseDate"
										class="form-control bg-white border-0 small"
										aria-label="Search" aria-describedby="basic-addon2"
										placeholder="등록일자 작성">
								</div>

								<!-- 금액 -->
								<div class="input-group mt-3">
									<span class="input-group-text">금액</span> <input type="text"
										name="bookReleaseDate" id="bookReleaseDate"
										class="form-control bg-white border-0 small"
										aria-label="Search" aria-describedby="basic-addon2"
										placeholder="금액이 결정되면 작성">
								</div>

								<!-- 출판사 -->
								<div class="input-group mt-3">
									<span class="input-group-text">출판사</span> 
									<select>
										<option value="" selected>출판사를 선택하세요</option>
									</select>
								</div>

								<!-- 장르 -->
								<div class="input-group mt-3">
									<span class="input-group-text">장르</span> 
									<select>
										<optgroup label="문학">
											<option value="5">대하소설</option>
											<option value="6">장편소설</option>
											<option value="7">경장편소설</option>
											<option value="8">중편소설</option>
											<option value="9">단편소설</option>
											<option value="10">초단편소설</option>
											<option value="11">연작소설</option>
											<option value="12">시</option>
											<option value="13">희곡</option>
										</optgroup>
										<optgroup label="비문학">
											<option value="15">에세이</option>
											<option value="16">논픽션</option>
											<option value="17">자서전</option>
											<option value="18">기록물</option>
											<option value="19">사상서</option>
											<option value="20">비평</option>
										</optgroup>
									</select>
								</div>
							</div>

							<div>
								<button type="button" id="create">저장</button>
							</div>
						</form>
					</div>
				</div>

				<!-- End of Main Content -->
			</div>
			<!-- Footer -->
			<%@include file="../../include/footer.jsp"%>
			<!-- End of Content Wrapper -->
		</div>
	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>




	<!-- Bootstrap core JavaScript-->
	<script
		src="resources/vender/project_nsa/admin_host/jquery/jquery.min.js"></script>
	<script
		src="resources/vender/project_nsa/admin_host/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="resources/vender/project_nsa/admin_host/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="resources/js/project_nsa/admin_host/sb-admin-2.min.js"></script>

	<!-- 유효성검사 -->
	<script src="resources/js/project_nsa/admin_host/vaildation.js"></script>

	<script type="text/javascript">
		var form = $("form[name='formList']");
		var target = $("form[name=formTarget]");
		var objName = $("#codeGroup_name");

		$("#btn").on("click", function() {
			/* 자기 자신을 다시한번 호출을 해준다. */
			form.attr("method", "post");
			form.attr("action", "/codeForm").submit();
			//    		alert("Nothing say anyone");
		});

		vaildationInst = function() {
			if (vaildationUpdt() == false)
				return false;
		}

		vaildationUpdt = function() {
			if (check(objName) == false)
				return false;
		}

		$("#create").on("click", function() {

			if (vaildationInst() == false)
				return false;
			target.attr("action", "/BookInsert").submit();
		});

		goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			$("form[name=formList2]").attr("action", "/BookInsertPage")
					.submit();
		}
	</script>

</body>

</html>