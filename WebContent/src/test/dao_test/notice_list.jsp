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
#noticeList tr:first-child:hover {
	cursor:auto;
}

#noticeList tr:hover{
	background-color: #f7f7f7;
	cursor: pointer;
}

#cartList tr:active {
	background-color: #f0f0f0;
}

</style>
</head>
<%
	String notice_id = request.getParameter("notice_id");
	if(notice_id==null || notice_id.trim().equals("")){
		notice_id = "";
	}
	Dao_Notice dao = new Dao_Notice();
	ArrayList<Notice> list;
	if(notice_id == ""){
		list = dao.getNoticeList();
	} else{
		list = dao.getNoticeList(Integer.parseInt(notice_id));
	}
%>
<body>
	<form method="post" id="noticeForm">
		<table>
			<tr><th>notice_id</th><td><input type="text" name="notice_id" value="<%=notice_id %>"></td></tr>
			<tr><td colspan="2"><input type="button" value="검색" id="searchButton" class="btn btn_thatch"></td></tr>
		</table>
	</form>
	<table id="noticeList">
		<tr><th>notice_id</th><th>title</th><th>content</th><th>account_id</th><th>posting_date</th><th>views</th></tr>
		<% for(Notice notice : list){ %>
		<tr onclick="callDetail(<%=notice.getNotice_id()%>)">
			<td><%=notice.getNotice_id() %></td><td><%=notice.getTitle() %></td>
			<td><%=notice.getContent() %></td><td><%=notice.getAccount_id() %></td>
			<td><%=notice.getPosting_date_s() %></td><td><%=notice.getViews() %></td></tr>
		<%
		}
		%>
	</table>
</body>
<script type="text/javascript">
	var searchButton = document.querySelector('#searchButton');
	searchButton.onclick = function(){
		var notice_id = document.querySelector('[name=notice_id]');
		if(isNaN(notice_id.value)){
			alert('숫자를 입력해주세요.');
			return false;
		}
		document.querySelector('#noticeForm').submit();
	}
	function callDetail(){
		var url = "notice_detail.jsp?";
		url += "notice_id=" + arguments[0];
		location.href = url;
	}
</script>
</html>