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

        #page-wrap {
            position: relative;
            z-index: 2;
            width: 30%; 
            border-radius: 15px;
            margin: 50px auto;
            margin-top: 150px;
            padding: 10px 30px;
            background: rgba(255, 255, 255, 0.7); /* Updated background with 30% transparency */
            box-shadow: 0 0 20px black;
			padding-bottom: 5rem;
        }
        #page-wrap2 {
            position: relative;
            z-index: 2;
            width: 30%; 
            border-radius: 15px;
            margin: 50px auto;
            padding: 10px 30px;
            background: rgba(255, 255, 255, 0.7); /* Updated background with 30% transparency */
            box-shadow: 0 0 20px black;
			padding-bottom: 5rem;
        }
        #page-wrap3 {
            position: relative;
            z-index: 2;
            width: 30%; 
            border-radius: 15px;
            margin: 50px auto;
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
            text-align: center;
            padding: 5px;
            color: #fff;
            background: #3f2874;
            font-weight: normal;
        }
        .agreement{
            text-align: left;
            text-align-last: center;
            align-items: left;
            padding: 5px;
            color: #000000;
            background: rgba(255, 255, 255, 0.7);
            font-weight: normal;
            font-size: 10px;
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
        }
        
		.total-price table{
            border-top: 3px solid #3f2874;
            width: 100%;
            max-width: 100%;
			
        }
        .total-price table{
            border-top: 3px solid #3f2874;
            width: 100%;
            max-width: 100%;
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
			<h1>Checkout</h1>
			<table>
                <div class="pqs">
                    <tr>
                    <th></th>
                    <th>Product Details</th>
                    <th></th>
                    </tr>
                </div>
            </table>
        </div>
    </div>
    <div id="page-wrap2">
        <div class="small-container cart-page">

				<tr>
					<td>
						<div class="cart-info">
							<img src="img/Emperor.jpg" alt="wew" width="150" height="auto" />
							<div>
								<h3>Ruinstorm</h3>
								<p>Price: &#8369;600.00</p>
                                <p>Item Amount: 2</p>
                                <p>Total Price: &#8369;1200.00</p>
							</div>
						</div>
					</td>
				</tr>
        </div>
    </div>

    <div id="page-wrap2">
        <div class="small-container cart-page">
                <tr>
					<td>
						<div class="cart-info">
							<img src="img/book-7.jpg" alt="wew" width="150" height="auto" />
							<div>
                                <h3>Blue Lily, Lily Blue</h3>
								<p>Price: &#8369;333.59</p>
                                <p>Item Amount: 2</p>
                                <p>Total Price: &#8369;333.59</p>
							</div>
						</div>
					</td>
				</tr>
        </div>
    </div>

    <div id="page-wrap2">
        <div class="small-container cart-page">
                <tr>
                    <td>
                        <div class="cart-info">
                            <img src="img/book-4.jpg" alt="wew" width="150" height="auto" />
                            <div>
                                <h3>Spinning Silver</h3>
								<p>Price: &#8369;666.00</p>
                                <p>Item Amount: 1</p>
                                <p>Total Price: &#8369;666.00</p>
                            </div>
                        </div>
                    </td>
                </tr>
        </div>
    </div>
        
     <div id="page-wrap3">
            <div class="total-price">

                <table>
                    <tr>
                        <td>Subtotal</td>
                        <td>&#8369;2,199.59</td>
                    </tr>
                    <tr>
                        <td>Tax</td>
                        <td>&#8369;109.98</td>
                    </tr>
                    <tr>
                        <td>Total</td>
                        <td>&#8369;2,309.57</td>
                    </tr>
                    <tr>
                        
                    </tr>

                    <tr>
                    <th class="agreement">
                    <input type="checkbox" id="Terms" name="terms" value="Bike" class="TAS">
                    <label for="Terms"> I agree to the terms of the Story Bound User Agreement (last updated 13 June, 2022.)</label>
                    </th>
                    </tr>
                
                    <td class="payment">
                    <p>Payment Options:</p>
                        <input type="radio" id="Paypal" name="pm" value="HTML">
                        <label for="Paypal">Paypal</label><br>
                        <input type="radio" id="Master" name="pm" value="CSS">
                        <label for="Master">Master Card</label><br>
                        <input type="radio" id="Gcash" name="pm" value="JavaScript">
                        <label for="Gcash">Gcash</label>
                    </td>
                    <td>
                    <button class="cart">Purchase</button>
                    </td>
                    
                </table>
	        </div>
        
        </div>
	
	<%@include file="../../index/include/footer.jsp" %>
</body>
</html>