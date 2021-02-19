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
<style type="text/css">
body {
	width: 90%;
	margin: auto;
	padding-top: 50px;
}
</style>
</head>
	<%
		// 변수 선언 for 페이지 로드
		String comment_id = request.getParameter("comment_id");
				
		// validate
		if (comment_id == null) {
			comment_id = "";
		}
		
		Dao_Comments dao = new Dao_Comments();
		Comments comment = dao.getComments(Integer.parseInt(comment_id));
		
		String process = request.getParameter("process");
		if (process == null) {
			process = "";
		}

		// delete
		if (process.equals("delete")) {
			
			dao.deleteComments(Integer.parseInt(comment_id));
			response.sendRedirect("comment_list.jsp");
		}
	%>
<body>
	<form method="post" id="commentForm">
		<input type="hidden" name="process" value="">
		<table>
			<tr>
				<th>comment_id</th>
				<td><input type="text" name="comment_id" value="<%=comment.getComment_id()%>" disabled></td>
			</tr>
			<tr>
				<th>review_id</th>
				<td><input type="text" name="review_id" value="<%=comment.getReview_id()%>" disabled></td>
			</tr>
			<tr>
				<th>id</th>
				<td><input type="text" name="id" value="<%=comment.getId()%>" disabled></td>
			</tr>
			<tr>
				<th>pass</th>
				<td><input type="text" name="pass" value="<%=comment.getPass()%>" disabled></td>
			</tr>
			<tr>
				<th>content</th>
				<td><input type="text" name="content" value="<%=comment.getContent()%>" disabled></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="삭제" id="deleteButton" class="btn btn_black">
					<input type="button" value="리스트로 이동" onclick="location.href='comment_list.jsp'" class="btn btn_normal">
				</td>
			</tr>
		</table>
	</form>
</body>
<script type="text/javascript">
	var commentForm = document.querySelector('#commentForm');
	var process = document.querySelector('[name=process]');
	var deleteButton = document.querySelector('#deleteButton');
	
	deleteButton.onclick = function() {
		process.value = 'delete';
		if (confirm('정말 삭제하시겠습니까?')){
			commentForm.submit();	
		} 
	}
	
</script>
</html>