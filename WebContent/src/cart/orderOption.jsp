<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="java.net.*"
	import="hsoban.vo.*" import="hsoban.dao.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선택사항 변경/추가하기</title>
<link rel="stylesheet" href="<%=path%>/css/common.css">
<link rel="stylesheet" href="<%=path%>/css/cart.css">
<link rel="stylesheet" href="<%=path%>/css/cartOption.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<body>
	<div class="modify_option_wrap">
		<div class="modify_option_title">
			선택사항 변경/추가하기
		</div>
		<div class="modify_option_product">
			<div class="modify_option_name_wrap clear_fix">
				<div class="modify_option_thumbnail">
					<img src="<%=path%>/img/cart/temp.jpg" class="thumbnail_m">
				</div>
				<div class="modify_option_name">
					국그릇<br><span class="c_red">34,000원</span>		
				</div>
			</div>
			<div class="modify_option_color_wrap">
				<table class="modify_option_color">
					<colgroup>
						<col width="50px">
						<col width="*">
					</colgroup>
					<tr>
						<td class="td_center">color</td>
						<td class="td_center">
							<select class="option_color">
								<option>옵션 선택</option>
								<option>블랙</option>
								<option>베이지</option>
								<option>그린(유광)</option>
							</select>
						</td>
					</tr>
				</table>
			</div>
			<div class="modify_option_count_wrap">
				<table class="modify_option_count">
					<colgroup>
						<col width="*">
						<col width="60px">
						<col width="60px">
						<col width="10px">
					</colgroup>
					<tr>
						<td>블랙</td>
						<td><input type="number" class="option_count" value="1"></td>
						<td class="option_price">30,000원</td>
						<td><img src="<%=path%>/img/cart/btn_comment_del.gif"></td>
					</tr>
					<tr>
						<td>그린(유광)</td>
						<td><input type="number" class="option_count" value="1"></td>
						<td class="option_price">30,000원</td>
						<td><img src="<%=path%>/img/cart/btn_comment_del.gif"></td>
					</tr>
				</table>
			</div>
		</div>
		<div class="modify_option_button_wrap">
			<form>
				<input type="button" value="변경하기" class="btn btn_option btn_modify" onclick="window.close()">
				<input type="button" value="취소" class="btn btn_option btn_cancel" onclick="window.close()">
				<input type="button" onclick="test()">
			</form>
		</div>
	</div>
</body>
<script type="text/javascript">
	function test(){
		opener.location.href="https://www.naver.com";
	}
</script>
</html>