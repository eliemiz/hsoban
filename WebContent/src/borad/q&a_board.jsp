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
<style>
ht, td{
text-align: center;
}
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<div style="text-align:center;">
	<p style= "font-size: 30px;">Q&A</p><br>
	<input align="center" type="button" value="문의하기" class="btn btn_thatch">
	</div>
	<br><br>
    <div style="text-align:right;">
    <span>
	    <input id="name" type="radio" name="select" >이름
	    <input id="title" type="radio" name="select" >제목
	    <input id="content" type="radio" name="select" >내용
    <input type="text" name="searchText" value="" />
    <input style="background-color: #464646;
	color: white;" type="submit" value="검색"/></span>
    </div>
       <table class="table table-hover">
	   <thead>
	      <tr>
	      	<th>번호</th>
	      	<th>제목</th>
	      	<th>작성자</th>
	      	<th>날짜</th>
	      	<th>조회수</th>
	      </tr>
	      </thead>
	      <tbody>
	      <tr>
	        <td>8</td>
	      	<td>2020년 설 연휴 이전 배송이 마감되어 28일 이후 배송됩니다.</td>
	      	<td>홍길동</td>
	      	<td>2020/02/01</td>
	      	<td>100</td>
	      </tr>
	      <tr>
	        <td>7</td>
	      	<td>2020년 설 연휴 이전 배송이 마감되어 28일 이후 배송됩니다.</td>
	      	<td>운영자</td>
	      	<td>2020/02/01</td>
	      	<td>100</td>
	      </tr>
	      <tr>
	        <td>6</td>
	      	<td>2020년 설 연휴 이전 배송이 마감되어 28일 이후 배송됩니다.</td>
	      	<td>홍길동</td>
	      	<td>2020/02/01</td>
	      	<td>100</td>
	      </tr>
	      <tr>
	        <td>5</td>
	      	<td>2020년 설 연휴 이전 배송이 마감되어 28일 이후 배송됩니다.</td>
	      	<td>운영자</td>
	      	<td>2020/02/01</td>
	      	<td>100</td>
	      </tr>
	      <tr>
	        <td>4</td>
	      	<td>2020년 설 연휴 이전 배송이 마감되어 28일 이후 배송됩니다.</td>
	      	<td>홍길동</td>
	      	<td>2020/02/01</td>
	      	<td>100</td>
	      </tr>
	      <tr>
	        <td>3</td>
	      	<td>2020년 설 연휴 이전 배송이 마감되어 28일 이후 배송됩니다.</td>
	      	<td>운영자</td>
	      	<td>2020/02/01</td>
	      	<td>100</td>
	      </tr>
	      <tr>
	        <td>2</td>
	      	<td>2020년 설 연휴 이전 배송이 마감되어 28일 이후 배송됩니다.</td>
	      	<td>홍길동</td>
	      	<td>2020/02/01</td>
	      	<td>100</td>
	      </tr>
	      <tr>
	        <td>1</td>
	      	<td>2020년 설 연휴 이전 배송이 마감되어 28일 이후 배송됩니다.</td>
	      	<td>운영자</td>
	      	<td>2020/02/01</td>
	      	<td>100</td>
	      </tr>
	      </tbody>
	   
   </table>
   <br>
   <div style="text-align:center;">
   <input type="button" value="&nbsp;1&nbsp;" class="btn_normal">
   <input type="button" value="&nbsp;2&nbsp;" class="btn_normal">
   <input type="button" value="&nbsp;3&nbsp;" class="btn_normal">
   <input type="button" value="&nbsp;>&nbsp;" class="btn_normal">
   <input type="button" value=">>" class="btn_normal">
   
   </div>
</body>
</html>