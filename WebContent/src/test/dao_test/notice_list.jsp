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
	cursor: auto;
}

#noticeList tr:hover {
	background-color: #f7f7f7;
	cursor: pointer;
}

#cartList tr:active {
	background-color: #f0f0f0;
}
</style>
</head>
<%
// 목록 불러오기
Dao_Notice dao = new Dao_Notice();
ArrayList<Notice> list = dao.getNoticeList();
%>
<body>
		<table>
			<tr>
				<td colspan="2">
				<input type="button" value="새 데이터 입력" id="insertButton" 
					class="btn btn_black" onclick="location.href='notice_insert.jsp'"></td>
			</tr>
		</table>
	<table id="noticeList">
		<tr>
			<th>notice_id</th>
			<th>title</th>
			<th>content</th>
			<th>account_id</th>
			<th>posting_date</th>
			<th>views</th>
		</tr>
		<%
		for (Notice notice : list) {
		%>
		<tr onclick="callDetail(<%=notice.getNotice_id()%>)">
			<td><%=notice.getNotice_id()%></td>
			<td><%=notice.getTitle()%></td>
			<td><%=notice.getContent()%></td>
			<td><%=notice.getAccount_id()%></td>
			<td><%=notice.getPosting_date()%></td>
			<td><%=notice.getViews()%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
<script type="text/javascript">

   function callDetail(notice_id){
      var url = "notice_detail.jsp?";
      url += "notice_id=" + notice_id;
      location.href = url;
   }
</script>
</html>