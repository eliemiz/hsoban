<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="java.net.*"
    import="hsoban.dao.*" import="hsoban.vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REVIEW</title>
<link rel="stylesheet" href="<%=path%>/css/common.css">
<link rel="stylesheet" href="<%=path%>/css/boardwrite.css">
<style>
</style>
</head>
<%
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
    
   String process = request.getParameter("process");
   if (process == null) {
       process = "";
   }
   
   if(process.equals("delete")){
      dao.deleteReview(Integer.parseInt(review_id));
      response.sendRedirect("review_list.jsp");
   } else if (process.equals("insertComment")) {
      // 변수 선언
      String id = request.getParameter("id");
      String pass = request.getParameter("pass");
      String content = request.getParameter("content");
      
      // validate
      if (id == null) {
         id = "";
      }
      if (pass == null) {
         pass = "";
      }
      if (content == null) {
         content = "";
      }
      
      // comment 추가
      Dao_Comments cdao = new Dao_Comments();
      
      Comments comment = new Comments(0, Integer.parseInt(review_id), id, pass, content);
      cdao.insertComments(comment);
      
      // 페이지 이동
      response.sendRedirect("review_comments.jsp");
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
                        <table class="prd-tinfo">
                         <colgroup>
                        <col width="120">
                        <col width="*">
                    </colgroup>
                            <td><% String thumbnail = product.getThumbnail() + "_00.jpg"; %>
                              <img src="<%=thumbnail%>" class="img"></td>                
                            <td><div class="td_left">상 품 명:<%=product.getName() %><%=review.getColor() %>
                            </a><br>
                            상품가격:<strong><%=product.getPrice() %>원</strong></div></td>
                            </tr>
                        </table>
                        <div class="bbs-table-view">
                            <table>
                                <thead>
                                    <tr>
                                        <th><div class="td_left"><%=review.getTitle() %></div></th>
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
                                                     <span><em>작성일</em><%=review.getPosting_date() %></span> 
                                                     <span><em>조회수</em> <%=review.getViews() %></span>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td_left">
                                            <div class="data-bd-cont">&nbsp;<%=review.getContent() %>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <form method="post" id="commentForm" style="display:none;">
                            <input type="hidden" name="review_id" value="1">
                            <input type="hidden" name="id" value="tempid">
                            <input type="hidden" name="process">
                                  <table >
                                    <colgroup>
                                        <col width="120">
                                        <col>
                                        <col width="150">
                                    </colgroup>
                                    <tbody>
                
                                        <tr>
                                            <td colspan="3" class="td_left">
                                                    <div class="wrt">
                                                        <label>> NAME</label>&nbsp;&nbsp;&nbsp;<%=account.getId() %>
                                                        <label>> PASSWORD</label>&nbsp;&nbsp;&nbsp;<span><input type="text" name="pass"></span>
                                                    </div>
                                              </td>
                                           </tr>
                                           <tr>
                                           <td colspan="3" class="td_left">
                                              <input type="text" name="content">
                                            <input type="button" value="입력" class="btn btn_thatch" id="insertButtonC">
                                           </td>   
                                        </tr>
                                    </tbody>
                                </table>
                    	 </form>
                     <br>
                        <div class="view-link">
                                    <dt></dt>
                                    <dd>
                                    <input type="button" value="수정" class="btn_write" onclick="location.href='review.jsp'">&nbsp;
                                    <input type="button" value="삭제" class="btn_write"  id="deleteButton">    
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
var color = document.querySelector('[name=color]');
var title = document.querySelector('[name=title]');
var content = document.querySelector('[name=content]');
var attach = document.querySelector('[name=attach]');

insertButtonC.onclick = function() {
   var commentForm = document.querySelector("#commentForm");
   process.value = 'insertComment';
   commentForm.submit();
}

   deleteButton.onclick = function() {
      process.value = 'delete';
      if (confirm('정말 삭제하시겠습니까?')){
         reviewForm.submit();   
      } 
   }

</script>
</html>