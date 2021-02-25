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
<title>아이디 찾기</title>
<link rel="stylesheet" href="<%=path%>/css/login.css">
<style>
body {
   text-align: center;
   margin-top: 50px;
}
pre {
	font-size:12px;
}
table {
	border-collapse:collapse;
}
th{
	padding : 4px;
	height:100px;
	width:600px;
	background:#f7f7f7; 
	font-size:12px;
	text-align:center;
}
test
</style>
</head>
<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	
	if (name == null) name = "";
	if (email == null) email = "";
	if (phone == null) phone = "";
	
	Dao_Account dao = new Dao_Account();
	ArrayList<Account> list = new ArrayList<Account>();
	if(name != "" && email != ""){
   		list.add(dao.getAccount2(name, email));
    } else if(name != "" && phone != ""){
   	 	list.add(dao.getAccount3(name, phone));
    }
%>
<body>
<jsp:include page="../common/header.jsp"/>
<jsp:include page="../common/side.jsp"/>
<div class="content_wrap">
<p class="p_title">아이디 찾기</p>
<pre align="center">
회원가입 시 입력하신 이름 + 이메일 또는 휴대폰 번호로 아이디를 확인하실 수 있습니다.


</pre>

<table border align='center' >
<%
  for(Account account : list){
%>
<tr><th>아이디: <%=account.getId()%><br><br>전체 아이디는 고객센터로 문의해 주세요.<br> 
<%
  }
%>
</th></tr>
</table><br>
<div style="text-align:center;"><a href="login.jsp">
<span><input type="button" class="btn btn_color" value="로그인" style="height:40px; width:230px;"></span></a></div>
</div>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>