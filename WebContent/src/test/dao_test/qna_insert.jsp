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
	
	// 변수 선언
		String product_id = request.getParameter("product_id");
		String color = request.getParameter("color");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String account_id = request.getParameter("account_id");
		String posting_date_s = request.getParameter("posting_date_s");
		String views = request.getParameter("views");
		String attach = request.getParameter("attach");
		String prev_id = request.getParameter("prev_id");
		String next_id = request.getParameter("next_id");
	
	// validate
	if (product_id == null || product_id.trim().equals("")) {
		product_id = "0";
	}
	if (color == null) {
		color = "";
	}
	if (title == null) {
		title = "";
	}
	if (content == null) {
		content = "";
	}
	if (account_id == null || account_id.trim().equals("")) {
		account_id = "0";
	}
	if (posting_date_s == null) {
		posting_date_s = "";
	}
	if (views == null || views.trim().equals("")) {
		views = "0";
	}
	if (attach == null) {
		attach = "";
	}
	if (prev_id == null || prev_id.trim().equals("")) {
		prev_id = "0";
	}
	if (next_id == null || next_id.trim().equals("")) {
		next_id = "0";
	}
	
	// insert
	if (product_id != "0"){
		Qna qna = new Qna(Integer.parseInt(product_id), color, title, content, Integer.parseInt(account_id), posting_date_s, 
				Integer.parseInt(views), attach, Integer.parseInt(prev_id), Integer.parseInt(next_id));
		
		Dao_Qna dao = new Dao_Qna();
		dao.insertQna(qna);		
		
		response.sendRedirect("qna_list.jsp");
	}
	
	%>
<body>
	<form method="post" id="qnaForm">
 <table>
		
		<tr>
			<th>product_id</th>
			<td><input type="text" name="product_id"></td>
		</tr>	
		<tr>	
			<th>color</th>
			<td><input type="text" name="color"></td>
		</tr>	
		<tr>	
			<th>title</th>
			<td><input type="text" name="title"></td>
		</tr>	
		<tr>			
			<th>content</th>
			<td><input type="text" name="content"></td>
		</tr>	
		<tr>	
			<th>account_id</th>
			<td><input type="text" name="account_id"></td>
		</tr>	
		<tr>	
			<th>posting_date_s</th>
			<td><input type="text" name="posting_date_s"  placeholder="YYYY-MM-DD"></td>
		</tr>	
		<tr>	
			<th>views</th>
			<td><input type="text" name="views"></td>
		</tr>	
		<tr>	
			<th>attach</th>
			<td><input type="text" name="attach"></td>
		</tr>
		<tr>	
			<th>prev_id</th>
			<td><input type="text" name="prev_id"></td>
		</tr>
		<tr>	
			<th>next_id</th>
			<td><input type="text" name="next_id"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" value="입력" class="btn btn_thatch" id="insertButton">
			</td>
	   </tr>
   </table>
	</form>
</body>
<script type="text/javascript">
	var insertButton = document.querySelector('#insertButton');
	insertButton.onclick = function() {
		var qnaForm = document.querySelector('#qnaForm');
		var product_id = document.querySelector('[name=product_id]');
		var color = document.querySelector('[name=color]');
		var title = document.querySelector('[name=title]');
		var content = document.querySelector('[name=content]');
		var account_id = document.querySelector('[name=account_id]');
		var posting_date = document.querySelector('[name=posting_date_s]');
		var views = document.querySelector('[name=views]');
		var attach = document.querySelector('[name=attach]');
		var prev_id = document.querySelector('[name=prev_id]');
		var next_id = document.querySelector('[name=next_id]');
		// 유효성 체크
		if (isNaN(product_id.value) || isNaN(account_id.value) || 
				isNaN(views.value) || isNaN(prev_id.value) || isNaN(next_id.value)){
			alert('숫자를 입력하세요');
			return false;
		}
		if ((color.value)==null ||(color.value)==""){
			alert('글자를 입력하세요');
			return false;
		}
		if ((title.value)==null ||(title.value)==""){
			alert('글자를 입력하세요');
			return false;
		}
		if ((content.value)==null ||(content.value)==""){
			alert('글자를 입력하세요');
			return false;
		}
		
		qnaForm.submit();
	}
</script>
</html>