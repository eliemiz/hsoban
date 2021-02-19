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
		String qna_id = request.getParameter("qna_id");
		// validate		
		if (qna_id == null || qna_id.trim().equals("")) {
			qna_id = "0";
		}
		
		Dao_Qna dao = new Dao_Qna();
		Qna qna = dao.getQna(Integer.parseInt(qna_id));
		
		// 변수 선언 for update
	   String product_id = request.getParameter("product_id");
	   if(product_id == null || product_id.trim().equals("")) {
	   product_id = "0";
	   }
	   String color = request.getParameter("color");
	   if(color==null){
		  color="";
	   }
	   String title = request.getParameter("title");
	   if(title==null){
	      title="";
	   }
	   String content = request.getParameter("content");
	   if(content==null){
	      content="";
	   }
	   String attach = request.getParameter("attach");
	   if(attach==null){
		   attach="";
	   }
	   String process = request.getParameter("process");
	   if (process == null) {
	       process = "";
	   }
	   
	   if(process.equals("update")){
		      // update  
		      Qna newQna = new Qna(Integer.parseInt(qna_id), Integer.parseInt(product_id), color, title, content, 
		    		  qna.getAccount_id(), qna.getPosting_date_s(), qna.getViews(), attach , qna.getPrev_id(), qna.getNext_id());
		     
		      dao.updateQna(newQna);
		    
		      response.sendRedirect("qna_list.jsp");
	   }else if (process.equals("delete")) {
			
			// delete
			dao.deleteQna(Integer.parseInt(qna_id));
			response.sendRedirect("qna_list.jsp");
	   }
%>

<body>
<form method="post" id="qnaForm">
<input type="hidden" name="process" value="">
  <table>
		<tr>
			<th>qna_id</th>
			<td><input type="text" name="qna_id" value="<%=qna.getQna_id() %>"disabled></td>
		</tr>
		<tr>
			<th>product_id</th>
			<td><input type="text" name="product_id" value="<%=qna.getProduct_id() %>"></td>
		</tr>
		<tr>
			<th>color</th>
			<td><input type="text" name="color" value="<%=qna.getColor() %>"></td>
		</tr>
		<tr>
			<th>title</th>
			<td><input type="text" name="title" value="<%=qna.getTitle() %>"></td>
		</tr>
	    <tr>
	    	<th>content</th>
	    	<td><input type="text" name="content" value="<%=qna.getContent() %>" ></td>
	    </tr>
	    <tr>
	    	<th>account_id</th>
	        <td><input type="text" name="account_id" value="<%=qna.getAccount_id() %>" disabled></td>
	    </tr>
	    <tr>
	    	<th>posting_date</th>
	    	<td><input type="text" name="posting_date" value="<%=qna.getPosting_date() %>" disabled></td>
	    </tr>
	    <tr>
	    	<th>views</th>
	    	<td><input type="text" name="views" value="<%=qna.getViews() %>" disabled></td>
	    </tr>
	    <tr>
	    	<th>attach</th>
	    	<td><input type="text" name="attach" value="<%=qna.getAttach() %>" ></td>
	    </tr>
	    <tr>
	    	<th>prev_id</th>
	    	<td><input type="text" name="prev_id" value="<%=qna.getPrev_id() %>" disabled></td>
	    </tr>
	    <tr>
	    	<th>next_id</th>
	    	<td><input type="text" name="next_id" value="<%=qna.getNext_id() %>" disabled></td>
	    </tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="수정" id="updateButton">
				<input type="submit" value="삭제" id="deleteButton">
				<input type="button" value="리스트로 이동" onclick="location.href='qna_list.jsp'">
			</td>
	   </tr>
   </table>
</form>
</body>
<script type="text/javascript">
	var qnaForm = document.querySelector('#qnaForm');
    var process = document.querySelector('[name=process]');
    var updateButton = document.querySelector('#updateButton');
	var deleteButton = document.querySelector('#deleteButton');
	var product_id = document.querySelector('[name=product_id]');
	var title = document.querySelector('[name=title]');
	var content = document.querySelector('[name=content]');

	updateButton.onclick = function(){
	if (isNaN(product_id.value)){
		alert('숫자를 입력하세요');
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
	
	process.value = 'update';
	qnaForm.submit();
    }
	
	deleteButton.onclick = function() {
		process.value = 'delete';
		if (confirm('정말 삭제하시겠습니까?')){
			qnaForm.submit();	
		} 
	}
</script>
</html>