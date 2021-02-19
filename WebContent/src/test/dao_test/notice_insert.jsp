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
   String title = request.getParameter("title");
   String content = request.getParameter("content");
   String account_id = request.getParameter("account_id");
   String posting_date_s = request.getParameter("posting_date_s");
   String views = request.getParameter("views");

   if(title==null){
      title="";
   }

   if(content==null){
      content="";
   }
   if(account_id==null || account_id.trim().equals("")){
      account_id="0";
   }
   if(posting_date_s==null){
      posting_date_s="";
   }
   if(views==null || views.trim().equals("")){
      views="0";
   }
   
   // insert
   if(title != ""){
      Notice notice = new Notice(title, content, Integer.parseInt(account_id),
            posting_date_s, Integer.parseInt(views));
      Dao_Notice dao = new Dao_Notice();
      dao.insertNotice(notice);
      
      response.sendRedirect("notice_list.jsp");
   }
%>
<body>
   <form method="post" id="noticeForm">
      <table>
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
	  // 유효성 객체를 위해 선언한 변수
	  var noticeForm = document.querySelector('#noticeForm');
      var title = document.querySelector('[name=title]');
      var content = document.querySelector('[name=content]');
      var account_id = document.querySelector('[name=account_id]');
      var posting_date = document.querySelector('[name=posting_date_s]');
      var views = document.querySelector('[name=views]');
      
      if( isNaN(account_id.value) || isNaN(views.value)){
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

      noticeForm.submit();
   }
</script>
</html>