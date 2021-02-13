<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" %>
<% 
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/hsoban/css/header.css">
<style>
#headerWrap{border-bottom:none !important;}
</style>
<meta charset="UTF-8">
<title>header</title>
</head>
<body>
		<div id="headerWrap">
    <div class="logo_wrap"><h1><a href="/hsoban/src/main/main.jsp"><img src="<%=path%>/img/common/logo.png" alt="hsoban" /></a></h1></div>
    <div class="topWrap">
        <div class="utillMenu">
            <ul class="hd-cate">
                                <li><a href="/hsoban/src/login/login.jsp">LOGIN</a></li>
                <li><a href="/hsoban/src/login/signup.jsp">JOIN</a></li>
                                <li><a href="/hsoban/src/cart/cart.jsp">CART</a></li>
                <li><a href="/hsoban/src/mypage/mypage_myOrder.jsp">ORDER</a></li>
            </ul>
	</div>

        <div class="gnb">
	    <ul class="gnb-list clear">
		<li class="menu"><a href="/hsoban/src/main/main.jsp">HOME</a>
		<li class="menu"><a href="/hsoban/src/shop/shop1_Bowl/Bowl_main.jsp">SHOP</a>
		   <!--  <ul class="ul로 select " >
                                        <li><a href=" ">Bowl</a></li>
		                                <li><a href=" ">Plate.Dish</a></li>
		                                <li><a href=" ">Noodle Bowl</a></li>
		                                <li><a href=" ">Side Bowl</a></li>
		                                <li><a href=" ">Cup</a></li>
		                                <li><a href=" ">Others</a></li>
		                                <li><a href=" ">Set</a></li>
		                                <li><a href=" ">Event</a></li>
		        		    </ul> -->
		</li>
 		<li class="menu"><a href="/hsoban/src/board/review_board.jsp">REVIEW</a>
		<li class="menu"><a href="/hsoban/src/board/inquiry_board.jsp">Q&amp;A</a>
		<li class="menu"><a href="/hsoban/src/board/notice_board.jsp">NOTICE</a>
	    </ul>
        </div>
    </div>
</div>
</body>
</html>