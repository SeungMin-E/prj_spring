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
                        <h1 class="h3 mb-0 text-gray-800">Book 관리</h1>
                        
                        <!-- Search -->
		                    <!-- <form name="formList" method="get" -->
		                    <form name="formList"
		                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
		                        <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
								<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
		                        
		                        <div class="input-group">
		                            <input type="text" name="bookTitleSearch" value="<c:out value="${vo.bookTitleSearch}"/>" class="form-control bg-white border-0 small" placeholder="찾고싶은 책 제목을 검색하세요"
		                                aria-label="Search" aria-describedby="basic-addon2">
		                            <div class="input-group-append">
		                                <button class="btn btn-primary" id="btn" type="button">
		                                    <i class="fas fa-search fa-sm"></i>
		                                </button>
		                            </div>
		                        </div>
		                    </form>
                        
                        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
                    </div>
				
					
					
                    <!-- Content Row -->
                    <div class="d-flext col">
						<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                 <thead>
                                     <tr>
                                         <th>Seq</th>
                                         <th>bookSerialNum</th>
                                         <th>bookTitle</th>
                                         <th>AnthorName</th>
                                         <th>bookReleaseDate</th>
                                         <th>nation</th>
                                         <th>publisher</th>
                                         <th>price</th>
                                         <th>bookTheme</th>
                                         <th>delNy</th>
                                     </tr>
                                 </thead>
                                 
                                 <tbody>
                                  	<c:choose>
										<c:when test="${fn:length(list) eq 0}">
											<tr>
												<td class="text-center" colspan="9">There is no data!</td>
											</tr>	
										</c:when>
										<c:otherwise><!-- ${list} 자바에서 넘겨준 객체 이름 --><!-- var="list" jstl 블럭에서 사용할 변수 이름 -->
											<c:forEach items="${list}" var="list" varStatus="status">
												<tr>
		                                            <td><a href="/BookOne?seq=<c:out value="${list.seq}"/>"><c:out value="${list.seq}"></c:out></a></td>
		                                            <td><a href="/BookOne?seq=<c:out value="${list.seq}"/>"><c:out value="${list.bookSerialNum}"></c:out></a></td>
		                                            <td><a href="/BookOne?seq=<c:out value="${list.seq}"/>"><c:out value="${list.bookTitle}"></c:out></a></td>
		                                            <td><c:out value="${list.anthorName}"></c:out></td>
		                                            <td><c:out value="${list.bookReleaseDate}"></c:out></td>
		                                            <td>
		                                            	<c:set var = "CodeNat" value="${CodeServiceImpl.selectListCachedCode('4') }"/>
		                                            	<c:forEach items="${CodeNat}" var="nat" varStatus="status">
		                                            		<c:if test = "${list.nation eq  nat.seq}">
		                                            			<c:out value="${nat.code_value }" />
		                                            		</c:if>
		                                            	</c:forEach>
		                                            	<%-- <c:out value="${list.publisher}"/> --%>
		                                            	<%-- <c:out value="${CodeServiceImpl.selectListCachedCode('5')}"/> --%>
		                                            </td>
		                                            <td>
		                                            	<c:set var = "CodePub" value="${CodeServiceImpl.selectListCachedCode('5') }"/>
		                                            	<c:forEach items="${CodePub}" var="pub" varStatus="status">
		                                            		<c:if test = "${list.publisher eq  pub.seq}">
		                                            			<c:out value="${pub.code_value }" />
		                                            		</c:if>
		                                            	</c:forEach>
		                                            	<%-- <c:out value="${list.publisher}"/> --%>
		                                            	<%-- <c:out value="${CodeServiceImpl.selectListCachedCode('5')}"/> --%>
		                                            </td>
		                                            <td><c:out value="${list.price}"></c:out></td>
		                                            <td>
		                                            	<c:set var = "CodeTheme" value="${CodeServiceImpl.selectListCachedCode('3') }"/>
		                                            	<c:forEach items="${CodeTheme }" var = "Theme" varStatus="status">
		                                            		<c:if test="${list.bookTheme eq  Theme.seq}">
		                                            			<c:out value="${Theme.code_value }"></c:out>
		                                            		</c:if>
		                                            	</c:forEach>
		                                            	<%-- <c:out value="${list.bookTheme}"></c:out> --%>
		                                            </td>
		                                            <td><c:out value="${list.delNy}"></c:out></td>
	                                        	</tr>
	                                       	</c:forEach>
										</c:otherwise>
									</c:choose>
                                 </tbody>
                             </table>
                    	</div>
                    
                    <!-- Content Row -->
                    <div class="row">
	                    <button class="btn btn-primary" id="create" type="button">
	                        도서 추가
	                     </button>
                    </div>
				<div class="container-fluid px-0 mt-2">
				    <div class="row">
				        <div class="col">
				            <!-- <ul class="pagination pagination-sm justify-content-center mb-0"> -->
				            <ul class="pagination justify-content-center mb-0">
				                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-left"></i></a></li> -->
								<c:if test="${vo.startPage gt vo.pageNumToShow}">
				                	<li class="page-item"><a class="page-link" href="javascript:goList(${vo.startPage - 1})"><i class="fa-solid fa-angle-left"></i></a></li>
								</c:if>
								<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
									<c:choose>
										<c:when test="${i.index eq vo.thisPage}">
				                			<li class="page-item active"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
										</c:when>
											<c:otherwise>             
				                				<li class="page-item"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
											</c:otherwise>
									</c:choose>
								</c:forEach>                
								<c:if test="${vo.endPage ne vo.totalPages}">                
				                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.endPage + 1})"><i class="fa-solid fa-angle-right"></i></a></li>
								</c:if>
				                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-right"></i></a></li> -->
				            </ul>
				        </div>
				    </div>
				</div>

            <!-- End of Main Content -->

        </div>
        <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->
			 <!-- Footer -->
            <%@include file="../../include/footer.jsp" %>
	</div>
</div>
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
    	
    	$("#btn").on("click",function(){
    		/* 자기 자신을 다시한번 호출을 해준다. */
    		form.attr("method", "post");
    		form.attr("action", "/BookListPage").submit();
    		
    	});
    	
    	$("#create").on("click", function(){
    		window.location.replace("/BookInsertPage");
    	});
    	
    	goList = function(thisPage) {
    		$("input:hidden[name=thisPage]").val(thisPage);
    		$("form[name=formList]").attr("action", "BookListPage").submit();
    	}
    </script>
          
</body>

</html>