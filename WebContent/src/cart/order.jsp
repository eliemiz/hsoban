<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="java.net.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=path%>/css/common.css">
<link rel="stylesheet" href="<%=path%>/css/cart.css">
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	
	<div class="cart_title clear_fix">
		주문/결제
	</div>
	
	<div class="cart_wrap clear_fix">
		주문 리스트
	</div>
	
	<div class="cart_wrap clear_fix">
		주문자 정보
	</div>
	
	<div class="cart_wrap clear_fix">
		배송 정보
	</div>
	
	<div class="cart_wrap clear_fix">
		주문상품 할인적용
	</div>
	
	<div class="cart_wrap clear_fix">
		결제 정보
	</div>
	
	<div class="cart_wrap clear_fix">
		주문자 동의
	</div>
	
	<div>
		최종 결제 금액
	</div>
	
	<div>
		주문하기, 주문취소
	</div>
	
	
	
	
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>