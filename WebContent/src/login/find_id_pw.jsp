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
<title>아이디/비밀번호 찾기</title>
<link rel="stylesheet" href="<%=path%>/css/login.css">
</head>

<style>
body {
   text-align: center;
   margin-top: 50px;
}
pre {
   font-size:12px;
}
/* form {
   visibility: hidden;
   width: 0px;
   display: inline-block;
} */

#form1, #form3 {
   display:inline-block;
}

#form2, #form4 {
   display:none;
}

table {
   border-collapse:collapse;
}
div {
   font-size:4px;
   
}
</style>
<script>

</script>

<body>
<jsp:include page="../common/header.jsp"/>
<jsp:include page="../common/side.jsp"/>
<div class="content_wrap">
<p class="p_title">아이디 찾기</p>
<p class="p_subtit" align="left">아이디 찾기</p><hr width="1180">
<pre align="left" style="color:#777777;">회원가입 시, 입력하신 이름 + 이메일 또는 휴대폰 번호로 아이디를 확인하실 수 있습니다.
</pre>
   <div align="left" style="font-size:12px;">
      <input type="radio" name="tempName" id="mail1" onchange="changeForm('mail1')" checked><label for="mail1">이메일로 찾기</label>
      <input type="radio" name="tempName" id="phone1" onchange="changeForm('phone1')"><label for="phone1">휴대폰 번호로 찾기</label>
   </div><br>
   <form id="form1" method="post" action="find_id_fin.jsp">
      <table border>
      
         <tr><th class="th_center">이&nbsp;름</th><td class="td_left"><input type="text" name="name"></td></tr>
         <tr><th class="th_center">이메일</th><td class="td_left"><input type="text" name="email"></td></tr></table><br>
         
         <div style="text-align:center;"><span>
         <input type="button" id="searchButton1" class="btn btn_color" value="아이디찾기" style="height:30px; width:160px;"></span>
         <a href="login.jsp"><span>
         <input type="button" class="btn btn_black" value="로그인" style="height:30px; width:160px;"></span></a></div>   
   </form>
   <form id="form2" method="post" action="find_id_fin.jsp">
      <table border>
      
         <tr><th class="th_center">이&nbsp;름</th><td class="td_left"><input type="text" name="name"></td></tr>
         <tr><th class="th_center">휴대폰 번호</th><td class="td_left"><input type="text" name="phone"></td></tr></table><br>
         
         <div style="text-align:center;"><span>
         <input type="button" id="searchButton2" class="btn btn_color" value="아이디찾기" style="height:30px; width:160px;"></span>
         <a href="login.jsp"><span>
         <input type="button" class="btn btn_black" value="로그인" style="height:30px; width:160px;"></span></a></div>
   </form><br><br>
</div>
<jsp:include page="../common/footer.jsp"/>
</body>
<script type="text/javascript">

function changeForm(element) {
      var form1 = document.querySelector('#form1');
      var form2 = document.querySelector('#form2');
     
      
      if (element == 'mail1') {
         form1.style.display = 'inline-block';
         form2.style.display = 'none';
         /* document.querySelector('#form1').style.visibility = 'visible';
         document.querySelector('#form1').style.width = 'auto';
         
         document.querySelector('#form2').style.visibility = 'hidden';
         document.querySelector('#form2').style.width = '0px'; */
         
      } else if (element == 'phone1') {
         form1.style.display = 'none';
         form2.style.display = 'inline-block';
         /* document.querySelector('#form1').style.visibility = 'hidden';
         document.querySelector('#form1').style.width = '0px';
         
         document.querySelector('#form2').style.visibility = 'visible';
         document.querySelector('#form2').style.width = 'auto'; */
      } 
   }
   var searchButton1 = document.querySelector("#searchButton1");
   searchButton1.onclick = function() {
      
      document.querySelector('#form1').submit();
   }
   var searchButton2 = document.querySelector("#searchButton2");
   searchButton2.onclick = function() {
	  
      document.querySelector('#form2').submit();
   }
</script>
</html>