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

</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<div style="text-align:center;">
	<p style= "font-size: 30px;">REVIEW</p><br>
	</div>
	<br><br>
 <form>
       <tr>
       <td height=20 align= center bgcolor=#ccc><font color=white> 글쓰기</font></td>
       </tr>
       <tr>
       <td bgcolor=white>
       <table class = "table">
               <tr>
               <td>NAME</td>
               <td>temp123</td>
               </tr>
               <tr>
               <td>PASSWORD</td>
               <td><input type = password name = pass size=10 maxlength=10></td>
               </tr>
               <tr>
               <td>TITLE</td>
               <td><input type = text name = title size=60></td>
               </tr>
               <tr>
               <td>CONTENT</td>
               <td><textarea name = content cols=85 rows=15 
               placeholder="안내글 예제> 신규 게시글을 작성시에는, 반드시 회원ID를 적어 주세요!"></textarea></td>
               </tr>
               <tr>
               <td>FILE</td>
               <td><input type="file" id="avatar" name="avatar" accept="image/png, image/jpeg"></td>
               </tr>            
      </table>
      <br>
      	<div style="text-align:right;">
		<input type="button" value="완료" class="btn btn_thatch">
		<input type="button" value="목록보기" class="btn btn_normal">
		</div>
 </form>
</body>
</html>