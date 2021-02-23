<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" %>
<% 
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=path%>/resources/css/a00_com.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<body>
	
</body>
<script>
	if(id){
		console.log('id 변수가 없으므로 에러가 발생한다.');
	}
	alert('의심이 가는 코드 뒤에 alert. alert창이 안 뜨면 이 앞에서 문제 발생했다는 뜻');
	
	// 실행한 크롬 페이지에서 F12를 누른 뒤 console창을 보면 아래와 같은 에러가 발생
	// Uncaught ReferenceError: id is not defined
    // at debug_test.jsp:15
    
    // debug_test.jsp:15 부분을 클릭하면 코드 상의 어디에서 에러가 발생했는지 알 수 있다.

</script>
</html>