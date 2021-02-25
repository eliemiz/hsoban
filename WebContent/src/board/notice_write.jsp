<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="java.net.*"
    import="hsoban.dao.*" import="hsoban.vo.*"
    %>
<% request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NOTICE</title>
<link rel="stylesheet" href="<%=path%>/css/common.css">
<link rel="stylesheet" href="<%=path%>/css/boardwrite.css">
<style>
</style>
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
      
      response.sendRedirect("notice_board.jsp");
   }
%>
<body>
   <jsp:include page="../common/header.jsp"/>
   <jsp:include page="../common/side.jsp"/>
   <div style="text-align:center;">
   <br><br><br><br>
   <p class="title">NOTICE</p><br>
   </div>
   <br><br><br>
      <div class="content_wrap">
       <form method="post" id="noticeForm">
       		<input id="bw_input_writer" type="hidden" name="account_id" class="MS_input_style" value="100000">
       		<input id="bw_input_passwd" type="hidden" name="posting_date_s" class="MS_input_style" value="2021-02-25">
       		<input id="bw_input_views" type="hidden" name="views" class="MS_input_style" value="0">
       <tr>
       <td height=20 align= center bgcolor=#ccc><font color=white> 글쓰기</font></td>
       </tr>
       <tr>
       <td bgcolor=white>
           <table summary>
               <colgroup>
                   <col width="95">
                   <col width="190">
                   <col width="90">
               </colgroup>
               <tbody>
                   <tr>
                       <th>
                           <div>TITLE</div>
                       </th>
                       <td>
                           <div class="td_left">
                              <input id="bw_input_subject" class="MS_input_txt input_style2" type="text" name="title">
                       </td>
                   </tr>
                   <tr>
                       <th><div>CONTENT</div></th>
                       <td colspan="3"><div class="td_left"><textarea id="MS_text_content" name="content" style="font-family: 굴림체; width: 100%; height: 380px;"></textarea>
                       <input type="hidden" name="mobile_content_type" value=""></div>
                       </td>
                   </tr>
              </tbody>
           </table>
        <br>
         <div style="text-align:right;">
      <input type="button" value="완료" class="btn btn_thatch" id="insertButton"> 
      <input type="button" value="목록" class="btn btn_normal" onclick="location.href='notice_board.jsp'" >
      </div>
 </form>
 </div>
 <jsp:include page="../common/footer.jsp"/>
</body>
<script type="text/javascript">
var insertButton = document.querySelector('#insertButton');
insertButton.onclick = function(){
     // 유효성 객체를 위해 선언한 변수
     var noticeForm = document.querySelector('#noticeForm');
   var title = document.querySelector('[name=title]');
   var content = document.querySelector('[name=content]');
//   var account_id = document.querySelector('[name=account_id]');
//   var posting_date = document.querySelector('[name=posting_date_s]');
//   var views = document.querySelector('[name=views]');
   
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