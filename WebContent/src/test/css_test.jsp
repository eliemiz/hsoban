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
</head>
<body>
	
	링크 테스트 : <a href="https://www.naver.com">네이버</a>
	<hr>
	
	<div class="clear_fix">
		clear_fix 테스트<br>
		<span style="float: left;">span1</span>
		<span style="float: left;">span2</span>
		<span style="float: left;">span3</span>
	</div>
	
	<hr>
	<div class="c_thatch">글자 색을 #bba59b 색으로</div>
	<div class="b_thatch">배경 색을 #bba59b 색으로</div>
	<hr>
	
	<input type="text">
	<input type="password">
	<input type="email">
	<input type="number">
	<br>
	
	<input type="button" value="button">
	<input type="submit" value="submit">
	<br>
	
	<input type="button" value="button with class" class="btn">
	<input type="button" value="button with class" class="btn btn_normal">
	<input type="button" value="button with class" class="btn btn_thatch">
	<input type="button" value="button with class" class="btn btn_black">
	<hr>
	
	<table>
		<tr>
			<th>제목1</th>
			<th>제목2</th>
			<th>제목2</th>
		</tr>
		<tr>
			<td class="td_center">문장</td>
			<td class="td_center">문장2</td>
			<td>엄~~~~~~~~~~~~~~~~청나게 긴 문장</td>
		</tr>
		<tr>
			<td class="td_center">문장</td>
			<td class="td_center">문장2</td>
			<td>엄~~~~~~~~~~~~~~~~청나게 긴 문장</td>
		</tr>
		<tr>
			<td class="td_center">문장</td>
			<td class="td_center">문장2</td>
			<td>엄~~~~~~~~~~~~~~~~청나게 긴 문장</td>
		</tr>
	</table>
	
</body>
</html>