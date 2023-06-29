<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!DOCTYPE html>
<html lang="kr">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>테이블</title>

    <!-- Custom fonts for this template -->
    <link href="resources/vender/project_nsa/admin_host/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/css/project_nsa/admin_host/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="resources/vender/project_nsa/admin_host/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    
    <!-- custom font awesome -->
   	<script src="https://kit.fontawesome.com/e402926c7b.js" crossorigin="anonymous"></script>

</head>

<body id="page-top">
	
	 <!-- Page Wrapper -->
    <div id="wrapper">

       <!-- Sidebar -->
        <%@include file="../../include/sidebar.jsp" %>
       

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <%@include file="../../include/header.jsp" %>

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">CodeGroupList</h1>
                        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
                    </div>
                    <!-- Content Row -->
                    <div class="row">
						<form name="formTarget"
                        	class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        	<div class="input-group">
	                        	<input type="text" name="seq" class="form-control bg-light border-0 small" 
                                	aria-label="Search" aria-describedby="basic-addon2" value='<c:out value="${item.seq}"></c:out>'>
                            	<input type="text" name="name" class="form-control bg-light border-0 small" 
                               	 aria-label="Search" aria-describedby="basic-addon2" value="<c:out value="${item.name}"></c:out>">
                            	<input type="text" name="delNy" class="form-control bg-light border-0 small" 
                               	 aria-label="Search" aria-describedby="basic-addon2" value="<c:out value="${item.delNy}"></c:out>" readonly>
                       		 </div>
							 <div>
							 	<button type="button" id="goback">목록</button>
							 	<button type="button" id="gouele">uele</button>
							 	<button type="button" id="excution">삭제</button>
							 	<button type="button" id="gosave">저장</button>
							 </div>                     		 
                    	</form>
                    </div>
            <!-- End of Main Content -->
			
			 <!-- Footer -->
            <%@include file="../../include/footer.jsp" %>
			
        </div>
        <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

	
	

<!-- Bootstrap core JavaScript-->
    <script src="resources/vender/project_nsa/admin_host/jquery/jquery.min.js"></script>
    <script src="resources/vender/project_nsa/admin_host/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="resources/vender/project_nsa/admin_host/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="resources/js/project_nsa/admin_host/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="resources/vender/project_nsa/admin_host/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="resources/js/project_nsa/admin_host/demo/chart-area-demo.js"></script>
    <script src="resources/js/project_nsa/admin_host/demo/chart-pie-demo.js"></script>
    
    <script type="text/javascript">
    
    	var form = $("form[name='formList']");
    	var target = $("form[name='formTarget']");
    	
    	$("#btn").on("click",function(){
    		/* 자기 자신을 다시한번 호출을 해준다. */
    		form.attr("method", "post");
    		form.attr("action", "/codeGroupFrom").submit();
//    		alert("Nothing say anyone");
    	});
    	
    	$("#goback").on("click", function(){
    		window.location.replace("/codeGroupList");
    	});
    	
    	$("#gouele").on("click", function(){
    		target.attr("method", "post");
    		target.attr("action", "/codeGroupuele").submit();
    	});
    	
    	
    	$("#excution").on("click",function(){
    		target.attr("method", "post");
    		target.attr("action", "/codeGroupDelete").submit();
    	});
    	
    	
    	$("#gosave").on("click",function(){
    		target.attr("method", "post");
    		target.attr("action", "/codeGroupUpdate").submit();
    	});
    	
    </script>
          
</body>

</html>