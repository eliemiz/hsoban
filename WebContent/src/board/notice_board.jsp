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
<title>NOTICE</title>
<link rel="stylesheet" href="<%=path%>/css/common.css">
<link rel="stylesheet" href="<%=path%>/css/board.css">
<style>

</style>
</head>
<%
/*
// 변수 선언
String account_id = request.getParameter("account_id");
if(account_id == null || account_id.trim().equals("")){
	account_id = "";
}

// 목록 불러오기
Dao_Notice dao = new Dao_Notice();
ArrayList<Notice> list;
if (account_id == ""){
	list = dao.getNoticeList();
} else{
	list=dao.getNoticeList(Integer.parseInt(account_id));
}

*/
// 목록 불러오기
Dao_Notice dao = new Dao_Notice();
ArrayList<Notice> list = dao.getNoticeList();

%>
<body>
   <jsp:include page="../common/header.jsp" />
   <jsp:include page="../common/side.jsp"/>
   <div style="text-align:center;">
   
      <br><br>  
      <p class="title">NOTICE</p>
      <input align="center" type="button" value="글쓰기" class="btn btn_thatch" onclick="location.href='notice_write.jsp'"/><br>
      </div>
      <br><br><br>  
      <div class="content_wrap">
      <div style="text-align: right;"> <%-- 이름,제목,내용 검색기능 dao에 추가하기 --%>
        <span><input id="name" type="radio" name="select" ><label for="name">이름</label>&nbsp;
	    <input id="title" type="radio" name="select" checked><label for="title">제목</label>&nbsp;
	    <input id="contents" type="radio" name="select"><label for="content">내용</label>&nbsp;
	    <input type="text" name="searchText" value="" />
	    <input style="background-color: #464646;
		color: white;" type="submit" value="검색" /></span>
      </div>
      <br>
       <table id="noticeList">
      <colgroup>
         <col width="50">
         <col width="150">
         <col width="*">
         <col width="150">
         <col width="150">
         <col width="150">
     </colgroup>
     <thead>
         <tr>
             <th scope="col"><div class="th_center">번호</div></th>
             <th scope="col"><div class="th_center">&nbsp;</div></th>
             <th scope="col"><div class="th_center">제목</div></th>
             <th scope="col"><div class="th_center">작성자</div></th>
             <th scope="col"><div class="th_center">작성일</div></th>
             <th scope="col"><div class="th_center">조회수</div></th>
         </tr>
         <%
         for(Notice notice : list){
         %>
     </thead>
            <tbody>     
               <tr onclick="callDetail(<%=notice.getNotice_id()%>)">
                   <td><div class="td_center"><%=notice.getNotice_id() %></div></td>
                   <td><div class="td_left"><%=notice.getTitle() %></div></td>
                   <td><div class="td_left"><%=notice.getContent() %></div></td>
                   <td><div class="td_center"><%=notice.getAccount_id() %></td>
                   <td><div class="td_center"><%=notice.getPosting_date() %></div></td>
                   <td><div class="td_center"><%=notice.getViews() %></div></td>               
               </tr>
               <%
         		}
               %>
           </tbody>
            </table>
      <br>
      <div style="text-align: center;">
         <input type="button" value="&nbsp;1&nbsp;" class="btn_normal">
         <input type="button" value="&nbsp;>&nbsp;" class="btn_normal">
         <input type="button" value=">>" class="btn_normal">
      </div>
   </div>
   <jsp:include page="../common/footer.jsp" />
</body>
<script type="text/javascript">
	function callDetail(notice_id){
		var url = "notice.jsp?";
		url += "notice_id=" + notice_id;
		location.href = url;
	}
</script>
</html>