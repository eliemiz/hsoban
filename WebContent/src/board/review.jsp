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
		//변수 선언 for 페이지 로드      
		// String review_id = request.getParameter("review_id");
		String review_id = "1";
	      // validate      
	      if (review_id == null || review_id.trim().equals("")) {
	         review_id = "0";
	      }
	     
	      Dao_Review dao = new Dao_Review();
	      Review review = dao.getReview(Integer.parseInt(review_id));
	      
	      // product 로드
	       Dao_Product daoProduct = new Dao_Product();
	      Product product = daoProduct.getProdList(review.getProduct_id(), review.getColor());
	      
	      Dao_Account daoAccount = new Dao_Account();
	      Account account = daoAccount.getAccount(review.getAccount_id());

				
		// 변수 선언 for update
	   String product_id = request.getParameter("product_id");
	   if(product_id == null || product_id.trim().equals("")) {
	   product_id = "";
	   }
	   String color = request.getParameter("color");
	   if(color==null){
		  color="";
	   }
	   String title = request.getParameter("title");
	   if(title==null){
	      title="";
	   }
	   String content = request.getParameter("content");
	   if(content==null){
	      content="";
	   }
	   String attach = request.getParameter("attach");
	   if(attach==null){
		   attach="";
	   }
	   String process = request.getParameter("process");
	   if (process == null) {
	       process = "";
	   }
	   
	   if(process.equals("update")){
		      // update  
		      Review newReview = new Review(Integer.parseInt(review_id), Integer.parseInt(product_id), color, title, content, 
		    		  review.getAccount_id(), review.getPosting_date_s(), review.getViews(), attach);
		     
		      dao.updateReview(newReview);
		    
		      response.sendRedirect("review_board.jsp");
	   }else if(process.equals("delete")) {
			
			// delete
			dao.deleteReview(Integer.parseInt(review_id));
			response.sendRedirect("review_board.jsp");
	   }
%>

<body>
	<jsp:include page="../common/header.jsp"/>
	<jsp:include page="../common/side.jsp"/>
	<div style="text-align:center;">
	<br><br><br>
	<p class="title">REVIEW</p>
	</div>
	<br><br><br>
	<div id="content" class="content_wrap">
	<form method="post" id="reviewForm">
	<input type="hidden" name="process" value="">
                        <table class="prd-tinfo">
                         <colgroup>
					         <col width="120">
					         <col width="*">
					     </colgroup>				
                            <tr>
                            <td><% String thumbnail = product.getThumbnail() + "_00.jpg"; %>
            						<img src="<%=thumbnail%>" class="img"></td>		            
                            <td><div class="td_left">상 품 번 호: <input type="text" name="product_id" value="<%=review.getProduct_id() %>"><br>
                            상품색상:<input type="text" name="color" value="<%=review.getColor() %>">
                            </div></td>
                            </tr>
                        </table>
                        <div class="bbs-table-view">
                            <table>
                                <thead>
                                    <tr>
                                        <th><div class="td_left"><input type="text" name="title" value="<%=review.getTitle() %>"></div></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="td_left">
                                            <div class="cont-sub-des">
                                                <div>
                                                    <span><em>작성자</em><%=account.getName() %></span>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td_left">
                                            <div class="cont-sub-des">
                                                <div>
	                                                 <span><em>작성일</em><input type="text" name="posting_date" value="<%=review.getPosting_date() %>" disabled></span>
	                                                 <span><em>조회수</em><input type="text" name="views" value="<%=review.getViews() %>" disabled></span>                       
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td_left">
                                            <div class="cont-sub-des">
                                                <div>
                                                    <span><em>첨부파일</em><input type="file" id="avatar" name="attach" accept="image/png, image/jpeg" <%=review.getAttach() %>></span>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td_left">
                                            <div class="data-bd-cont">&nbsp;
                                            <input size="100" type="text" name="content" value="<%=review.getContent() %>" style="margin: 0px; width: 999px; height: 200px;">
                                            </div>
                                        </td>
                                    </tr>                                    	
                                </tbody>                             
                            </table>
                                  <table>
                                    <colgroup>
                                        <col width="120">
                                        <col>
                                        <col width="150">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <td colspan="3" class="td_left">
                                                    <div class="wrt">
                                                        <label>> NAME</label>&nbsp;&nbsp;&nbsp;temp123<span><input name="cname" type="hidden" value="temp123">&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                                        <label>> PASSWORD</label>&nbsp;&nbsp;&nbsp;<span><input type="password" name="cpass" class="MS_input_txt input-style input-style2" onclick="CheckLogin()" onkeypress="CheckLogin()" placeholder="패스워드"> </span>
                                                    </div>
                                              </td>
                                           </tr>
                                           <tr>
                                           <td colspan="3" class="td_left">
                                               <textarea name="comment" onchange="Checklength(this);" onkeyup="Checklength(this);" onclick="CheckLogin()" placeholder="내용" style="margin: 0px; width: 999px; height: 85px;">
                                               </textarea>
                                            <input type="button" value="글쓰기" class="btn_write2" onclick="writeCmt()">
                                           </td>   
                                        </tr>
                                    </tbody>
                                </table>
                            </fieldset>
							</form>
							<br>
							   <div class="view-link">
                                    <dd>
                                    <input type="button" value="수정" class="btn_write"  id="updateButton"/>
                                    <input type="button" value="삭제" class="btn_write" id="deleteButton"/>    
                                    </dd>                                                       
                            </div>
                            <br>
			               <span><img src="<%=path%>/img/board/up.png" class="up">&nbsp;이전글 :</span>
	                      	 <a href="../board/review2.jsp">수저받침대</a><br>
                       	   <span><img src="<%=path%>/img/board/down.png" class="down">&nbsp;다음글 :</span>
                             <a href="../board/review2.jsp">수저받침대</a>	
                        </div>
                          <br>
				     	<div style="text-align:right;">
						<input type="button" value="완료" class="btn btn_thatch" onclick="location.href='review_board.jsp'">
						<input type="button" value="목록보기" class="btn btn_normal" onclick="location.href='review_board.jsp'">
                    </div><!-- .page-body -->
                </div><!-- #bbsData -->
		</div>
	  </form>
	</div>
  <jsp:include page="../common/footer.jsp"/>
</body>
<script type="text/javascript">
var reviewForm = document.querySelector('#reviewForm');
var process = document.querySelector('[name=process]');
var updateButton = document.querySelector('#updateButton');
var deleteButton = document.querySelector('#deleteButton');
var product_id = document.querySelector('[name=product_id]');
var color = document.querySelector('[name=color]');
var title = document.querySelector('[name=title]');
var content = document.querySelector('[name=content]');
var attach = document.querySelector('[name=attach]');

	updateButton.onclick = function(){
	if ((content.value)==null ||(content.value)==""){
		alert('글자를 입력하세요');
		return false;
	}
	
	process.value = 'update';
	reviewForm.submit();
    }
	
	deleteButton.onclick = function() {
		process.value = 'delete';
		if (confirm('정말 삭제하시겠습니까?')){
			reviewForm.submit();	
		} 
	}
</script>
</html>