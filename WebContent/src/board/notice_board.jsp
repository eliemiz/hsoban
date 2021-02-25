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
/* 마우스 오버시에 음영을 넣고, 커서 모양을 바꿔주는 style코드*/
#noticeList tbody tr:hover {
	background-color: #f7f7f7;
	cursor: pointer;
}
</style>
</head>
<% 
Dao_Account daoAccount = new Dao_Account();

// 변수 선언
String account_id = request.getParameter("account_id");
if(account_id == null || account_id.trim().equals("")){
   account_id = "";
}
/*
String title = request.getParameter("title");
if(title == null || title.trim().equals("")){
   title = "";
}
String content = request.getParameter("content");
if(content == null || content.trim().equals("")){
   content = "";
}
*/
// 목록 불러오기
Dao_Notice dao = new Dao_Notice();
ArrayList<Notice> list;
if (account_id == ""){
   list = dao.getNoticeList();
} else{
   list=dao.getNoticeList(Integer.parseInt(account_id));
}
/*
if (title == ""){
   list = dao.getNoticeList1();
} else{
   list=dao.getNoticeList1(Integer.parseInt(title));
}
if (content == ""){
   list = dao.getNoticeList2();
} else{
   list=dao.getNoticeList2(Integer.parseInt(content));
} */ 
/*
// 목록 불러오기
Dao_Notice dao = new Dao_Notice();
ArrayList<Notice> list = dao.getNoticeList();
*/
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
      <form method="post" id="noticeForm">
      <div style="text-align: right;"> <%-- 이름,제목,내용 검색기능 --%>
        <span><input id="name" type="radio" name="select" ><label for="name">이름</label>&nbsp;
       <input id="title" type="radio" name="select" checked><label for="title">제목</label>&nbsp;
       <input id="contents" type="radio" name="select"><label for="content">내용</label>&nbsp; 
      <%-- <span><label for="account.getName()"></label> --%>
       <input type="text" name="search-Text" value=""/>
       <input style="background-color: #464646;
      color: white;" type="submit" value="검색" id="searchButton"/></span>
      </div>
      </form>
      <br>
       <table id="noticeList">
      <colgroup>
         <col width="50">
         <col width="50">
         <col width="*">
         <col width="150">
         <col width="150">
         <col width="150">
     </colgroup>
     <thead>
         <tr>
             <th scope="col"><div class="th_center">번호</div></th>
             <th scope="col"><div class="th_center">&nbsp</div></th>
             <th scope="col"><div class="th_center">제목</div></th>
             <th scope="col"><div class="th_center">작성자</div></th>
             <th scope="col"><div class="th_center">작성일</div></th>
             <th scope="col"><div class="th_center">조회수</div></th>
         </tr>
         <%
         for(Notice notice : list){
        	 Account account = daoAccount.getAccount(notice.getAccount_id());
         %>
     </thead>
            <tbody>     
               <tr onclick="callDetail(<%=notice.getNotice_id()%>)">
            	   <td><div class="td_center"><img src="<%=path%>/img/board/arrow.png" class="arrow"></div></td> 
                   <td><div class="td_left">&nbsp;<img src="<%=path%>/img/board/mic.png" class="mic"></div></td>
                   <td><div class="td_left"><%=notice.getTitle() %></div></td>
                   <td><div class="td_center"><%=account.getName() %></td>
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
   var searchButton = document.querySelector('#searchButton');
   searchButton.onclick=function(){
      var account_name = document.querySelector('[name=account_name]');
      if((account_name.value)==null || (account_name.value)==""){
         alert('작성자를 입력해주세요.');
         return false;
      }

      document.querySelector('#noticeForm').submit();
   }
   
   function callDetail(notice_id){
      var url = "notice_read.jsp?";
      // var url = "notice.jsp?";
      url += "notice_id=" + notice_id;
      location.href = url;
   }
</script>
</html>