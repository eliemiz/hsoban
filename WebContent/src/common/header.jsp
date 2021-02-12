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
<meta charset="UTF-8">
<title>header</title>
</head>
<body>
		<div id="headerWrap">
    <div class="logo_wrap"><h1><a href="../main/main.jsp"><img src="<%=path%>/img/common/logo.png" alt="hsoban" /></a></h1></div>
    <div class="topWrap">
        <div class="utillMenu">
            <ul class="hd-cate">
                                <li><a href=" 로그인 ">LOGIN</a></li>
                <li><a href=" 회원 정보">JOIN</a></li>
                                <li><a href=" 장바구니 ">CART</a></li>
                <li><a href=" 주문정보(없을시 로그인) ">ORDER</a></li>
            </ul>
	</div>

        <div class="gnb">
	    <ul class="gnb-list clear">
		<li class="menu"><a href="/">HOME</a>
		<li class="menu"><a href="/shop/shopbrand.html?xcode=001&type=O">SHOP</a>
		   <!--  <ul class="ul로 select 히든박스 만들어야함 " >
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
 		<li class="menu"><a href="../board/review_board.jsp">REVIEW</a>
		<li class="menu"><a href="../board/inquiry_board.jsp">Q&amp;A</a>
		<li class="menu"><a href="../board/notice_board.jsp">NOTICE</a>
	    </ul>
        </div>

    </div>
</div>
</body>
</html>