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
	<p class="title">NOTICE</p>
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
                                          <span><em>제목</em>화소반 고객 감사 이벤트</span>
                                      </div>
                                  </div>
                              </tr>
                          </thead>
                          <tbody>
                              <tr>
                                  <td class="td_left">
                                      <div class="cont-sub-des">
                                          <div>
                                              <span><em>작성자</em>운영자</span>
                                          </div>
                                      </div>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="td_left">
                                      <div class="cont-sub-des">
                                          <div>
                                               <span><em>작성일</em>2020/02/03</span>
                                               <span><em>첨부파일</em>event.jpg</span>
                                               <span><em>조회수</em> 130</span>
                                          </div>
                                      </div>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="td_left">
                                       <img src="<%=path%>/img/board/event.jpg" class="event">
                                      <div class="data-bd-cont">&nbsp;화소반 그릇과 함께 상차림 한 걸 올려주시면 저희가 7명께<br>
																롱팟 스테이크접시 사각원찬기 小 긴일자찬기를 드립니다!!많이 참여해 주세요^^
                                      </div>
                                  </td>
                              </tr>
                          </tbody>
                      </table>
                      </fieldset>
					  </form>
				         <br>
				    	<div style="text-align:right;">
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
</html>