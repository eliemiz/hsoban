<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*"
	import="hsoban.dao.*" import="hsoban.vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="bMgr" class="hsoban.dao.Dao_Review" />
<% request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REVIEW</title>
<link rel="stylesheet" href="<%=path%>/css/common.css">
<link rel="stylesheet" href="<%=path%>/css/board.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<style>
.paging { padding-top: 20px; height: 17px; text-align: center; line-height: 0; vertical-align: top; }
.paging li { display: inline;}
.paging li a, .paging li strong { 
overflow: hidden; width: auto; height: 15px; padding: 0; color: #999; cursor: pointer; 
background:#ffffff; width: 30px; height: 30px; line-height: 30px; border: #e7e7e7 1px solid; 
display: inline-block;transition:all .2s linear; -webkit-transition:all .2s linear; 
transition:all .2s linear; -ms-transition:all .2s linear; -khtml-transition:all .2s linear; o-transition:all .2s linear;
}
.paging li strong { font-weight: bold; letter-spacing: -1px; background:#e7e7e7; }
</style>

</head>
<%
String review_id = request.getParameter("review_id");
//String review_id = "122";
if (review_id == null || review_id.trim().equals("")) {
	         review_id = "0";
}

Dao_Review dao = new Dao_Review();
ArrayList<Review> rlist = dao.getReviewList();


// product 로드
Dao_Product daoProduct = new Dao_Product();

Dao_Account daoAccount = new Dao_Account();

%>
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
    	<span><input id="name" type="radio" name="select" ><label for="name">이름</label>&nbsp;
	    <input id="title" type="radio" name="select" checked><label for="title">제목</label>&nbsp;
	    <input id="contents" type="radio" name="select"><label for="content">내용</label>&nbsp;
	    <input type="text" name="searchText" value="" />
	    <input type="button" style="background-color: #464646;
		color: white;"  value="검색" onClick="javascript:check()"></span>
    </div>
        <br>
        <form name="searchFrm" method="post" action="reivew_board.jsp">
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
	    
	    <%
	    int cnt=8;
	    for (Review rev : rlist){
	    	Review review = dao.getReview(Integer.parseInt(review_id));
	    	Product product = daoProduct.getProdList(review.getProduct_id(), review.getColor());
	    	Account account = daoAccount.getAccount(review.getAccount_id());
		%>		
		<tr onclick="callDetail(<%=review.getReview_id() %>)">				
			<td><div class="td_center"><%=cnt--%></div></td>
			 <td><div class="td_center"><img src="<%=path%><%=product.getThumbnail() %>" class="img"></div></td>
			<td><div class="td_center">
			<img src="<%=path%>/img/board/review.jpg" class="img" ></div></td>
			<td><div class="td_left"><a href="../board/review.jsp"><%=review.getTitle() %></a></div></td>
			<td><div class="td_center"><%=account.getName() %></div></td>
			<td><div class="td_center"><%=review.getPosting_date() %></div></td>
			<td><div class="td_center"><%=review.getViews() %></div></td>
		</tr>
		<%
		}
		%> 
          
      </tbody>
   </table>
   </form>
      <ol class="paging">
   		<li><strong>1</strong></li>
   </ol>

   </div>
   <jsp:include page="../common/footer.jsp" />
</body>
<script type="text/javascript">
function check(){
	if(document.searchFrm.keyWord.value=""){
		alert("검색어를 입력하세요.");
		document.searchFrm.keyWord.focus();
		return;
	}
	document.searchFrm.submit();
}
function callDetail(review_id){
	var url = "review.jsp?";
	url += "review_id=" + review_id;	
	location.href = url;
}	
</script>
</html>