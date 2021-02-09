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
	<!-- allCommon.css파일을 쓰지 않고 common.css 파일을 쓰는 코드는 jsp:include하는 코드를 제외하는 모든 코드를 
		<div class="content_wrap"></div>으로 감싸주시면 됩니다.
		
		content_wrap 클래스 역할
		1. 본문 내용의 너비를 1200px로 제한함.
		2. 창 크기가 1200px 이상이 될 경우 자동으로 윈도우의 중앙으로 정렬됨
		3. 창 크기가 1200px 미만이 될 경우 너비를 자동으로 100%로 조정해, 구현한 모든 내용이 윈도우에 표현되도록 전체적 너비가 점차 축소됨.
		
		footer.css에서 body의 width를 100%로 조정해, 화소반 페이지처럼 footer의 너비가 윈도우 전체가 되도록 수정
	 -->
	<div class="content_wrap" style="padding:50px 0px;">
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
	</div>
	<div style="background-color:#ececec; height: 400px;">footer 대용</div>

</body>
</html>