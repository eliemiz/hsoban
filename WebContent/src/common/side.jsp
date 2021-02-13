<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" %>
<% 
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/hsoban/css/side.css">
<meta charset="UTF-8">
<title>사이드바</title>
<style>
 #sidebar {
        width: 200px;
        height: 890px;
        padding: 20px;
        margin-bottom: 20px;
        float: right;
        border: 1px solid #bcbcbc;
      }
 .my-box { border:1px solid; padding:10px; }
</style>
</head>

<body>
	<div id="scroll-right">
	<div id="side-menu-wrap">
		<div class="side-menu">
                    <img src="<%=path%>/img/common/sidelogo.jpg" alt="hsoban">
			<div class="board-btn div-wrap">
				<a href="/hsoban/src/board/notice_board.jsp">NOTICE</a>
				<a href="/hsoban/src/board/inquiry_board.jsp">Q&amp;A</a>
				<a href="/hsoban/src/board/review_board.jsp">REVIEW</a>
				<a href="javascript:CreateBookmarkLink('http://www.hsobanmall.com', '화소반 그릇 공식 쇼핑몰');">FAVORITES</a> 
				<!-- 북마크 등록 -->
			</div>
			<div class="side-cs-center div-wrap"><img src="<%=path%>/img/common/side_banner1.jpg" alt="cscenter"></div>
			<div class="side-bank-info div-wrap"><img src="<%=path%>/img/common/side_banner2.jpg" alt="bank"></div>
		</div>

		<div class="right-btn">
                    <i class="fa rotate" aria-hidden="true"><img src="<%=path%>/img/common/side_right.png" alt="hide"></i>
                    <b></b>
             </div>
     	   </div>       
        </div>

</body>
</html>