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
        <h3>Prime Cube</h3>
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
          <h1>자주 묻는 질문들</h1>
          <div class="accordion-item">
            <div class="accordion-item-header">
              주문은 어떻게 하면 될까요?
            </div>
            <div class="accordion-item-body">
              <div class="accordion-item-body-content">
                Prime Cube에서 주문 하려면 도서목록을 검색하시고 원하시는 책이 있다면 선택하신 다음에 결제를 누르시면 결제 페이지로 넘어갑니다.
                주문을 완료하려면 결제수단 등록 및 주소를 등록해주시면 됩니다.
              </div>
            </div>
          </div>
          <div class="accordion-item">
            <div class="accordion-item-header">
              가능한 결제 수단이 있을까요?
            </div>
            <div class="accordion-item-body">
              <div class="accordion-item-body-content">
                저희는 카카오페이를 지원하고 있습니다. 편의성을 제공하기 위해서 추후 결제수단을 추가 할 예정입니다.
              </div>
            </div>
          </div>
          <div class="accordion-item">
            <div class="accordion-item-header">
              배송기간은 얼마나 걸리나요?
            </div>
            <div class="accordion-item-body">
              <div class="accordion-item-body-content">
                국내는 1 ~ 4일 정도이고 해외는 최소 7일 이상 정도 입니다. 
              </div>
            </div>
          </div>
          
          <div class="accordion-item">
            <div class="accordion-item-header">
              책을 교환 및 환불이 될까요?
            </div>
            <div class="accordion-item-body">
              <div class="accordion-item-body-content">
                네 가능합니다. 책이 파손되었다면 교환이 가능하고, 책이 마음에 들지 않는 경우 14일 이내로 고객문의로 통해서 반품 및 교환 요청하시면 됩니다.
              </div>
            </div>
          </div>

          <div class="accordion-item">
            <div class="accordion-item-header">
              선물 포장 서비스도 제공이 되나요?
            </div>
            <div class="accordion-item-body">
              <div class="accordion-item-body-content">
               	네 추가요금을 지불하면 선물포장 서비스도 제공하고 있습니다. 주문하실때 선물포장이라는 체크박스를 누르시면 선물포장해서 드립니다.
              </div>
            </div>
          </div>

          <div class="accordion-item">
            <div class="accordion-item-header">
              문의는 어떻게 하면 되나요?
            </div>
            <div class="accordion-item-body">
              <div class="accordion-item-body-content">
                1대1 문의 신청을 하거나 support@PrimeCube.com으로 문의를 주시면 됩니다.
              </div>
            </div>
          </div>

          <div class="accordion-item">
            <div class="accordion-item-header">
              주문을 하면 배송 조회가 가능할까요?
            </div>
            <div class="accordion-item-body">
              <div class="accordion-item-body-content">
                네 주문을 하시면 배송조회 서비스를 제공해 드리고 있습니다. 배송조회를 클릭하시면 송장번호와 배송현황 안내를 제공해드리고 있습니다.
                보다 더 자세한 배송조회를 원하신다면 해당 택배사 홈페이지에서 송장번호로 조회하시면 됩니다.
              </div>
            </div>
          </div>

          <div class="accordion-item">
            <div class="accordion-item-header">
              여기서 파는 책들은 새 도서인가요? 아니면 중고 도서인가요?
            </div>
            <div class="accordion-item-body">
              <div class="accordion-item-body-content">
                저희가 파는 책들은 다른 명시가 되어 있지 않다면 좋은 품질의 새 책입니다. 항상 좋은 품질 제공하고 있습니다.
                만약에 책이 중고이거나 파손이 되었다면 무상으로 교환해드리고 있으니 걱정하지 않으셔도 됩니다.
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
	
	 const accordionItemHeaders = document.querySelectorAll(".accordion-item-header");

	 accordionItemHeaders.forEach(accordionItemHeader => {
	   accordionItemHeader.addEventListener("click", event => {

	     accordionItemHeader.classList.toggle("active");
	     const accordionItemBody = accordionItemHeader.nextElementSibling;
	     if(accordionItemHeader.classList.contains("active")) {
	       accordionItemBody.style.maxHeight = accordionItemBody.scrollHeight + "px";
	     }
	     else {
	       accordionItemBody.style.maxHeight = 0;
	     }
	     
	   });
	 });

	</script>
</body>
</html>