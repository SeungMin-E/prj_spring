<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Prime Cube | my Cart</title>
<link rel="icon" href="img/book-logo.png" type="image">
<link rel="stylesheet" href="../../../resources/css/project_nsa/user/UserPage.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"> 
<style>

		.header-container {
			display: flex;
			align-items: center;
			justify-content: flex-start;
			margin-left: 50px;
		}

        .heart {
			display: flex;
			align-items: center;
		}

		body {
			background-image: linear-gradient(#3f2874,#6e07696f ),url('img/background.jpg');
			background-repeat: no-repeat;
			background-attachment: fixed;
			background-size: cover;
		}

		h1 {
			text-align: center;
			align-content: center;
			padding: 1rem;
		}

        .checkout-button {
            position: relative;
            top: 20px;
            right: -1150px;
        display: inline-block;
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        font-size: 16px;
        border-radius: 4px;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s;
        }

        .checkout-button:hover {
        background-color: #45a049;
        }

        #page-wrap {
            position: relative;
            z-index: 2;
            width: 80%; 
            border-radius: 15px;
            margin: 50px auto;
            margin-top: 150px;
            padding: 10px 30px;
            background: rgba(255, 255, 255, 0.7); /* Updated background with 30% transparency */
            box-shadow: 0 0 20px black;
			padding-bottom: 5rem;
        }

        .pqs {
			display: flex;
			justify-content: space-between;
		}

		.cart {
			padding: 15px 10px;
			height: 30px;
			cursor: pointer;
			margin: 5px;
			margin-left: .9rem;
			display: flex;
			align-content: center;
			align-items: center;
			text-align: center;
			background: #3f2874;
			border-radius: 10px;
			color: white;
			font-size: 15px;
			flex-wrap: wrap;
		}
        
		table{
            width: 100%;
            border-collapse: collapse;
        }
        
		.cart-info{
            display: flex;
            flex-wrap: wrap;
			
        }

		.cart-info {
            margin-top: 1rem;
        }

		.cart-info h3{
            padding: 1rem;
        }

		.cart-info p{
            padding: 1rem;
        }
        
		th{
            text-align: left;
            padding: 5px;
            color: #fff;
            background: #3f2874;
            font-weight: normal;
        }
        
		td{
            padding: 10px ;
        }

        td input{
            width: 40px;
            height: 30px;
            padding: 5px;
            background: rgba(255, 255, 255, 0.5);
        }
        
		.total-price{
            display: flex;
            justify-content: flex-end;
        }
        
		.total-price table{
            border-top: 3px solid #3f2874;
            width: 100%;
            max-width: 20%;
			
        }
        
		td:last-child{
            text-align: right;
        }
        
		th:last-child{
            text-align: right;
        }
        

	</style>
</head>
<body>
	<%@include file="../../index/include/header.jsp" %>
	<div id="page-wrap">
		
		<div class="small-container cart-page">
			<h1>Shopping Cart</h1>
			<table>
                <div class="pqs">
                    <tr>
                        <th>Product</th><!-- 제품 -->
                        <th>Quantity</th><!-- 수량 -->
                        <th>Subtotal</th><!-- 총액 -->
                    </tr>
                </div>
				
				<c:choose>
					<c:when test="${fn:length(list) eq 0 }">
						<tr>
							<td>
								<div class="cart-info">
									<div>
										<h1>장바구니에 추가된 책들이 없습니다.</h1>
									</div>
								</div>
							</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${list }" var="list" varStatus="status">
							<tr>
								<td>
									<div class="cart-info">
										<img src="img/Emperor.jpg" alt="wew" width="250" height="auto" />
										<div>
											<h3><c:out value="${list.BookInfo_seq }" /></h3>
											<p>Price: <c:out value="${list.price }"/></p>
											<button class="cart">Remove Item</button>
										</div>
									</div>
								</td>
								<td><input type="number" value="${list.quantity }"></td>
								<td>${list.Price * list.quantity} : ${list.Price * list.quantity}</td>
								
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
				
<!-- 				<tr>
					<td>
						<div class="cart-info">
							<img src="img/Emperor.jpg" alt="wew" width="250" height="auto" />
							<div>
								<h3>Ruinstorm</h3>
								<p>Price: &#8369;600.00</p>
								<button class="cart">Remove Item</button>
							</div>
						</div>
					</td>
					<td><input type="number" value="2"></td>
					<td>&#8369;1200.00</td>
				</tr>
                <tr>
					<td>
						<div class="cart-info">
							<img src="img/book-7.jpg" alt="wew" width="250" height="auto" />
							<div>
								<h3>Blue Lily, Lily Blue</h3>
								<p>Price: &#8369;333.59</p>
								<button class="cart">Remove Item</button>
							</div>
						</div>
					</td>
					<td><input type="number" value="1"></td>
					<td>&#8369;333.59</td>
				</tr>
                <tr>
					<td>
						<div class="cart-info">
							<img src="img/book-4.jpg" alt="wew" width="250" height="auto" />
							<div>
								<h3>Spinning Silver</h3>
								<p>Price: &#8369;666.00</p>
								<button class="cart">Remove Item</button>
							</div>
						</div>
					</td>
					<td><input type="number" value="1"></td>
					<td>&#8369;666.00</td>
				</tr> -->

			</table>

            <div class="total-price">

                <table>
                    <tr>
                        <td>Subtotal</td>
                        <td>&#8369;2,199.59</td>
                    </tr>
                </table>
		</div>

        <a href="/projectNSA/checkOut" class="checkout-button">Proceed to Checkout</a>


	</div>
    </div>
	<%@include file="../../index/include/footer.jsp" %>
</body>
</html>