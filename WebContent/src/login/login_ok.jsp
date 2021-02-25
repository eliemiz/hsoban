<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*"
    import="hsoban.vo.*" import="hsoban.dao.*" 
    import="java.io.PrintWriter"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<% request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
%>    
<jsp:useBean id="account" class="hsoban.vo.Account" scope="page"/>
<jsp:setProperty name="account" property="id" />
<jsp:setProperty name="account" property="pass" />
<jsp:setProperty name="account" property="account_id" />
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
Account temp = dao.getAccount(account.getId(), account.getPass());

int result = dao.login(account.getId(), account.getPass());
if (result == 1){ 
	PrintWriter script = response.getWriter();
	script.println("<script>");
	session.setAttribute("sessionId",temp.getAccount_id());
	//session.setAttribute("sessionId2",account.getId());
	//session.setAttribute("sessionId3",account.getPass());
	//script.println("location.href = '/hsoban/src/test/sessionTest.jsp'");
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
   <h3></h3>
</body>
</html>