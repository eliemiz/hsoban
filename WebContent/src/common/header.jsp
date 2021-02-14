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
<link rel="stylesheet" href="/hsoban/css/allCommon.css">
<link rel="stylesheet" href="/hsoban/css/common.css">
<style>
.menu{cursor:pointer;}
</style>
<meta charset="UTF-8">
<title>header</title>
</head>
<script type="text/javascript">
function showSub(){
   var sub = document.querySelector('.sub');
      if (sub.style.display == 'block'){
         sub.style.display = 'none';
      }else {
         sub.style.display = 'block';
      }
}
</script>
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
		<li class="menu" onclick="showSub()"><a>SHOP</a>
		   <ul class="sub">
                <li><a href="/hsoban/src/shop/shop1_Bowl/Bowl_main.jsp">Bowl</a></li>
		        <li><a href="/hsoban/src/shop/shop2_PlateDish/PlateDish_main.jsp">Plate.Dish</a></li>
		        <li><a href="/hsoban/src/shop/shop3_NoodleBowl/NoodleBowl_main.jsp">Noodle Bowl</a></li>
		        <li><a href="/hsoban/src/shop/shop4_SideBowl/SideBowl_main.jsp">Side Bowl</a></li>
		        <li><a href="/hsoban/src/shop/shop5_Cup/Cup_mian.jsp">Cup</a></li>
		        <li><a href="/hsoban/src/shop/shop6_Others/Others_main.jsp">Others</a></li>
		        <li><a href="/hsoban/src/shop/shop7_Set/Set1_main.jsp">Set</a></li>		    
		   </ul>
		</li>
 		<li class="menu"><a href="/hsoban/src/board/review_board.jsp">REVIEW</a></li>
		<li class="menu"><a href="/hsoban/src/board/inquiry_board.jsp">Q&amp;A</a></li>
		<li class="menu"><a href="/hsoban/src/board/notice_board.jsp">NOTICE</a></li>
	    </ul>
    </div>
  </div>
</div>
</body>
</html>