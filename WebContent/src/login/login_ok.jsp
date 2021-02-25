<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*"
    import="hsoban.vo.*" import="hsoban.dao.*" 
    import="java.io.PrintWriter"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<% request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
%>    
<jsp:useBean id="account" class="hsoban.vo.Account" scope="page"/> <!-- 한명의 회원 정보를 담는 User클래스를 자바 빈즈로 사용하며 현재 page안에서만 빈즈를 사용 -->
<jsp:setProperty name="account" property="id" />
<jsp:setProperty name="account" property="pass" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
   href="<%=path%>/a00_com/a00_com.css">
<style>

</style>
<script type="text/javascript" src="<%=path%>/a00_com/jquery-3.5.1.js"></script>
<script type="text/javascript">

</script>
</head>
<%


Dao_Account dao = new Dao_Account();
int result = dao.login(account.getId(), account.getPass());
if (result == 1){ 
	PrintWriter script = response.getWriter();
	session.setAttribute("sessionId",account.getAccount_id());
	script.println("<script>");
	script.println("location.href = '/hsoban/src/main/main.jsp'"); 
	script.println("</script>");
}
else if (result == 0){ 
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('비밀번호가 틀립니다.')");	
	script.println("history.back()"); 
	script.println("</script>");
}
else if (result == -2){ 
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('존재하지 않는 아이디입니다.')");	
	script.println("history.back()");	
	script.println("</script>");
}
else if (result == -1){ 
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('데이터베이스에 오류가 발생했습니다.')");	
	script.println("history.back()");	
	script.println("</script>");
}
%>
<body>
   <h3>제목</h3>
   <table>
      <tr><th>타이틀</th></tr>
      <tr><td>내용</td></tr>
   </table>
</body>
</html>