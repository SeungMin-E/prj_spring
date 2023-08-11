<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"  %>

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
    <link rel="stylesheet" href="../../resources/css/project_nsa/user/UserPage.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/e402926c7b.js" crossorigin="anonymous"></script>
    <title>Welcome to PrimeCube</title>
</head>
<body>
    <%@include file="../../index/include/header.jsp" %>
    
     <section class = "quick-page">
      <div class = "quick-bg">
        <h3>STORYBOUND</h3>
        <h2>FAQs</h2>
        <div class = "line">
          <div></div>
          <div></div>
          <div></div>
        </div>
        <p class = "text">문제를 쉽고 빠르게 해결하고 원활하게 이용 할 수 있도록 정리하였습니다.</p>
        <p class = "text">부디 도움이 되길 바라겠습니다. 감사합니다!</p>
      </div>
    </section>

    <section class="quick-body">
      <div class="quick-container">
        <div class="accordion">
          <h1>Frequently Asked Questions</h1>
          <div class="accordion-item">
            <div class="accordion-item-header">
              How do I place an order?
            </div>
            <div class="accordion-item-body">
              <div class="accordion-item-body-content">
                To place an order on STORYBOUND, simply browse our collection, select the books you want, and proceed to the checkout page. Provide your shipping details and payment information to complete the order.
              </div>
            </div>
          </div>
          <div class="accordion-item">
            <div class="accordion-item-header">
              What payment methods do you accept?
            </div>
            <div class="accordion-item-body">
              <div class="accordion-item-body-content">
                We accept various payment methods, including credit cards (Visa, Mastercard, American Express) and PayPal.
              </div>
            </div>
          </div>
          <div class="accordion-item">
            <div class="accordion-item-header">
              How long does shipping take?
            </div>
            <div class="accordion-item-body">
              <div class="accordion-item-body-content">
                The shipping time depends on your location and the shipping method chosen during checkout. Typically, it takes 3-5 business days for domestic orders and 7-14 business days for international orders.
              </div>
            </div>
          </div>
          
          <div class="accordion-item">
            <div class="accordion-item-header">
              Can I return or exchange a book?
            </div>
            <div class="accordion-item-body">
              <div class="accordion-item-body-content">
                Yes, we have a flexible return and exchange policy. If you are not satisfied with your purchase, please contact our customer support within 30 days of receiving the book to initiate the return or exchange process.
              </div>
            </div>
          </div>

          <div class="accordion-item">
            <div class="accordion-item-header">
              Do you offer gift wrapping services?
            </div>
            <div class="accordion-item-body">
              <div class="accordion-item-body-content">
                Yes, we offer gift wrapping services for an additional fee. You can select the gift wrapping option during the checkout process and provide any specific instructions for the gift wrapping.
              </div>
            </div>
          </div>

          <div class="accordion-item">
            <div class="accordion-item-header">
              How can I contact customer support?
            </div>
            <div class="accordion-item-body">
              <div class="accordion-item-body-content">
                You can contact our customer support team by emailing support@storybound.com or by filling out the contact form on our website. We strive to respond to all inquiries within 24 hours.
              </div>
            </div>
          </div>

          <div class="accordion-item">
            <div class="accordion-item-header">
              Can I track my order?
            </div>
            <div class="accordion-item-body">
              <div class="accordion-item-body-content">
                Yes, once your order is shipped, we will provide you with a tracking number. You can use this tracking number to track the status of your shipment on our website or the shipping carrier's website.
              </div>
            </div>
          </div>

          <div class="accordion-item">
            <div class="accordion-item-header">
              Are the books on STORYBOUND new or used?
            </div>
            <div class="accordion-item-body">
              <div class="accordion-item-body-content">
                The books on STORYBOUND are primarily new unless otherwise stated. We take pride in offering high-quality, brand new books to our customers.
              </div>
            </div>
          </div>
          <div class="accordion-item">
            <div class="accordion-item-header">
             FAQs를 보고도 해결이 되지 않으신가요?
            </div>
            <div class="accordion-item-body">
              <div class="accordion-item-body-content">
              	이 버튼을 눌러주시면 1:1 문의로 넘어갑니다.
              </div>
            </div>
          </div>
        </div>
      </div>
      <%-- <%@include file="../../index/include/side_remote.jsp" %> --%>
    </section>


    <%@include file="../../index/include/footer.jsp" %>
    
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script src="../../../resources/js/project_nsa/user/script.js"></script>	
    <script type="text/javascript">

	
	
	$("#btnLogout").on("click", function(){
		$.ajax({
			async: true
			, chche : false
			, type : "post"
			, url : "/logOutP"
			,data : { }
			, success : function(respone){
				alert("로그아웃 되셨습니다.");
				location.href = "/projectNSA/main_page";
			}
			, error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
		
	});


	validation = function() {
//		 if(!checkNull($("#userID"), $.trim($("#userID").val()), "아이디를 입력해 주세요!")) return false;
//		 if(!checkNull($("#userPW"), $.trim($("#userPW").val()), "비밀번호를 입력해 주세요!")) return false;
	}

	</script>
</body>
</html>