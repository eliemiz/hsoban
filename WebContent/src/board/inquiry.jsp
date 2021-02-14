<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="java.net.*"
    %>
<% request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A</title>
<link rel="stylesheet" href="<%=path%>/css/common.css">
<link rel="stylesheet" href="<%=path%>/css/board.css">
<link rel="stylesheet" href="<%=path%>/css/boardwrite.css">
<style>
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<jsp:include page="../common/side.jsp"/>
	<div style="text-align:center;">
	<br><br><br>
	<p class="title">Q&amp;A</p>
	</div>
	<br><br><br>
	<div id="content" class="content_wrap">
                  <div class="bbs-table-view">
                      <table>
                          <thead>
                              <tr>
                                  <th class="td_left">
                                  <div class="cont-sub-des">
                                      <div>
                                          <span><em>제목</em>재입고문의</span>
                                      </div>
                                  </div>
                              </tr>
                          </thead>
                          <tbody>
                              <tr>
                                  <td class="td_left">
                                      <div class="cont-sub-des">
                                          <div>
                                              <span><em>작성자</em>ijk230</span>
                                          </div>
                                      </div>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="td_left">
                                      <div class="cont-sub-des">
                                          <div>
                                               <span><em>작성일</em>2021-02-09</span>
                                               <span><em>조회수</em> 13</span>
                                          </div>
                                      </div>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="td_left">
                                      <div class="data-bd-cont">&nbsp;림볼 재입고되나요?<br>
                                      </div>
                                  </td>
                              </tr>
                          </tbody>
                      </table>
                      </fieldset>
					  </form>
						 <br>
						   <div class="view-link">
		                             <dt></dt>
		                             <dd>
		                             <input type="button" value="수정" class="btn_write" onclick="location.href='review_write.jsp'">&nbsp;
		                             <input type="button" value="삭제" class="btn_write">&nbsp;    
		                             <input type="button" value="답변" class="btn_write">  
		                             </dd>                                                       
		                       </div>                          
		                    <br>
		    	<div style="text-align:right;">
				<input type="button" value="글쓰기" class="btn btn_thatch" onclick="location.href='inquiry_write.jsp'">
				<input type="button" value="목록보기" class="btn btn_normal" onclick="location.href='inquiry_board.jsp'">
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
                           <th scope="col" style="background:#f8f8f8;"><div class="td_center">작성일</div></th>
                           <th scope="col" style="background:#f8f8f8;"><div class="td_center">조회수</div></th>
                       </tr>
                   </thead>
                   <tbody>
                      <tr>
                           <td>
                               <div class="td_left">
                                   <img src="<%=path%>/img/board/note.jpg" class="note" style="margin-left: 00px">
                                   <a href="../board/inquiry.jsp">재입고문의</a>
                               </div>
                           </td>
                           <td>
                               <div class="td_center">한선희</div>
                           </td>
                           <td><div class="td_center">2021-02-10</div></td>
                           <td><div class="td_center">11</div></td>
                       </tr>
                       <tr>
                           <td>
                               <div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note" >&nbsp;&nbsp;
                               <img src="<%=path%>/img/board/reply.png" class="reply">
                                   <a href="../board/inquiry2.jsp">재입고문의</a>
                               </div>
                           </td>
                           <td>
                               <div class="td_center">운영자</div>
                           </td>
                           <td><div class="td_center">2021-02-12</div></td>
                           <td><div class="td_center">1</div></td>
                       </tr>
                  </tbody>
               </table>
           </div>
	  </form>
  <jsp:include page="../common/footer.jsp"/>
</body>
</html>