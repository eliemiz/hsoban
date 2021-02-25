<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*"
    import="hsoban.vo.*" import="hsoban.dao.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath(); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인 페이지</title>
<link rel="stylesheet" href="<%=path%>/css/common.css">
<link rel="stylesheet" href="<%=path%>/css/login.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<style>
body {
   text-align: center;
   margin-top: 50px;
     }
form { 
margin: 0 auto; 
width:250px;
	 }     
</style>
</head>

<body>
<%
   String account_id = request.getParameter("account_id");
   String id = request.getParameter("id");
   String pass = request.getParameter("pass");
   String name = request.getParameter("name");
   String email = request.getParameter("email");
   String phone = request.getParameter("phone");

   if (account_id == null || account_id.trim().equals("")){
      account_id = "";
   }
   if (id == null) id = "";
   if (pass == null) pass = "";
   if (name == null) name = "";
   if (email == null) email = "";
   if (phone == null) phone = "";
    
   Dao_Account dao = new Dao_Account();
   int result = dao.login(id, pass);
   ArrayList<Account> list = new ArrayList<Account>();
      if(account_id != ""){
        list.add(dao.getAccount(Integer.parseInt(account_id)));
      } else if(id != "" && pass != ""){
         list.add(dao.getAccount(id, pass));
      } else if(name != "" && email != ""){
    	 list.add(dao.getAccount2(name, email));
      } else if(name != "" && phone != ""){
    	 list.add(dao.getAccount3(name, phone));
      } else {
         list = dao.getAccountList();
      }
%>
<div class="content_wrap">
<br>
<p class="p_title" align="center">로그인</p>
<form method="post">
	<div style="padding-right:200px; font-family: 'Nanum Gothic'; font-size: 12px;">아이디<br></div>
		<input type="text" name="id" value="<%=id%>"size="28"><br><br>
	<div style="padding-right:190px; font-family: 'Nanum Gothic'; font-size: 12px;">비밀번호<br></div>
		<input type="text" name="pass" value="<%=pass%>" size="28"><br><br>
	<div style="padding-right:160px;"><input type="checkbox" name="safety" value="1" checked>보안접속</div>
		<div style="text-align:center;"><a href="/hsoban/src/login/loginTest.jsp">
	<span><input type="button" class="btn btn_black" value="로그인" style="height:40px; width:230px;"></span></a></div></form><!-- 메인이동 -->
	<br><hr width="230"><br>
	<div style="text-align:center;"><a href="find_id_pw.jsp">
	<span><input type="button" class="btn btn_gray" value="아이디/비밀번호찾기" style="height:40px; width:230px;"></span></a></div>
		<br>
	<div style="text-align:center;">
	<a href="signup.jsp">
	<span><input type="button" class="btn btn_black" value="회원가입" style="height:40px; width:230px;"></span>
</a></div>
</div>
<table id="accountList">
      <tr>
         <th>account_id</th>
         <th>name</th>
         <th>id</th>
         <th>pass</th>
         <th>birthday</th>
         <th>gender</th>
         <th>post</th>
         <th>address</th>
         <th>address2</th>
         <th>email</th>
         <th>phone</th>
         <th>phone2</th>
         <th>mail_recv</th>
         <th>sms_recv</th>
         <th>auth</th>
      </tr>
      <%
      for(Account account : list){
      %>
      <tr><%=account.getAccount_id()%>
         <td><%=account.getAccount_id()%></td>
         <td><%=account.getName()%></td>
         <td><%=account.getId()%></td>
         <td><%=account.getPass()%></td>
         <td><%=account.getBirthday()%></td>
         <td><%=account.getGender()%></td>
         <td><%=account.getPost()%></td>
         <td><%=account.getAddress()%></td>
         <td><%=account.getAddress2()%></td>
         <td><%=account.getEmail()%></td>
         <td><%=account.getPhone()%></td>
         <td><%=account.getPhone2()%></td>
         <td><%=account.isMail_recv()%></td>
         <td><%=account.isSms_recv()%></td>
         <td><%=account.getAuth()%></td>
      </tr>
      <%
      }
      %>
   </table>
</body>
</html>