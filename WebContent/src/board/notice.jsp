<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="java.net.*"
    import="hsoban.dao.*" import="hsoban.vo.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="bMgr" class="hsoban.dao.Dao_Notice" />
<% request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NOTICE</title>
<link rel="stylesheet" href="<%=path%>/css/common.css">
<link rel="stylesheet" href="<%=path%>/css/board.css">
<link rel="stylesheet" href="<%=path%>/css/boardwrite.css">
<style>
</style>
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
    
      response.sendRedirect("notice_board.jsp");
   } else if(process.equals("delete")){
      // delete
      dao.deleteNotice(Integer.parseInt(notice_id));
      response.sendRedirect("notice_board.jsp");
   }
%>
<body>
	<jsp:include page="../common/header.jsp"/>
	<jsp:include page="../common/side.jsp"/>
	<div style="text-align:center;">
	<br><br><br>
	<p class="title">NOTICE</p>
	</div>
	<br><br><br>
	<div id="content" class="content_wrap">
                  <div class="bbs-table-view">
                  <form method="post" id="noticeForm">
                  <input type="hidden" name="process" value="">
                      <table>
                          <thead>
                              <tr>
                                  <th class="td_left">
                                  <div class="cont-sub-des">
                                      <div>
                                          <span><em>제목</em><input type="text" name="title" value="<%=notice.getTitle() %>"></span>
                                      </div>
                                  </div>
                              </tr>
                          </thead>
                          <tbody>
                              <tr>
                                  <td class="td_left">
                                      <div class="cont-sub-des">
                                          <div>
                                              <span><em>작성자</em><input type="text" name="account_id" value="운영자" disabled></span>
                                              <span><em>번호</em><input type="text" name="notice_id" value="<%=notice.getNotice_id() %>" disabled></span>
                                          </div>
                                      </div>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="td_left">
                                      <div class="cont-sub-des">
                                          <div>
                                               <span><em>작성일</em><input type="text" name="posting_date" value="<%=notice.getPosting_date()%>"disabled></span>
                                               <span><em>조회수</em><input type="text" name="views" value="<%=notice.getViews() %>"disabled></span>
                                          </div>
                                      </div>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="td_left">
                                  <div class="td_left">
                                      <div class="data-bd-cont">&nbsp;<input size="200" type="text" name="content" value="<%=notice.getContent() %>">
                                      </div>
                                  </td>
                              </tr>
                          </tbody>
                      </table>
                      </fieldset>
					  </form>
				         <br>
				    	<div style="text-align:right;">
				    	<input type="submit" value="수정하기" class="btn btn_normal" id="updateButton"/> <%-- 수정 왜안되는지?? --%>
				    	<input type="submit" value="삭제하기" class="btn btn_normal" id="deleteButton"/> <%-- 삭제기능 이상무 --%>
						<input type="button" value="목록보기" class="btn btn_normal" onclick="location.href='notice_board.jsp'">
		               </div><!-- .page-body -->
		           </div><!-- #bbsData -->
      				<br><br><br>
             		  <table>
                        <colgroup>
                            <col>
                            <col width="150">
                            <col width="150">
                            <col width="150">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col" style="background:#f6f6f6;"><div class="td_center">제목</div></th>
                                <th scope="col" style="background:#f6f6f6;"><div class="td_center">작성자</div></th>
                                <th scope="col" style="background:#f6f6f6;"><div class="td_center">작성일</div></th>
                                <th scope="col" style="background:#f6f6f6;"><div class="td_center">조회수</div></th>
                            </tr>
                        </thead>
                        <tbody>
                                <tr>
                                <td colspan="4"><div class="td_center">관련 목록이 없습니다.</div></td>
                            </tr>
                            </tbody>
                    </table>
           </div>
	  </form>
  <jsp:include page="../common/footer.jsp"/>
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