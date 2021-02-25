<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">

window.onload=function(){
    
	   alert("회원탈퇴되었습니다.\n메인화면으로 이동하겠습니다.")
		location.href="../main/main.jsp";
};

</script>
<body>
<%
session.invalidate();
%>

</body>

</html>