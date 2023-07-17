<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"  %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<div id="popup_remote">
          <div>
              <button type="button" class="btn btn-outline-primary" onclick="location.href='QandA.html'" style="width :150px; height: 100px;">
                  <i class="fa-regular fa-comment-dots fa-2xl"></i>
                 문의하기
              </button>
          </div>
          <div>
              <button type="button" class="btn btn-outline-success" style="width :150px; height: 100px;">
                  <i class="fa-solid fa-truck fa-2xl"></i>
                  배송현황
              </button>
          </div>
          <div>
              <button type="button" class="btn btn-outline-info" style="width :150px; height: 100px;">
                  <i class="fa-solid fa-cart-shopping fa-2xl"></i>
                  장바구니
              </button>
          </div>
          <div >
              <button type="button" class="btn btn-primary" onclick="window.scrollTo(0,0)" style="width :150px">TOP</button>
              <button type="button" class="btn btn-secondary" onclick="window.scrollTo(0,document.body.scrollHeight)" style="width :150px">BOTTOM</button>
          </div>
  </div>