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
<title>Insert title here</title>
<link rel="stylesheet" href="<%=path%>/css/common.css">
<link rel="stylesheet" href="<%=path%>/css/boardwrite.css">
<style>
</style>
</head>
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
                            <tr>
                            <td><a href="../shop/shop_default.jsp"><img src="<%=path%>/img/board/review2.jpg" class="img"></a></td>
                            <td><div class="td_left">상 품 명:<a href="../shop/shop_default.jsp">수저받침대</a><br>
                            상품가격:<strong>14,000원</strong></div></td>
                            </tr>
                        </table>
                        <div class="bbs-table-view">
                            <table>
                                <thead>
                                    <tr>
                                        <th><div class="td_left">수저받침대</div></th>
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
                                                     <span><em>작성일</em>2021-02-09</span>                                                                                                          <span><em>조회수</em> 13</span>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td_left">
                                            <div class="data-bd-cont">&nbsp;마음에 듭니다. 컬러가 예쁩니다.<br>
																	&nbsp;재구매의사있습니다~
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
								<div id="comment_list_0">
								</div><form id="comment_form" name="comment" action="board.html?code=hsoban_board1&amp;page=1&amp;type=v&amp;board_cate=&amp;num1=999812&amp;num2=00000&amp;number=172&amp;lock=N" method="post" autocomplete="off">
								<input type="hidden" name="page_type" value="board_view">
								<input type="hidden" name="formnum" value="0">
								<input type="hidden" name="code" value="hsoban_board1">
								<input type="hidden" name="num1" value="999812">
								<input type="hidden" name="num2" value="00000">
								<input type="hidden" name="page" value="1">
								<input type="hidden" name="lock" value="N">
								<input type="hidden" name="type" value="v">
								<input type="hidden" name="type2">
								<input type="hidden" name="comnum">
								<input type="hidden" name="comtype">
								<input type="text" name="___DUMMY___" readonly="" disabled="" style="display:none;"><input type="hidden" name="secret" value="N">                            								
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
                                                        <label>> NAME</label>&nbsp;&nbsp;&nbsp;temp123<span><input name="cname" type="hidden" value="temp123">&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                                        <label>> PASSWORD</label>&nbsp;&nbsp;&nbsp;<span><input type="password" name="cpass" class="MS_input_txt input-style input-style2" onclick="CheckLogin()" onkeypress="CheckLogin()" placeholder="패스워드"> </span>
                                                    </div>
                                              </td>
                                           </tr>
                                           <tr>
                                           <td colspan="3" class="td_left">
                                               <textarea name="comment" onchange="Checklength(this);" onkeyup="Checklength(this);" onclick="CheckLogin()" placeholder="내용" style="margin: 0px; width: 999px; height: 85px;">
                                               </textarea>
                                               <input type="button" value="글쓰기" class="btn_write2">
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
                                    <input type="button" value="삭제" class="btn_write">    
                                    </dd>                                                       
                            </div>
                            <br>
			               <span><img src="<%=path%>/img/board/up.png" class="up">&nbsp;이전글 :</span>
	                      	 <a href="../board/review.jsp">[두부볼中,小]</a><br>
                       	   <span><img src="<%=path%>/img/board/down.png" class="down">&nbsp;다음글 :</span>
                             <a href="../board/review.jsp">[두부볼中,小]</a>	
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
</html>