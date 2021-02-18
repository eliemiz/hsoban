<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="java.net.*"
	import="hsoban.dao.*" import="hsoban.vo.*"%>
<% request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=path%>/css/common.css">
<style>

</style>
</head>
	<%
		// 변수 선언
		String product_id = request.getParameter("product_id");
		if (product_id == null || product_id.trim().equals("")){
			product_id = "";
		}
		
		// 목록 불러오기
		Dao_Qna dao = new Dao_Qna();
		ArrayList<Qna> qlist;
		if (product_id == ""){
			qlist = dao.getQnaList();
		} else {
			qlist = dao.getQnaList(Integer.parseInt(product_id));	
		}
	%>
<body>
	<form method="post" id="qnaForm">
		<table>
			<tr>
				<th>product_id</th>
				<td><input type="text" name="product_id" value="<%=product_id%>"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="검색" id="searchButton" class="btn btn_thatch">
			</td>
		</table>
	</form>
	<table id="qnaList">
		<tr>
			<th>product_id</th>
			<th>qna_id</th>
			<th>color</th>
			<th>title</th>
			<th>content</th>
			<th>account_id</th>
			<th>posting_date</th>
			<th>views</th>
			<th>attach</th>
			<th>prev_id</th>
			<th>next_id</th>
		</tr>
		<%
		for (Qna qna : qlist){
		%>		
		<tr onclick="callDetail(<%=qna.getProduct_id() %>)">				
			<td><%=qna.getProduct_id() %></td>
			<td><%=qna.getQna_id() %></td>
			<td><%=qna.getColor() %></td>
			<td><%=qna.getTitle() %></td>
			<td><%=qna.getContent() %></td>
			<td><%=qna.getAccount_id() %></td>
			<td><%=qna.getPosting_date_s() %></td>
			<td><%=qna.getViews() %></td>
			<td><%=qna.getAttach() %></td>
			<td><%=qna.getPrev_id() %></td>
			<td><%=qna.getNext_id() %></td>
		</tr>
		<%
		}
		%> 
	</table>
</body>
<script type="text/javascript">
	var searchButton = document.querySelector('#searchButton');
	searchButton.onclick = function() {
		var qna_id = document.querySelector('[name=product_id]');
		// 유효성 체크
		if (isNaN(product_id.value)){
			alert('숫자를 입력해주세요.');
			return false;
		}
		
		document.querySelector('#qnaForm').submit();
	}

	function callDetail(){
		var url = "qna_detail.jsp?";
		url += "product_id=" + arguments[0];
		url += "&qna_id=" + arguments[1];
		url += "&title=" + arguments[2];		
		location.href = url;
	}
	
</script>
</html>
