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
<title>NOTICE</title>
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
      <p class="title">NOTICE</p>
      <input align="center" type="button" value="글쓰기" class="btn btn_thatch" /><br>
      </div>
      <br><br><br>  
      <div class="content_wrap">
      <div style="text-align: right;">
        <span><input id="name" type="radio" name="select" ><label for="name">이름</label>&nbsp;
	    <input id="title" type="radio" name="select" checked><label for="title">제목</label>&nbsp;
	    <input id="contents" type="radio" name="select"><label for="content">내용</label>&nbsp;
	    <input type="text" name="searchText" value="" />
	    <input style="background-color: #464646;
		color: white;" type="submit" value="검색" /></span>
      </div>
      <br>
       <table>
      <colgroup>
         <col width="50">
         <col width="40">
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
                   <td><div class="td_left">2021년 설 연휴 이전 배송이 2월10일 마감되어 15일 이후 발송됩니다.</div></td>
                   <td><div class="td_center">운영자</td>
                   <td><div class="td_center">2020/02/03</div></td>
                   <td><div class="td_center">200</div></td>               
               </tr>
               <tr>
                   <td><div class="td_center">+</div></td>
                   <td><div class="td_left">&nbsp;<img src="<%=path%>/img/board/mic.png" class="mic"></div></td>
                   <td><div class="td_left"><a href="../board/notice.jsp">화소반 고객 감사 이벤트</a></div></td>
                   <td><div class="td_center">운영자</td>
                   <td><div class="td_center">2020/02/03</div></td>
                   <td><div class="td_center">100</div></td>               
               </tr>
               <tr>
                   <td><div class="td_center">+</div></td>
                   <td><div class="td_left">&nbsp;<img src="<%=path%>/img/board/mic.png" class="mic"></div></td>
                   <td><div class="td_left"><a href="../board/notice.jsp">화소반 고객 감사 이벤트</a></div></td>
                   <td><div class="td_center">운영자</td>
                   <td><div class="td_center">2020/02/03</div></td>
                   <td><div class="td_center">120</div></td>               
               </tr>
               <tr>
                   <td><div class="td_center">+</div></td>
                   <td><div class="td_left">&nbsp;<img src="<%=path%>/img/board/mic.png" class="mic"></div></td>
                   <td><div class="td_left"><a href="../board/notice.jsp">화소반 고객 감사 이벤트</a></div></td>
                   <td><div class="td_center">운영자</td>
                   <td><div class="td_center">2020/02/03</div></td>
                   <td><div class="td_center">198</div></td>               
               </tr>
               <tr>
                   <td><div class="td_center">+</div></td>
                   <td><div class="td_left">&nbsp;<img src="<%=path%>/img/board/mic.png" class="mic"></div></td>
                   <td><div class="td_left"><a href="../board/notice.jsp">화소반 고객 감사 이벤트</a></div></td>
                   <td><div class="td_center">운영자</td>
                   <td><div class="td_center">2020/02/03</div></td>
                   <td><div class="td_center">2</div></td>               
               </tr>
               <tr>
                   <td><div class="td_center">+</div></td>
                   <td><div class="td_left">&nbsp;<img src="<%=path%>/img/board/mic.png" class="mic"></div></td>
                   <td><div class="td_left"><a href="../board/notice.jsp">화소반 고객 감사 이벤트</a></div></td>
                   <td><div class="td_center">운영자</td>
                   <td><div class="td_center">2020/02/03</div></td>
                   <td><div class="td_center">178</div></td>               
               </tr>
               <tr>
                   <td><div class="td_center">+</div></td>
                   <td><div class="td_left">&nbsp;<img src="<%=path%>/img/board/mic.png" class="mic"></div></td>
                   <td><div class="td_left"><a href="../board/notice.jsp">화소반 고객 감사 이벤트</a></div></td>
                   <td><div class="td_center">운영자</td>
                   <td><div class="td_center">2021/02/03</div></td>
                   <td><div class="td_center">200</div></td>               
               </tr>
               <tr>
                   <td><div class="td_center">+</div></td>
                   <td><div class="td_left">&nbsp;<img src="<%=path%>/img/board/mic.png" class="mic"></div></td>
                   <td><div class="td_left"><a href="../board/notice.jsp">화소반 고객 감사 이벤트</a></div></td>
                   <td><div class="td_center">운영자</td>
                   <td><div class="td_center">2020/02/03</div></td>
                   <td><div class="td_center">230</div></td>               
               </tr>
               <tr>
                   <td><div class="td_center">+</div></td>
                   <td><div class="td_left">&nbsp;<img src="<%=path%>/img/board/mic.png" class="mic"></div></td>
                   <td><div class="td_left"><a href="../board/notice.jsp">화소반 고객 감사 이벤트</a></div></td>
                   <td><div class="td_center">운영자</td>
                   <td><div class="td_center">2020/02/03</div></td>
                   <td><div class="td_center">300</div></td>               
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