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

<!-- datepicker css -->
 <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">

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
						<form name="formTarget" id="formTarget" method="post"
							class="d-none d-sm-block mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
							<div class="mb-3">

								<!-- 일련번호 -->
								<div class="input-group mt-3">
									<span class="input-group-text">일련번호</span> <input type="text"
										name="bookSerialNum" id="bookSerialNum"
										class="form-control bg-white border-0 small"
										aria-label="Search" aria-describedby="basic-addon2"
										placeholder="책 일련번호를 적으세요">
								</div>

								<!-- 책 제목 -->
								<div class="input-group mt-3">
									<span class="input-group-text">책 제목 명</span> <input type="text"
										name="bookTitle" id="bookTitle"
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
										name="price" id="price"
										class="form-control bg-white border-0 small"
										aria-label="Search" aria-describedby="basic-addon2"
										placeholder="금액이 결정되면 작성">
								</div>

								<!-- 출판사 -->
								<div class="input-group mt-3">
									<span class="input-group-text">국내/해외</span> 
									<select name="nation">
									<c:set var="CodeNat" value="${CodeServiceImpl.selectListCachedCode('4') }"/>
										<c:forEach items="${CodeNat}" var="list" varStatus="status">
											<option value="${list.seq }">
												<c:out value="${ list.code_value}"/>
											</option>
										</c:forEach>
									</select>
								</div>
								
								<!-- 출판사 -->
								<div class="input-group mt-3">
									<span class="input-group-text">출판사</span> 
									<select name="publisher">
									<c:set var="CodePub" value="${CodeServiceImpl.selectListCachedCode('5') }"/>
										<c:forEach items="${CodePub}" var="list" varStatus="status">
											<option value="${list.seq }">
												<c:out value="${ list.code_value}"/>
											</option>
										</c:forEach>
									</select>
								</div>

								<!-- 장르 -->
								<div class="input-group mt-3">
									<span class="input-group-text">장르</span> 
									<select name="bookTheme">
										<c:set var="CodeTheme" value="${CodeServiceImpl.selectListCachedCode('3') }"/>
											<c:forEach items="${CodeTheme}" var="list" varStatus="status">
												<option value="${ list.seq}">
													<c:out value="${list.code_value }"/>
												</option>
											</c:forEach>
									</select>
								</div>
							</div>

							<div>
								<button type="button" id="create">저장</button>
								<button type="button" id="back">목록</button>
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
	
	<!-- datepicker jquery -->
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

	<!-- 유효성검사 -->
	<script src="resources/js/project_nsa/admin_host/vaildation.js"></script>

	<script type="text/javascript">
		var target = $("form[name=formTarget]");
		var bookName = $("#bookTitle");
		

		
		vaildationInst = function() {
			if (vaildationUpdt() == false)
				return false;
		}

		vaildationUpdt = function() {
			if (check(bookName) == false)
				return false;
		}

		$("#create").on("click", function() {

			if (vaildationInst() == false) return false;
			target.attr("action", "/BookInsert").submit();
		});
		
		$("#back").on("click", function() {
			window.location.replace("/BookListPage");
		});

		$(function() {
			$("#bookReleaseDate").datepicker({
				dateFormat : 'yy-mm-dd'
				, showAnim : 'fadeIn'
				, closeText : '닫기'
				
			});
		});

		
	</script>

</body>

</html>