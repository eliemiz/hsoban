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
   
   // ### 이 밑으로 값을 넣는 변수가 잘못 되어있습니다.
   // 확인해주세요.
   if(content==null){
      content="";
   }
   if(account_id==null || notice_id.trim().equals("")){
      account_id="0";
   }
   if(posting_date_s==null){
      posting_date_s="";
   }
   if(views==null || notice_id.trim().equals("")){
      views="0";
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
	  // ### 아래 객체들은 유효성 객체를 위해 선언한 변수들입니다.
	  // 유효성 체크를 하지 않을 값들은 굳이 객체를 선언할 필요 없으며,
	  // 유효성 체크 후 유효하지 않은 값이 있을 경우,
	  // alert 등으로 경고를 준 후, return false;를 하면 됩니다.
	  var noticeForm = document.querySelector('#noticeForm');
      var notice_id = document.querySelector('[name=notice_id]');
      var title = document.querySelector('[name=title]');
      var content = document.querySelector('[name=content]');
      var account_id = document.querySelector('[name=account_id]');
      var posting_date = document.querySelector('[name=posting_date_s]');
      var views = document.querySelector('[name=views]');
      
      if(isNaN(notice_id.value)) || isNaN(content.value) || isNaN(account_id) || isNaN(views)){
    	  alert('숫자를 입력하세요');
    	  return false;
      }
      if((title.value)==null || (title.value)=""){
    	  alert('글자를 입력하세요');
    	  return false;
      }
      if ((content.value)==null ||(content.value)==""){
			alert('글자를 입력하세요');
			return false;
		}
      
      // ### noticeForm을 submit 처리 해줍니다.
      // submit 하는 방법은 2가지가 있는데,
      // 1. 버튼 자체의 type이 submit이라 누르자마자 submit을 보내는 경우
      // 2. 버튼의 type이 submit이 아니고 button으로 두되, 누르면 onclick 이벤트에 의해 아래와 같이 직접 submit() 해주는 경우
      // 만약 바로 위의 유효성 검사에서 걸러져서 return false; 했을 경우 여기까지 코드가 진행되지 않아 submit이 되지 않습니다

      noticeForm.submit();
   }
</script>
</html>