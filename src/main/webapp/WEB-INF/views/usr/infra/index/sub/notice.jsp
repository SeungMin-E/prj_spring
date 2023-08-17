<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/e402926c7b.js" crossorigin="anonymous"></script>
    <title>공지사항</title>
</head>
<body>
    <%@include file="../../index/include/header.jsp" %>
    
    <section class="hero" id="hero">
    	<div class="row">
    		<div class="content">
    			<h1>공지사항</h1>
    			<p>중요한 내용들을 공지할 예정이니 확인하여주시면 감사합니다.</p>
    			<p>확인하시고 착오 없으시길 바랍니다.</p>
    		</div>
    	</div>
    </section>
    
    <section class="">
   	<div class="">
      <form class="d-flex col-auto" role="search">
       	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
		<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit"><i class="bi bi-search"></i></button>
      </form>
     </div>
    
    	 <table class="table"> 
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>공지사항</th>
                        <th>담당부서</th>
                        <th>공지일자</th>
                    </tr>
                </thead>
                <tbody>
                <c:choose>
                   <c:when test="${fn:length(list) eq 0 }">
                   		<tr>
                   			<td class="text-center" colspan="9">공지사항이 없습니다.</td>
                   		</tr>
                   </c:when>
            	   <c:otherwise>
             	   		<c:forEach items="${list }" var="list" varStatus="status">
            	   			<tr>
            	   				<td><c:out value="${list.notice_seq }"/></td>
            	   				<td><c:out value="${list.noticeTitle }"/></td>
            	   				<td><c:out value="${list.noticeContent }"/></td>
            	   				<td><c:out value="${list.DPT_name }"/></td>
            	   				<td><c:out value="${list.noticeDate }"/></td>
            	   			</tr>
            	   		</c:forEach>
            	   	</c:otherwise>
           	   	</c:choose>
                </tbody>
           </table>
           
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
    </section>
    
    
    <!-- footer -->
    <%@include file="../../index/include/footer.jsp" %>
</body>
</html>