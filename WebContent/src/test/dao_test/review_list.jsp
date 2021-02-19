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
		// 변수 선언
		String reivew_id = request.getParameter("reivew_id");
		if (reivew_id == null || reivew_id.trim().equals("")){
			reivew_id = "";
		}
		String product_id = request.getParameter("product_id");
		if (product_id == null || product_id.trim().equals("")){
			product_id = "";
		}
		
		// 목록 불러오기
		Dao_Review dao = new Dao_Review();
		ArrayList<Review> rlist;
		if (product_id  == ""){
			rlist = dao.getReviewList();
		} else {
			rlist = dao.getReviewList(Integer.parseInt(product_id));	
		}
	%>
<body>
	<form method="post" id="reviewForm">
		<table>
			<tr>
				<th>product_id</th>
				<td><input type="text" name="product_id" value="<%=product_id%>"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="검색" id="searchButton" class="btn btn_thatch">
				<input type="button" value="새 데이터 입력" id="insertButton" class="btn btn_black" onclick="location.href='review_insert.jsp'">
			</td>
		</table>
	</form>
	<table id="reviewList">
		<tr>
			<th>review_id</th>
			<th>product_id</th>
			<th>color</th>
			<th>title</th>
			<th>content</th>
			<th>account_id</th>
			<th>posting_date</th>
			<th>views</th>
			<th>attach</th>
		</tr>
		<%
		for (Review review : rlist){
		%>		
		<tr onclick="callDetail(<%=review.getReview_id() %>)">				
			<td><%=review.getReview_id() %></td>
			<td><%=review.getProduct_id() %></td>
			<td><%=review.getColor() %></td>
			<td><%=review.getTitle() %></td>
			<td><%=review.getContent() %></td>
			<td><%=review.getAccount_id() %></td>
			<td><%=review.getPosting_date() %></td>
			<td><%=review.getViews() %></td>
			<td><%=review.getAttach() %></td>
		</tr>
		<%
		}
		%> 
	</table>
</body>
<script type="text/javascript">
	var searchButton = document.querySelector('#searchButton');
	searchButton.onclick = function() {
		var product_id = document.querySelector('[name=product_id]');
		// 유효성 체크
		if (isNaN(product_id.value)){
			alert('숫자를 입력해주세요.');
			return false;
		}
		
		document.querySelector('#reviewForm').submit();
	}

	function callDetail(review_id){
		var url = "review_detail.jsp?";
		url += "review_id=" + review_id;	
		location.href = url;
	}
	
</script>
</html>
