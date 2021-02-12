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
<style>
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
    <jsp:include page="../common/side.jsp"/>
	<div style="text-align:center;">
	<br><br>  
	<p class="title">REVIEW</p>
	<input align="center" type="button" value="글쓰기" 
	       class="btn btn_thatch" onclick="location.href='review_write.jsp'"><br>
	</div>
	<br><br><br>
	<div class="content_wrap">
    <div style="text-align:right;">
    	<span><input id="name" type="radio" name="select" ><label for="name">이름</label>
	    <input id="title" type="radio" name="select" checked><label for="title">제목</label>
	    <input id="content" type="radio" name="select"><label for="content">내용</label>
	    <input type="text" name="searchText" value="" />
	    <input style="background-color: #464646;
		color: white;" type="submit" value="검색" /></span>
    </div>
        <br>
       <table>
      <colgroup>
         <col width="50">
         <col width="30">
         <col width="140">
         <col width="*">
         <col width="150">
         <col width="150">
         <col width="150">
     </colgroup>
     <thead>
         <tr>
             <th scope="col"><div class="th_center">번호</div></th>
             <th scope="col"><div class="th_center">&nbsp;</div></th>
             <th scope="col"><div class="th_center">product</div></th>
             <th scope="col"><div class="th_center">제목</div></th>
             <th scope="col"><div class="th_center">작성자</div></th>
             <th scope="col"><div class="th_center">작성일</div></th>
             <th scope="col"><div class="th_center">조회수</div></th>
         </tr>
     </thead>
	    <tbody>
          <tr>
              <td><div class="td_center">8</div></td>
              <td><div class="td_center"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
              <td><div class="td_center"><a href="../shop/shop_default.jsp"><img src="<%=path%>/img/board/review.jpg" class="img" ></div></td>
              <td><div class="td_left"><a href="../board/review.jsp">[두부볼中,小]&nbsp;만족합니다.</a></div></td>
              <td><div class="td_center">홍길동</td>
              <td><div class="td_center">2021/02/08</div></td>
              <td><div class="td_center">200</div></td>               
          </tr>
          <tr>
              <td><div class="td_center">7</div></td>
              <td><div class="td_center"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
              <td><div class="td_center"><img src="<%=path%>/img/board/review.jpg" class="img" ></div></td>
              <td><div class="td_left">[두부볼中,小]&nbsp;만족합니다.</div></td>
              <td><div class="td_center">홍길동</td>
              <td><div class="td_center">2021/02/08</div></td>
              <td><div class="td_center">200</div></td>               
          </tr>
          <tr>
              <td><div class="td_center">6</div></td>
              <td><div class="td_center"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
              <td><div class="td_center"><img src="<%=path%>/img/board/review.jpg" class="img" ></div></td>
              <td><div class="td_left">[두부볼中,小]&nbsp;만족합니다.</div></td>
              <td><div class="td_center">홍길동</td>
              <td><div class="td_center">2021/02/08</div></td>
              <td><div class="td_center">200</div></td>               
          </tr>
          <tr>
              <td><div class="td_center">5</div></td>
              <td><div class="td_center"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
              <td><div class="td_center"><img src="<%=path%>/img/board/review.jpg" class="img" ></div></td>
              <td><div class="td_left">[두부볼中,小]&nbsp;만족합니다.</div></td>
              <td><div class="td_center">홍길동</td>
              <td><div class="td_center">2021/02/08</div></td>
              <td><div class="td_center">200</div></td>               
          </tr>
          <tr>
              <td><div class="td_center">4</div></td>
              <td><div class="td_center"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
              <td><div class="td_center"><img src="<%=path%>/img/board/review.jpg" class="img" ></div></td>
              <td><div class="td_left">[두부볼中,小]&nbsp;만족합니다.</div></td>
              <td><div class="td_center">홍길동</td>
              <td><div class="td_center">2021/02/08</div></td>
              <td><div class="td_center">200</div></td>               
          </tr>
          <tr>
              <td><div class="td_center">3</div></td>
              <td><div class="td_center"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
              <td><div class="td_center"><img src="<%=path%>/img/board/review.jpg" class="img" ></div></td>
              <td><div class="td_left">[두부볼中,小]&nbsp;만족합니다.</div></td>
              <td><div class="td_center">홍길동</td>
              <td><div class="td_center">2021/02/08</div></td>
              <td><div class="td_center">200</div></td>               
          </tr>
          <tr>
              <td><div class="td_center">2</div></td>
              <td><div class="td_center"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
              <td><div class="td_center"><img src="<%=path%>/img/board/review.jpg" class="img" ></div></td>
              <td><div class="td_left">[두부볼中,小]&nbsp;만족합니다.</div></td>
              <td><div class="td_center">홍길동</td>
              <td><div class="td_center">2021/02/08</div></td>
              <td><div class="td_center">200</div></td>               
          </tr>
          <tr>
              <td><div class="td_center">1</div></td>
              <td><div class="td_center"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
              <td><div class="td_center"><img src="<%=path%>/img/board/review.jpg" class="img" ></div></td>
              <td><div class="td_left">[두부볼中,小]&nbsp;만족합니다.</div></td>
              <td><div class="td_center">홍길동</td>
              <td><div class="td_center">2021/02/08</div></td>
              <td><div class="td_center">200</div></td>               
          </tr>
      </tbody>
   </table>
      <br>
      <div style="text-align: center;">
         <input type="button" value="&nbsp;1&nbsp;" class="btn_normal">
         <input type="button" value="&nbsp;>&nbsp;" class="btn_normal">
         <input type="button" value=">>" class="btn_normal">
      </div>
   </div>
   <jsp:include page="../common/footer.jsp" />
</body>
</html>