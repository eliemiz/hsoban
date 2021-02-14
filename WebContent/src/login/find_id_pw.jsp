<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*"%>
<%
   request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
   font-weight:bold;
}

</style>
<body>
<jsp:include page="../common/header.jsp"/>
<div class="content_wrap">
<p class="p_title">아이디/비밀번호 찾기</p>
<br><br>
<p class="p_subtit" align="left">아이디 찾기</p><hr width="1180">
<pre align="left" style="color:#777777;">회원가입 시, 입력하신 이름 + 이메일 또는 휴대폰 번호로 아이디를 확인하실 수 있습니다.

</pre>
   <div align="left" style="font-size:12px;">
      <input type="radio" name="tempName" id="mail1" onchange="changeForm('mail1')" checked><label for="mail1">이메일로 찾기</label>
      <input type="radio" name="tempName" id="phone1" onchange="changeForm('phone1')"><label for="phone1">휴대폰 번호로 찾기</label>
   </div><br>
   <form id="form1">
      <table border>
         <tr><th class="th_center">이&nbsp;름</th><td class="td_left"><input type="text" name="username"></td></tr>
         <tr><th class="th_center">이메일</th><td class="td_left"><input type="text" name="mail" ></td></tr></table><br>
         <div style="text-align:center;"><a href="find_id_fin.jsp"><span>
         <input type="button" class="btn btn_color" value="아이디찾기" style="height:30px; width:160px;"></span></a>
         <a href="login.jsp"><span>
         <input type="button" class="btn btn_black" value="로그인" style="height:30px; width:160px;"></span></a></div>   
   </form>
   <form id="form2">
      <table border>
         <tr><th class="th_center">이&nbsp;름</th><td class="td_left"><input type="text" name="username"></td></tr>
         <tr><th class="th_center">휴대폰 번호</th><td class="td_left"><input type="text" name="phone" ></td></tr></table><br>
         <div style="text-align:center;"><a href="find_id_fin.jsp"><span>
         <input type="button" class="btn btn_color" value="아이디찾기" style="height:30px; width:160px;"></span></a>
         <a href="login.jsp"><span>
         <input type="button" class="btn btn_black" value="로그인" style="height:30px; width:160px;"></span></a></div>
   </form><br><br>
<p class="p_subtit" align="left">임시 비밀번호 발급</p><hr width="1180">
<pre align="left" style="color:#777777;">가입하신 아이디 + 이메일 또는 휴대폰 번호를 입력, 본인인증을 통해 이메일 또는 휴대폰 번호로
임시 비밀번호를 보내드립니다. 확인 후 로그인하셔서 반드시 비밀번호를 변경하시기 바랍니다.</pre><br>
   <div align="left" style="font-size:12px;">
      <input type="radio" name="tempName2" id="mail2" onchange="changeForm('mail2')" checked><label for="mail2">이메일로 찾기</label>
      <input type="radio" name="tempName2" id="phone2" onchange="changeForm('phone2')"><label for="phone2">휴대폰 번호로 찾기</label>
   </div><br>
   <form id="form3">
      <table border>
         <tr><th class="th_center">이&nbsp;름</th><td class="td_left"><input type="text" name="username"></td></tr>
         <tr><th class="th_center">이메일</th><td class="td_left"><input type="text" name="mail" ></td></tr></table><br>
         <div style="text-align:center;"><a href="find_pw_fin.jsp"><span>
         <input type="button" class="btn btn_color" value="임시 비밀번호 발급" style="height:30px; width:160px;"></span></a>
         <a href="login.jsp"><span>
         <input type="button" class="btn btn_black" value="로그인" style="height:30px; width:160px;"></span></a></div>   
   </form>
   <form id="form4">
      <table border>
         <tr><th class="th_center">이&nbsp;름</th><td class="td_left"><input type="text" name="username"></td></tr>
         <tr><th class="th_center">휴대폰 번호</th><td class="td_left"><input type="text" name="phone" ></td></tr></table><br>
         <div style="text-align:center;"><a href="find_pw_fin.jsp"><span>
         <input type="button" class="btn btn_color" value="임시 비밀번호 발급" style="height:30px; width:160px;"></span></a>
         <a href="login.jsp"><span>
         <input type="button" class="btn btn_black" value="로그인" style="height:30px; width:160px;"></span></a></div>
   </form></div>
<jsp:include page="../common/footer.jsp"/>
</body>
<script type="text/javascript">

   function changeForm(element) {
      var form1 = document.querySelector('#form1');
      var form2 = document.querySelector('#form2');
      var form3 = document.querySelector('#form3');
      var form4 = document.querySelector('#form4');
      
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
      } else if (element == 'mail2') {
         form3.style.display = 'inline-block';
         form4.style.display = 'none';
         /* document.querySelector('#form3').style.visibility = 'visible';
         document.querySelector('#form3').style.width = 'auto';
         
         document.querySelector('#form4').style.visibility = 'hidden';
         document.querySelector('#form4').style.width = '0px'; */
      } else if (element == 'phone2') {
         form3.style.display = 'none';
         form4.style.display = 'inline-block';
         /* document.querySelector('#form3').style.visibility = 'hidden';
         document.querySelector('#form3').style.width = '0px';
         
         document.querySelector('#form4').style.visibility = 'visible';
         document.querySelector('#form4').style.width = 'auto'; */
      }
   }
</script>
</html>