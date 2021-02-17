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
</head>
<%
	String notice_id = request.getParameter("notice_id");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String account_id = request.getParameter("account_id");
	String posting_date_s = request.getParameter("posting_date_s");
	String views = request.getParameter("views");
	if(notice_id==null || notice_id.trim().equals("")){
		notice_id="0";
	}
	if(title==null){
		title="";
	}
	if(content==null){
		notice_id="0";
	}
	if(account_id==null || notice_id.trim().equals("")){
		notice_id="0";
	}
	if(posting_date_s==null){
		notice_id="0";
	}
	if(views==null || notice_id.trim().equals("")){
		notice_id="0";
	}
	
	// insert
	if(notice_id != "0"){
		Notice notice = new Notice(Integer.parseInt(notice_id), title, content, Integer.parseInt(account_id),
				posting_date_s, Integer.parseInt(views));
		Dao_Notice dao = new Dao_Notice();
		dao.insertNotice(notice);
		
		response.sendRedirect("notice_list.jsp");
	}
%>
<body>
	<form method="post" id="noticeForm">
		<table>
			<tr><th>notice_id</th><td><input type="text" name="notice_id"/></td></tr>
			<tr><th>title</th><td><input type="text" name="title"/></td></tr>
			<tr><th>content</th><td><input type="text" name="content"/></td></tr>
			<tr><th>account_id</th><td><input type="text" name="account_id"/></td></tr>
			<tr><th>posting_date</th><td><input type="text" name="posting_date_s" placeholder="YYYY-MM-DD"/></td></tr>
			<tr><th>views</th><td><input type="text" name="views"/></td></tr>
			<tr><td colspan="2"><input type="button" value="입력" class="btn btn_thatch" id="insertButton"/></td></tr>
		</table>
	</form>
</body>
<script type="text/javascript">
	var insertButton = document.querySelector('#insertButton');
	insertButton.onclick = function(){
		var noticeForm = document.querySelector('#noticeForm');
		var notice_id = document.querySelector('[name=notice_id]');
		var title = document.querySelector('[name=title]');
		var content = document.querySelector('[name=content]');
		var account_id = document.querySelector('[name=account_id]');
		var posting_date = document.querySelector('[name=posting_date_s]');
		var views = document.querySelector('[name=views]');
		// 유효성체크 필요 확인 요망
	}
</script>
</html>