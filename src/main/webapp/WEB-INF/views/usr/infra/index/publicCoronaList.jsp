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
        	CoronaList(우.. 아니 코로나)
        	여기 왔으면 맞는거다
              
              
              <br>aaa : <c:out value="${resultCode }"/>
			<br>aaa : <c:out value="${resultMsg }"/>
			<br>aaa : <c:out value="${pageNo }"/>
			<br>aaa : <c:out value="${totalCount }"/>
			<br>aaa : <c:out value="${numOfRows }"/>
			<br>aaa : <c:out value="${items }"/>
			<br>aaa : <c:out value="${fn:length(items) }"/>
			<hr>
				<c:forEach items="${items}" var="item" varStatus="status">
					<c:out value="${item.YYYY }"/>
					<c:out value="${item.MM }"/>	
					<c:out value="${item.KIT_PROD_QTY }"/>	
					<c:out value="${item.KIT_EXPRT_QTY }"/>	
					<c:out value="${item.KIT_STOCK_QTY }"/><br>	
				</c:forEach>
              
        </div>
    </section>
   <%@include file="../index/include/footer.jsp" %>
    
   <script type="text/javascript">
   
   </script>
</body>
</html>