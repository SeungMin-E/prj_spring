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
<title>Prime Cube | 이용약관</title>
<link rel="stylesheet" href="../../resources/css/project_nsa/user/UserPage.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"> 
</head>
<body>
	<%@include file="../../index/include/header.jsp" %>
	
	<section class = "quick-page">
        <div class = "quick-bg">
          <h3>Prime Cube</h3>
          <h2>이용약관</h2>
          <div class = "line">
            <div></div>
            <div></div>
            <div></div>
          </div>
          <p class = "text">Prime Cube에 오신걸 환영합니다. 저희 사이트를 이용하실 때 확인하셔야할 이용약관입니다.</p>
          <p class = "text">아래의 내용을 위반하시면 저희 사이트에서 불이익을 받을 수 있으니 확인하시면 감사하겠습니다.</p>
        </div>
    </section>
    
    <section class="tc flex_align_justify">
        <div class="tc_wrap">
            <div class="tabs_list">
              <ul>
                <li data-tc="tab_item_1" class="active">지적 재산권</li>
                <li data-tc="tab_item_2">라이선스 사용</li>
                <li data-tc="tab_item_3">부인설명</li>
                <li data-tc="tab_item_4">책임의 한계</li>
                <li data-tc="tab_item_5">보증</li>
                <li data-tc="tab_item_6">이용약관 변경 정책</li>
                <li data-tc="tab_item_7">문의</li>
              </ul>
            </div>
            <div class="tabs_content">
               <div class="tab_head">
                 <h2>Prime Cube | 이용약관</h2>
               </div>
               <div class="tab_body">
                 <div class="tab_item tab_item_1">
                     <h3>지적 재산권</h3>
                     <p>텍스트, 그래픽, 이미지 및 로고를 포함하되 이에 국한되지 않는 Prime Cube의 콘텐츠는 Prime Cube의 지적 재산이며 해당 법률에 의해 보호됩니다.</p>
                 </div>
                 <div class="tab_item tab_item_2" style="display: none;">
                     <h3>라이선스 사용</h3>
                    <p>귀하는 개인적, 비상업적 목적으로 Prime Cube의 콘텐츠에 액세스하고 사용할 수 있는 제한된 라이선스를 부여받습니다. 당사의 명시적인 허가 없이 콘텐츠를 재생산, 수정, 배포 또는 판매해서는 안 됩니다.</p>
                 </div>
                 <div class="tab_item tab_item_3"  style="display: none;">
                     <h3>부인설명</h3>
                     <p>Prime Cube에서 제공되는 정보는 일반적인 정보 제공의 목적으로만 사용됩니다. 당사는 정보의 정확성, 신뢰성 또는 가용성에 대해 명시적이든 묵시적이든 어떠한 종류의 진술이나 보증도 하지 않습니다. 그러한 정보에 의존하는 것은 전적으로 귀하의 책임입니다.</p>
                 </div>
                 <div class="tab_item tab_item_4"  style="display: none;">
                     <h3>책임의 한계</h3>
                     <p>어떠한 경우에도 Prime Cube는 당사 온라인 서점 또는 제공된 콘텐츠의 사용으로 인해 또는 이와 관련하여 발생하는 직접적, 간접적, 부수적, 결과적 또는 특수한 손해에 대해 책임을 지지 않습니다.</p>
                 </div>
                 <div class="tab_item tab_item_5"  style="display: none;">
                     <h3>보증</h3>
                     <p>본 약관 위반시 귀하는 귀하의 Prime Cube 또는 그 사용과 관련하여 발생하는 모든 청구, 책임, 손해, 손실 또는 비용에 대해 Prime Cube 및 그 계열사, 임원, 이사, 직원 및 대리인을 면책하고 무해하게 유지하는 데 동의합니다.</p>
                 </div>
                 <div class="tab_item tab_item_6"  style="display: none;">
                    <h3>이용약관 변경 정책</h3>
                    <p>당사는 사전 통지 없이 언제든지 이러한 이용 약관을 업데이트하거나 수정할 수 있는 권리를 보유합니다. 변경 후에도 Prime Cube를 계속 사용하면 개정된 약관에 동의하는 것입니다.</p>
                </div>
                <div class="tab_item tab_item_7 "  style="display: none;">
                    <h3>문의</h3>
                    <p>본 이용 약관과 관련하여 질문이나 우려 사항이 있는 경우 rainy2368@gmail.com으로 문의하십시오.</p>
                    <div class="tab_foot flex_align_justify">
                        <button class="decline">
                          거절
                        </button>
                        <button class="agree">
                          동의
                        </button>
                      </div>
                </div>
               </div>
            </div>
        </div>
    </section>

    <%@include file="../../index/include/footer.jsp" %>
    
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script src="../../../resources/js/project_nsa/user/script.js"></script>
    	<script>
		var tab_lists = document.querySelectorAll(".tabs_list ul li");
		var tab_items = document.querySelectorAll(".tab_item");

		tab_lists.forEach(function(list) {
			list.addEventListener("click", function() {
				var tab_data = list.getAttribute("data-tc");

				tab_lists.forEach(function(list) {
					list.classList.remove("active");
				});
				list.classList.add("active");

				tab_items.forEach(function(item) {
					var tab_class = item.getAttribute("class").split(" ");
					if (tab_class.includes(tab_data)) {
						item.style.display = "block";
					} else {
						item.style.display = "none";
					}

				})

			})
		})
	</script>

</body>
</html>