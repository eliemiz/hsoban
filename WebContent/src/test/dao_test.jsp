<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="java.net.*" import="hsoban.dao.*" import="hsoban.vo.*" %>
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
	<%
	Dao_Temp dao = new Dao_Temp();
	ArrayList<Temp> tempList = dao.getTempList();
	%>
<body>
	<table>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>주소</th>
		</tr>		
		<%
		for (Temp temp : tempList){
		%>
		<tr>
			<td class="td_center"><%=temp.getId() %></td>
			<td class="td_center"><%=temp.getName() %></td>
			<td class="td_center"><%=temp.getAddress() %></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>