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
</head>
<%
//변수 선언 for 페이지 로드
		
		String review_id = request.getParameter("review_id");

		
		// validate
		
		if (review_id == null || review_id.trim().equals("")) {
			review_id = "0";
		}

		
		Dao_Review dao = new Dao_Review();
		Review review = dao.getReview(Integer.parseInt(review_id));
		
		String process = request.getParameter("process");
		if (process == null) {
			process = "";
		}
		if (process.equals("delete")) {
			
			// delete
			dao.deleteReview(Integer.parseInt(review_id));
			response.sendRedirect("review_list.jsp");
		}
%>

<body>
<form method="post" id="reviewForm">
<input type="hidden" name="process" value="">
  <table>
		<tr>
			<th>review_id</th>
			<td><input type="text" name="review_id" value="<%=review.getReview_id() %>"disabled></td>
		</tr>	
		<tr>
			<td colspan="2">
				<input type="submit" value="수정" id="updateButton"disabled>
				<input type="submit" value="삭제" id="deleteButton">
				<input type="button" value="리스트로 이동" onclick="location.href='review_list.jsp'">
			</td>
	   </tr>
   </table>
</form>
</body>
<script type="text/javascript">
	var reviewForm = document.querySelector('#reviewForm');
	var process = document.querySelector('[name=process]');
	var updateButton = document.querySelector('#updateButton');
	var deleteButton = document.querySelector('#deleteButton');
	

	deleteButton.onclick = function() {
		process.value = 'delete';
		if (confirm('정말 삭제하시겠습니까?')){
			reviewForm.submit();	
		} 
	}
</script>
</html>