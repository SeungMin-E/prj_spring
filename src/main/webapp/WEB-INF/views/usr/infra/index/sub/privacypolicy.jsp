<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Prime Cube | 개인정보처리방침</title>
<link rel="stylesheet" href="../../resources/css/project_nsa/user/UserPage.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

<style>
        
        h1 {
            margin-top: 30px;
        }
        
        h2 {
            margin-bottom: 10px;
        }
        
        p {
            margin-bottom: 20px;
        }
        
        .section-title {
            font-size: 18px;
            font-weight: bold;
            margin-top: 30px;
            margin-bottom: 10px;
            text-align: left;
        }
        
        .section-content {
            margin-left: 20px;
            text-align: left;
        }
        
    </style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/e402926c7b.js" crossorigin="anonymous"></script> 
</head>
<body>
	<%@include file="../../index/include/header.jsp" %>
	
	<section class = "quick-page">
      <div class = "quick-bg">
        <h3>Prime Cube</h3>
        <h2>개인정보보호정책 & 개인정보처리방침</h2>
        <div class = "line">
          <div></div>
          <div></div>
          <div></div>
        </div>
        <p class = "text">Prime Cube는 개인정보 보호정책을 준수하며 아래와 같이 보호 받을 수 있음을 알려드립니다.</p>
        <p class = "text">Prime Cube는 아래와 같은 이유로 개인정보 처리에 대한 안내를 드립니다.</p>
      </div>
    </section>
    
    <section class="pp">
    <div class="container">
        <div class="columns">
          <div class="card">
          <h2>저희가 수집하는 정보</h2>
          <p>Prime Cube에서는 귀하가 당사 웹사이트에서 주문할 때 귀하의 이름, 이메일 주소, 배송 주소와 같은 개인 정보를 수집할 수 있습니다. 또한 분석 목적으로 귀하의 IP 주소 및 브라우저 유형과 같은 비개인 정보를 수집합니다.</p>
          </div>
        </div>

        <div class="columns">
          <div class="card">
            <h2>귀하의 정보를 사용하는 방법</h2>
            <p>당사가 수집한 개인 정보는 귀하의 주문을 처리하고, 주문에 대해 귀하와 소통하고, 귀하에게 개인화된 쇼핑 경험을 제공하는 데 사용됩니다. 당사는 마케팅 목적으로 귀하의 정보를 사용할 수도 있지만 귀하는 언제든지 마케팅 커뮤니케이션 수신을 거부할 수 있습니다.</p>
          </div>
        </div>

        <div class="columns">
          <div class="card">
            <h2>개인정보 공유 방침</h2>
            <p>당사는 귀하에게 당사 제품 및 서비스를 제공하는 데 도움을 주는 제3자 서비스 제공업체와 귀하의 개인 정보를 공유할 수 있습니다. 당사는 귀하의 개인 정보를 마케팅 목적으로 제3자에게 판매, 거래 또는 대여하지 않습니다.</p>
          </div>
        </div>

        <div class="columns">
          <div class="card">
            <h2>보안 방침</h2>
            <p>당사는 귀하의 개인 정보를 보호하고 개인 정보가 분실, 오용 또는 승인 없이 액세스되지 않도록 합당한 예방 조치를 취합니다. 그러나 인터넷이나 전자 저장 방법을 통한 데이터 전송은 100% 안전하지 않으므로 절대적인 보안을 보장할 수 없습니다.</p>
          </div>
        </div>

        <div class="columns">
          <div class="card">
            <h2>쿠키</h2>
            <p>Prime Cube 쿠키를 사용하여 브라우징 경험을 향상하고 개인화된 권장 사항을 제공합니다. 브라우저 설정에서 쿠키를 비활성화할 수 있지만 쿠키가 없으면 당사 웹사이트의 일부 기능이 제대로 작동하지 않을 수 있습니다.</p>
          </div>
        </div>

        <div class="columns">
          <div class="card">
            <h2>다른 웹사이트의 링크</h2>
            <p>당사 웹사이트에는 타사 웹사이트에 대한 링크가 포함될 수 있습니다. 당사는 해당 웹사이트의 콘텐츠 및 개인 정보 보호 관행을 통제할 수 없으며 귀하가 해당 웹 사이트를 방문하는 동안 제공한 정보의 보호 및 개인 정보 보호에 대해 책임을 지지 않습니다.</p>
          </div>
        </div>

        <div class="columns">
          <div class="card">
            <h2>개인정보 보호정책 변경</h2>
            <p>당사는 사전 통지 없이 언제든지 이 개인 정보 보호 정책을 업데이트하거나 수정할 수 있는 권리를 보유합니다. 변경 후에도 Prime Cube를 계속 사용하면 개정된 개인정보 보호정책에 동의하는 것입니다.</p>
          </div>
        </div>

        <div class="columns">
          <div class="card">
            <h2>문의하기</h2>
            <p>당사 웹사이트에는 타사 웹사이트에 대한 링크가 포함될 수 있습니다. 당사는 해당 웹사이트의 콘텐츠 및 개인 정보 보호 관행을 통제할 수 없으며 귀하가 해당 웹 사이트를 방문하는 동안 제공한 정보의 보호 및 개인 정보 보호에 대해 책임을 지지 않습니다.</p>
          </div>
        </div>

    </div>
  </section>
	
	<%@include file="../../index/include/footer.jsp" %>
</body>
</html>