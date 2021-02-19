<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="java.net.*" import="hsoban.vo.*" import="hsoban.dao.*" %>
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
#commentList tr:first-child:hover {
	cursor: auto;
}

#commentList tr:hover {
	background-color: #f7f7f7;
	cursor: pointer;
}

#commentList tr:active {
	background-color: #f0f0f0;
}

body {
	width: 90%;
	margin: auto;
	padding-top: 50px;
}
</style>
</head>
	<%
		// 변수 선언
		String review_id = request.getParameter("review_id");
		if (review_id == null || review_id.trim().equals("")){
			review_id = "";
		}
		
		// 목록 불러오기
		Dao_Comments dao = new Dao_Comments();
		ArrayList<Comments> list;
		
		// #2. account_id == ""이기 때문에 전체 리스트를 로드한다.
		// #7. account_id를 가지고 있기 때문에 account_id를 이용해 리스트를 조회한다.
		if (review_id == ""){
			list = dao.getCommentsList();
		} else {
			list = dao.getCommentsList(Integer.parseInt(review_id));	
		}
	%>
<body>
	<form method="post" id="commentForm">
		<table>
			<tr>
				<th>review_id</th>
				<td><input type="text" name="review_id" value="<%=review_id%>"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="검색" id="searchButton" class="btn btn_thatch">
					<input type="button" value="새 데이터 입력" id="insertButton" class="btn btn_black" onclick="location.href='comment_insert.jsp'">
				</td>
			</tr>
		</table>
	</form>
	<table id="commentList">
		<tr>
			<th>comment_id</th>
			<th>review_id</th>
			<th>id</th>
			<th>pass</th>
			<th>content</th>
		</tr>
		<%
		for (Comments comment : list){
		%>
		
		<%-- #9. 테이블의 행을 클릭하면 특정 값들을 가진 채 script의 callDetail() 메서드를 실행한다. --%>
		<tr onclick="callDetail(<%=comment.getComment_id()%>)">	
			<td><%=comment.getComment_id() %></td>
			<td><%=comment.getReview_id() %></td>
			<td><%=comment.getId() %></td>
			<td><%=comment.getPass() %></td>
			<td><%=comment.getContent() %></td>
		</tr>
		<%
		}
		%> 
	</table>
</body>
<script type="text/javascript">
	 
	var searchButton = document.querySelector('#searchButton');
	searchButton.onclick = function() {
		var review_id = document.querySelector('[name=review_id]');
		
		// 유효성 체크
		if (isNaN(review_id.value)){
			alert('숫자를 입력해주세요.');
			return false;
		}
		
		document.querySelector('#commentForm').submit();
	}

	function callDetail(comment_id){
		var url = "comment_detail.jsp?";
		url += "comment_id=" + comment_id;
		location.href = url;
	}
	
</script>
</html>