<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*"
	import="hsoban.dao.*" import="hsoban.vo.*"%>
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
<style type="text/css">
#cartList tr:first-child:hover {
	cursor: auto;
}

#cartList tr:hover {
	background-color: #f7f7f7;
	cursor: pointer;
}

#cartList tr:active {
	background-color: #f0f0f0;
}

</style>
</head>
 <%
 Dao_Withdraw_account dao = new Dao_Withdraw_account();
 ArrayList<Withdraw_account> wlist = dao.getWithdraw_accountList();
 %>
<body>
	<table id="cartList">
		<tr>
			<th>account_id</th>
			<th>reason</th>
			<th>withdraw_date</th>
		</tr>
		<%
		for (Withdraw_account list : wlist){
		%>
		
		<tr>	
			<td><%=list.getAccount_id()%></td>
			<td><%=list.getReason() %></td>
			<td><%=list.getWithdraw_date() %></td>
		</tr>
		<%
		}
		%> 
	</table>
	<tr>
			<td colspan="3">
					<input type="button" value="새 데이터 입력" id="insertButton" class="btn btn_black" onclick="location.href='withdraw_account_insert.jsp'">
				</td>
			</tr>
</body>
<script type="text/javascript">

</script>
</html>
