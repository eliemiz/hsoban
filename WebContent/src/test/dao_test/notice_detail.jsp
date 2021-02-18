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
	// ### 데이터를 조회하기 위한 변수
   String notice_id = request.getParameter("notice_id");
   
   if(notice_id==null || notice_id.trim().equals("")){
      notice_id="0";
   }
   
   Dao_Notice dao = new Dao_Notice();
	Notice notice = dao.getNotice(Integer.parseInt(notice_id));
               
	// # update
   String title = request.getParameter("title");
   if(title==null){
      title="";
   }
   String content = request.getParameter("content");
   if(content==null){
      content="";
   }
   // process 수정/삭제 여부를 결정하는 변수
   String process = request.getParameter("process");
   if(process==null){
      process="";
   }

   if(process.equals("update")){
      // update
      Notice newNotice = new Notice(Integer.parseInt(notice_id), title, content, notice.getAccount_id(),
            notice.getPosting_date_s(), notice.getViews());
     
      dao.updateNotice(newNotice);
    
      response.sendRedirect("notice_list.jsp");
   } else if(process.equals("delete")){
      // delete

      dao.deleteNotice(Integer.parseInt(notice_id));
      response.sendRedirect("notice_list.jsp");
   }
%>
<body>
   <form method="post" id="noticeForm">
      <input type="hidden" name="process" value="">
      <table> 
         <tr><th>notice_id</th><td><input type="text" name="notice_id" value="<%=notice.getNotice_id() %>" disabled></td></tr>
         <tr><th>title</th><td><input type="text" name="title" value="<%=notice.getTitle() %>"></td></tr>
         <tr><th>content</th><td><input type="text" name="content" value="<%=notice.getContent() %>" ></td></tr>
         <tr><th>account_id</th><td><input type="text" name="account_id" value="<%=notice.getAccount_id() %>" disabled></td></tr>
         <tr><th>posting_date</th><td><input type="text" name="posting_date_s" value="<%=notice.getPosting_date() %>" disabled></td></tr>
         <tr><th>views</th><td><input type="text" name="views" value="<%=notice.getViews() %>" disabled></td></tr>
         <tr><td colspan="2">
               <input type="submit" value="수정" id="updateButton"/> 
               <input type="submit" value="삭제" id="deleteButton"/> 
               <input type="button" value="리스트로 이동" onclick="location.href='notice_list.jsp'"> 
            </td></tr>
      </table>
   </form>
</body>
<script type="text/javascript">
   var noticeForm = document.querySelector('#noticeForm');
   var process = document.querySelector('[name=process]');
   var updateButton = document.querySelector('#updateButton');
   var deleteButton = document.querySelector('#deleteButton');
   var notice_id = document.querySelector('[name=notice_id]');
   var account_id = document.querySelector('[name=account_id]');
   var views = document.querySelector('[name=views]');
   var title = document.querySelector('[name=title]');
   var content = document.querySelector('[name=content]');
 	// update button
   updateButton.onclick = function(){
	   //유효성체크
      if(isNaN(notice_id.value) || isNaN(account_id.value) || isNaN(views.value)){
    	  alert('숫자를 입력하세요');
    	  return false;
      }
      if((title.value)==null || (title.value)==""){
    	  alert('글자를 입력하세요');
    	  return false;
      }
      if ((content.value)==null ||(content.value)==""){
			alert('글자를 입력하세요');
			return false;
		}
      
    	process.value = 'update';
    	noticeForm.submit();
    	}
 	
   deleteButton.onclick = function(){
      process.value = 'delete';
      if(confirm("정말 삭제하시겠습니까?")){
         noticeForm.submit();
      }
   }
</script>
</html>