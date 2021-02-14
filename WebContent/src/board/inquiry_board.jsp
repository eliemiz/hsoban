<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="java.util.*" import="java.net.*"%>
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
<link rel="stylesheet" href="<%=path%>/css/board.css">
<style>

</style>
</head>
<body>
   <jsp:include page="../common/header.jsp" />
   <jsp:include page="../common/side.jsp"/>
   <div style="text-align:center;">
      <br><br>  
      <p class="title">Q&amp;A</p>
      <input align="center" type="button" value="문의하기"
         class="btn btn_thatch" onclick="location.href='inquiry_write.jsp'" /> <br>
      </div>
      <br><br><br>  
      <div class="content_wrap">
      <div style="text-align: right;">
        <span><input id="name" type="radio" name="select" ><label for="name">이름</label>&nbsp;
	    <input id="title" type="radio" name="select" checked><label for="title">제목</label>&nbsp;
	    <input id="content" type="radio" name="select"><label for="content">내용</label>&nbsp;
	    <input type="text" name="searchText" value="" />
	    <input style="background-color: #464646;
		color: white;" type="submit" value="검색" /></span>
      </div>
      <br>
       <table>
      <colgroup>
         <col width="50">
         <col width="50">
         <col width="*">
         <col width="150">
         <col width="150">
         <col width="150">
     </colgroup>
     <thead>
         <tr>
             <th scope="col"><div class="th_center">번호</div></th>
             <th scope="col"><div class="th_center">&nbsp;</div></th>
             <th scope="col"><div class="th_center">제목</div></th>
             <th scope="col"><div class="th_center">작성자</div></th>
             <th scope="col"><div class="th_center">작성일</div></th>
             <th scope="col"><div class="th_center">조회수</div></th>
         </tr>
     </thead>
            <tbody>     
               <tr>
                   <td><div class="td_center">+</div></td>
                   <td><div class="td_left">&nbsp;<img src="<%=path%>/img/board/mic.png" class="mic"></div></td>
                   <td colspan="4"><div class="td_left"><a href="../board/notice.jsp">
                   2021년 설 연휴 이전 배송이 2월10일 마감되어 15일 이후 발송됩니다.</div></td>
               </tr>
               <tr>
                   <td><div class="td_center">8</div></td>
                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
                   <td><div class="td_left"><a href="../board/inquiry.jsp">재입고문의</a></div></td>
                   <td><div class="td_center">홍길동</td>
                   <td><div class="td_center">2021/02/10</div></td>
                   <td><div class="td_center">2</div></td>
               </tr>
               <tr>
                   <td><div class="td_center">7</div></td>
                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
                   <td><div class="td_left"><a href="../board/inquiry.jsp">취소요청</a></div></td>
                   <td><div class="td_center">홍길동</td>
                   <td><div class="td_center">2021/02/09</div></td>
                   <td><div class="td_center">15</div></td>
               </tr>
               <tr>
                   <td><div class="td_center">6</div></td>
                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
                   <td><div class="td_left"><a href="../board/inquiry.jsp">환불요청</a></div></td>
                   <td><div class="td_center">홍길동</td>
                   <td><div class="td_center">2021/02/07</div></td>
                   <td><div class="td_center">11</div></td>
               </tr>
               <tr>
                   <td><div class="td_center">5</div></td>
                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
                   <td><div class="td_left"><img src="<%=path%>/img/board/reply.png" style="padding-left: 10px;" class="reply">
                   <a href="../board/inquiry.jsp">환불요청</a></div></td>
                   <td><div class="td_center">운영자</td>
                   <td><div class="td_center">2021/02/08</div></td>
                   <td><div class="td_center">11</div></td>
               </tr>
               <tr>
                   <td><div class="td_center">4</div></td>
                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
                   <td><div class="td_left"><a href="../board/inquiry.jsp">주문건요</a></div></td>
                   <td><div class="td_center">홍길동</td>
                   <td><div class="td_center">2021/02/07</div></td>
                   <td><div class="td_center">42</div></td>
               </tr>
               <tr>
                   <td><div class="td_center">3</div></td>
                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
                   <td><div class="td_left"><img src="<%=path%>/img/board/reply.png" style="padding-left: 10px;" class="reply">
                   <a href="../board/inquiry.jsp">주문건요</a></div></td>
                   <td><div class="td_center">운영자</td>
                   <td><div class="td_center">2021/02/08</div></td>
                   <td><div class="td_center">41</div></td>
               </tr>
               <tr>
                   <td><div class="td_center">2</div></td>
                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
                   <td><div class="td_left"><a href="../board/inquiry.jsp">입고문의</a></div></td>
                   <td><div class="td_center">홍길동</td>
                   <td><div class="td_center">2021/02/07</div></td>
                   <td><div class="td_center">53</div></td>
               </tr>
               <tr>
                   <td><div class="td_center">1</div></td>
                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
                   <td><div class="td_left"><img src="<%=path%>/img/board/reply.png" style="padding-left: 10px;" class="reply">
                   <a href="../board/inquiry.jsp">입고문의</a></div></td>
                   <td><div class="td_center">운영자</td>
                   <td><div class="td_center">2021/02/08</div></td>
                   <td><div class="td_center">50</div></td>
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