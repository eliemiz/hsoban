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
	// ### 데이터를 조회하기 위한 변수가 필요합니다. notice_id만 있으면 조회가 가능하므로 
	// 일단은 다른 데이터들은 지우도록 합니다.
   String notice_id = request.getParameter("notice_id");
   
   if(notice_id==null || notice_id.trim().equals("")){
      notice_id="0";
   }
   
   // ### notice_list에서 공지글 하나를 선택했을 때 나오는 세부정보로,
   // notice_id로 검색하므로 조회(조건-단일)에 해당합니다.
   // dao.getNotice(Integer.parseInt(notice_id)) 메서드로 조회합니다.
   Dao_Notice dao = new Dao_Notice();
   /* Notice notice = dao.getNotice(Integer.parseInt(notice_id), title, content, Integer.parseInt(account_id),
               posting_date, Integer.parseInt(views)); */
	Notice notice = dao.getNotice(Integer.parseInt(notice_id));
               
	// ### update를 위한 부분입니다.
	// update될 값들을 객체선언 및 유효성 체크를 합니다.
	// 아래에 에러가 뜨는 부분은 맨 위에 동일한 변수명이 있어서 그렇습니다.
	// 위 부분을 삭제하면 해결됩니다.
   String title = request.getParameter("title");
   if(title==null){
      title="";
   }
   String content = request.getParameter("content");
   if(content==null){
      content="";
   }
   // ### process는 수정/삭제 여부를 결정하는 변수입니다.
   // 수정/삭제 버튼을 누르지 않았을 경우 해당 값이 null 값이라 아무 영향 없이 정보만 출력하지만,
   // 수정/삭제 버튼을 누르면 process에 update 혹은 delete 값을 가진 채 페이지를 다시 로드하므로,
   // 아래의 수정/삭제 기믹을 처리합니다.
   String process = request.getParameter("process");
   if(process==null){
      process="";
   }
   
   // ###★ process 값이 어떻게 오는지에 따라 update할지 delete 할지 결정합니다.
   // 이 값의 여부는 파일 제일 아래 script단에서 결정됩니다.
   // 그 전에는 process 값이 ""이므로 업데이트나 삭제를 실행하지 않습니다
   if(process.equals("update")){
      // update
   	// 수정하는 title, content는 변수 앞에 기재했으니까 pass
   	// notice_id도 맨 처음에 적혀있어서 pass
   	// 수정안하기를 원하는 애들은 notice.getXXX붙여주기
      Notice newNotice = new Notice(Integer.parseInt(notice_id), title, content, notice.getAccount_id(),
            notice.getPosting_date_s(), notice.getViews());
     
      dao.updateNotice(newNotice);
    
      response.sendRedirect("notice_list.jsp");
   } else if(process.equals("delete")){
      // delete
      // ### delete 시에는 notice_id만 있으면 됩니다.
      // dao.deleteNotice() 메서드를 보면 매개변수가 notice_id뿐인걸 확인할 수 있으며,
      // 아래와 같이 수정해주면 됩니다.
      dao.deleteNotice(Integer.parseInt(notice_id));
/*       dao.deleteNotice(Integer.parseInt(notice_id), title, content, Integer.parseInt(account_id),
            posting_date_s, Integer.parseInt(views)); */
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
               <input type="submit" value="수정" id="updateButton"/> <%-- 수정안되는이유?? --%>
               <input type="submit" value="삭제" id="deleteButton"/> <%-- 삭제확인 --%>
               <input type="submit" value="리스트로 이동" onclick="location.href='notice_list.jsp'"> <%--리스트이동이 안되는이유?? --%>
            </td></tr>
      </table>
   </form>
</body>
<script type="text/javascript">
   var noticeForm = document.querySelector('#noticeForm');
   var process = document.querySelector('[name=process]');
   var updateButton = document.querySelector('#updateButton');
   var deleteButton = document.querySelector('#deleteButton');
   //유효성체크
      
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
      
   // ### form 내의 삭제 버튼을 보면 id가 deleteButton로 되어있습니다
   // 해당 버튼을 클릭하면 deleteButton.onclick 이벤트가 발생해
   // 아래와 같이 process.value의 값을 'delete'로 바꾸고,
   // 삭제 확인 여부를 묻고 noticeForm을 submit()합니다.
   // 그 이후는 위쪽에 ★ 별표 되어있는 부분을 참고해주세요
   deleteButton.onclick = function(){
      process.value = 'delete';
      if(confirm("정말 삭제하시겠습니까?")){
         noticeForm.submit();
      }
   }
</script>
</html>