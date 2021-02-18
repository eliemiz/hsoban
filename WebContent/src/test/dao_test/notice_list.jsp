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
// ### 검색 기능이 없으므로 notice_id 변수 선언도 필요 없다
// 변수 선언
/* String notice_id = request.getParameter("notice_id");
if (notice_id == null || notice_id.trim().equals("")) {
	notice_id = "";
} */
// 목록 불러오기
Dao_Notice dao = new Dao_Notice();
ArrayList<Notice> list = dao.getNoticeList();
%>
<body>
	<!-- ### 공지는 검색을 할 필요가 없으므로 조회(조건-리스트) 메서드가 없습니다.
	즉, 아래와 같은 검색폼은 없어도 됩니다. -->
	<%-- <form method="post" id="noticeForm">
		
			<tr>
				<th>notice_id</th>
				<td><input type="text" name="notice_id" value="<%=notice_id%>"></td>
			</tr>--%>
			<table>
			<tr>
				<td colspan="2">
				<input type="button" value="새 데이터 입력" id="insertButton" 
					class="btn btn_black" onclick="location.href='notice_insert.jsp'"></td>
			</tr>
		</table>
	</form> 
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
			<td><%=notice.getPosting_date_s()%></td>
			<td><%=notice.getViews()%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
<script type="text/javascript">
	// ### 검색 관련 객체 삭제
   /* var searchButton = document.querySelector('#searchButton');
   searchButton.onclick = function(){
      var notice_id = document.querySelector('[name=notice_id]');
      if(isNaN(notice_id.value)){
         alert('숫자를 입력해주세요.');
         return false;
      }
      document.querySelector('#noticeForm').submit();
   } */
   function callDetail(notice_id){
      var url = "notice_detail.jsp?";
      url += "notice_id=" + notice_id;
      location.href = url;
   }
</script>
</html>