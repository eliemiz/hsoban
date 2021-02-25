<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="java.net.*" 
	import="hsoban.vo.*" import="hsoban.dao.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REVIEW</title>
<link rel="stylesheet" href="<%=path%>/css/common.css">
<link rel="stylesheet" href="<%=path%>/css/boardwrite.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<style>
</style>
</head>
<%
		String product_id = request.getParameter("product_id");
		String color = request.getParameter("color");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String account_id = request.getParameter("account_id");
		String posting_date_s = request.getParameter("posting_date_s");
		String views = request.getParameter("views");
		String attach = request.getParameter("attach");
				
		if (product_id == null || product_id.trim().equals("")) {
			product_id = "0";
		}
		if (color == null) {
			color = "";
		}
		if (title == null) {
			title = "";
		}
		if (content == null) {
			content = "";
		}
		if (account_id == null || account_id.trim().equals("")) {
			account_id = "0";
		}
		if (posting_date_s == null) {
			posting_date_s = "";
		}
		if (views == null || views.trim().equals("")) {
			views = "0";
		}
		if (attach == null) {
			attach = "";
		}
		
				
		if (product_id != "0"){
			Review review = new Review(Integer.parseInt(product_id), color, title, content, 
					Integer.parseInt(account_id), posting_date_s, Integer.parseInt(views), attach);
			
			Dao_Review dao = new Dao_Review();
			dao.insertReview(review);		
			
			response.sendRedirect("review_board.jsp");
		}

%>

<body>
	<jsp:include page="../common/header.jsp"/>
	<jsp:include page="../common/side.jsp"/>
	<div style="text-align:center;">
	<br><br><br><br>
	<p class="title">REVIEW</p><br>
	</div>
	<br><br><br>
      <div class="content_wrap">
       <form method="post" id="reviewForm">
       <input type="hidden" name="account_id" class="MS_input_txt input_style" value="100001">
       <input type="hidden" name="posting_date_s" class="MS_input_txt input_style" value="2021-02-26">
       <input type="hidden" name="views" class="MS_input_txt input_style" value="0">
       <input type="hidden" name="product_id" class="MS_input_txt input_style" value="100001">
       <input type="hidden" name="color" class="MS_input_txt input_style" value="블랙">
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
                       <td colspan="3">
                       <div class="td_left"><textarea id="MS_text_content" name="content" style="font-family: 굴림체; width: 100%; height: 380px;"></textarea>
                      </div>
                       </td>
                   </tr>
                    <tr>
                       <th><div>FILE</div></th>
                       <td colspan="3">
                           <div class="td_left"><input type="file" id="avatar" name="attach" accept="image/png, image/jpeg"></div>
                          
                       </td>
                   </tr>
              </tbody>
           </table>
        <br>
      	<div style="text-align:right;">
		<input type="button" value="완료" class="btn btn_thatch" id="insertButton"> 
		<input type="button" value="목록" class="btn btn_normal" onclick="location.href='review_board.jsp'" >
		</div>
 </form>
 </div>
 <jsp:include page="../common/footer.jsp"/>
</body>
<script type="text/javascript">
var insertButton = document.querySelector('#insertButton');
insertButton.onclick = function() {
	var reviewForm = document.querySelector('#reviewForm');
	var product_id = document.querySelector('[name=product_id]');
	var color = document.querySelector('[name=color]');
	var title = document.querySelector('[name=title]');
	var content = document.querySelector('[name=content]');
	var account_id = document.querySelector('[name=account_id]');
	var posting_date_s = document.querySelector('[name=posting_date_s]');
	var views = document.querySelector('[name=views]');
	var attach = document.querySelector('[name=attach]');
	// 유효성 체크
	if ((title.value)==null ||(title.value)==""){
		alert('글자를 입력하세요');
		return false;
	}
	if ((content.value)==null ||(content.value)==""){
		alert('글자를 입력하세요');
		return false;
	}
	
	reviewForm.submit();
}
</script>
</html>