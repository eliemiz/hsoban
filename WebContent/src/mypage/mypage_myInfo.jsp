<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" import="java.net.*" import="selection.*"
    import="hsoban.dao.*" import="hsoban.vo.*"
    %>
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
<title>회원정보 수정</title>
</head>
<link rel="stylesheet" href="/hsoban/css/allCommon.css">
<link rel="stylesheet" href="/hsoban/css/common.css">
<link rel="stylesheet" href="/hsoban/css/mypage.css">
<script type="text/javascript">


 
</script>
<%--

String account_id = request.getParameter("account_id");
if (account_id == null || account_id.trim().equals("")){
	account_id = "0";} 


Dao_Account dao = new Dao_Account();
Account account = dao.getAccount(Integer.parseInt(account_id));

 --%>
<%
int account_id=100043;
Dao_Account dao = new Dao_Account();
Account account = dao.getAccount(account_id);

String name = request.getParameter("name");
if (name == null) {name = "";}
String id = request.getParameter("id");
if (id == null) {id = "";}
String pass = request.getParameter("pass");
if (pass == null) {pass = "";}
String birthday_s = request.getParameter("birthday_s");
if (birthday_s == null) {birthday_s = "";}
String gender = request.getParameter("gender");
if (gender == null) {gender = "";}
String post = request.getParameter("hpost1");
if (post == null || post.trim().equals("")){
	post = "0";}
String address = request.getParameter("haddress1");
if (address == null) {address = "";}
String address2 = request.getParameter("haddress2");
if (address2 == null) {address2 = "";}
String email = request.getParameter("email");
if (email == null) {email = "";}
String phone = request.getParameter("phone_1")+"-"+request.getParameter("phone_2")+"-"+request.getParameter("phone_3");
if (phone == null) {phone = "";}
String phone2 = request.getParameter("phone2_1")+"-"+request.getParameter("phone2_2")+"-"+request.getParameter("phone2_3");
if (phone2 == null) {phone2 = "";}
String mail_recv = request.getParameter("mail_recv");
if (mail_recv == null) {mail_recv = "";}
String sms_recv = request.getParameter("sms_recv");
if (sms_recv == null) {sms_recv = "";}
String auth = request.getParameter("auth");
if (auth  == null) {auth  = "";} 

String proc = request.getParameter("proc");
if (proc == null) {
	proc = "";
}
if (proc.equals("update")){
	
	Account newAccount = new Account(account_id, name, id, pass, 
			birthday_s, gender, Integer.parseInt(post), address, address2, email, phone,
			phone2, Boolean.parseBoolean(mail_recv), Boolean.parseBoolean(sms_recv), auth);
	
	dao.updateAccount(newAccount);
	response.sendRedirect("../mypage/mypage_main.jsp");
}
%>
<%--
if (proc.equals("update")){
	
	Account newAccount = new Account(Integer.parseInt(account_id), name, id, pass, 
			birthday_s, gender, Integer.parseInt(post), address, address2, email, phone,
			phone2, Boolean.parseBoolean(mail_recv), Boolean.parseBoolean(sms_recv), auth);
	
	dao.updateAccount(newAccount);
	response.sendRedirect("../mypage/mypage_main.jsp");
}
 --%>
<body>
<jsp:include page="../common/header.jsp"/>
<jsp:include page="../common/side.jsp"/>

<div class="content_wrap">
<div id="content">
                <div id="join">
                    <div class="bbs-tit">회원정보</div>

<form name="accountForm" method="post" id="accountForm" >
<input type="hidden" name="proc" value="">

                    <div id="personInfo">
                        <table class="person-tb">
                            <colgroup>
                                <col width="135"><col width="*">
                            </colgroup>
                                                        <tbody><tr>
                                <th>
                                    <div class="tb-l pl-30"><span class="red"></span>■ 이름</div>
                                </th>
                                <td>
                                    <div class="tb-l pl-6">
                                        <input type="text" name="name" id="name" value="<%=account.getName()%>" class="MS_input_txt w137" size="15" maxlength="30">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tb-l pl-30"><span class="red"></span>■ 아이디</div>
                                </th>
                                <td>
                                    <div class="tb-l pl-6">
                                    &nbsp;&nbsp;<%=account.getId()%>
										<input type="hidden" name="id" id="id" value="<%=account.getId()%>">                                                                           
									 </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tb-l pl-30"><span class="red"></span>■ 비밀번호</div>
                                </th>
                                <td>
                                    <div class="tb-l pl-6">
                                         <input type="password" name="pass" id="pass" class="MS_input_txt w137" value="<%=account.getPass()%>" size="15" maxlength="20">                                       
                                          <span class="idpw-info">
                                           * 8자~16자
                                          </span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tb-l pl-30"><span class="red"></span>■ 비밀번호 확인</div>
                                </th>
                                <td>
                                    <div class="tb-l pl-6">
                                        <input type="password" name="pass-check" id="pass-check" class="MS_input_txt w137"  size="15" maxlength="20" >
                                    </div>
                                </td>
                            </tr>
                                                        <tr>
                                <th>
                                    <div class="tb-l pl-30"><span class="red"></span>■ 생일/성별</div>
                                </th>
                                <td>
                                     <div class="tb-l pl-6">
                                    &nbsp;&nbsp;<%=account.getBirthday()%> &nbsp;/
										<input type="hidden" name="birthday_s" id="birthday_s" value="<%=account.getBirthday_s()%>">                                                                           
                                    &nbsp;<%=account.getGender()%>
										<input type="hidden" name="gender" id="gender" value="<%=account.getGender()%>">                                                                           
									 </div>
                                </td>
                            </tr>
                                                        
                            <tr>
                                <th>
                                    <div class="tb-l pl-30"><span class="red"> </span>■ 우편번호</div>
                                </th>
                                <td>
                                    <div class="tb-l pl-6">
                                         <input type="text" name="hpost1"  id="hpost1" class="MS_input_txt" value="<%=account.getPost()%>" size="6" maxlength="6" >
                                    <span>
                                    	<input type="button" class="btn btn_black" onClick="goPopup();" value="주소검색" style="height:22px; width:110px;" >
                                    </span>
                                    </div>
                               </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tb-l pl-30"><span class="red"></span>■ 집주소</div>
                                </th>
                                <td>
                                    <div class="tb-l pl-6">
                                        <input type="text" name="haddress1"  id="haddress1" class="MS_input_txt w415" value="<%=account.getAddress()%>" size="40" maxlength="100" readonly="readonly">                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tb-l pl-30"><span class="red"></span>■ 상세주소</div>
                                </th>
                                <td>
                                    <div class="tb-l pl-6">
                                        <input type="text" name="haddress2"  id="haddress2" class="MS_input_txt w415" value="<%=account.getAddress2()%>" size="40" maxlength="100">                                    </div>
                                </td>
                            </tr>
                                  <tr>
                                <th>
                                    <div class="tb-l pl-30"><span class="red"></span>■ 이메일</div>
                                </th>
                                <td>
                                
                                    <div class="tb-l pl-6">
                                    <input type="text" name="email"  id="email" class="MS_input_tel" value="<%=account.getEmail() %>" size="40" >  
 <%--    <input type="text" name="email1" id="email1"  class="MS_input_txt" size="10" maxlength="20" value="">
    
     <span>@</span> 
    <span id="direct_email" style="margin-top:3px;display:inline-block"> 
        
        <input type="text" name="email3" id="selectedValue" class="MS_input_txt"  size="15" maxlength="25" value="">
    </span>
    
    <select name="email2" id="email2" class="MS_select MS_email" style="margin-right:5px;" onchange="onSelect(this)">
    
    <%
	for(Option domain : Selection.domains){
	%>
	<option value="<%=domain.value %>"><%=domain.key %></option>
	<%} %>  --%>
    <!-- </select>
      <span><input type="button" class="btn btn_black" value="중복확인" style="height:22px; width:110px;"></span>   -->                                                                           
                                                                            </div>
                                </td>
                            </tr>
			                                <tr>
                                <th>
                                    <div class="tb-l pl-30"><span class="red"></span>■ 휴대폰</div>
                                </th>
                                <td>
                                    <div class="tb-l pl-6">
                                    
                         <%--   <input type="text" name="phone"  id="phone" class="MS_input_tel" value="<%=account.getPhone() %>" size="20" maxlength="13" >    --%>      
                                    
		<select name="phone_1" id="phone_1"  class="MS_select MS_tel">
		<%
		for(Option areaCode : Selection.areaCode){
		%>
		<option value="<%=areaCode.value %>"><%=areaCode.key %></option>
		<%} %>
		</select>
- 
<input type="text" name="phone_2"  id="phone_2" class="MS_input_tel" value="" size="4" maxlength="4">
-
<input type="text" name="phone_3"  id="phone_3" class="MS_input_tel" value="" size="4" maxlength="4" minlength="4">           
					 </div>
                                </td>
                            </tr>
          <tr>
                                <th>
                                    <div class="tb-l pl-30">■ 연락처</div>
                                </th>

                                <td>
                                    <div class="tb-l pl-6">
                                    
<%-- <input type="text" name="phone2"  id="phone2" class="MS_input_tel" value="<%=account.getPhone2() %>" size="20" maxlength="13" > --%>       
     <select name="phone2_1"  id="phone2_1" class="MS_select MS_tel">
		<%
		for(Option areaCodeEx : Selection.areaCodeEx){
		%>
		<option value="<%=areaCodeEx.value%>"><%=areaCodeEx.key%></option>
		<%} %>
    </select>
    - 
    <input type="text" name="phone2_2"  id="phone2_2" class="MS_input_tel" value="" size="4" maxlength="4">
    -
    <input type="text" name="phone2_3"  id="phone2_3" class="MS_input_tel" value="" size="4" maxlength="4" minlength="4">  
    </div>
   	</td>
 </tr>
                                                                                    
<input type="hidden" name="mail_recv" id="mail_recv" value="<%=account.isMail_recv()%>"> 
<input type="hidden" name="sms_recv" id="sms_recv" value="<%=account.isSms_recv()%>"> 
<input type="hidden" name="auth" id="auth" value="<%=account.getAuth()%>"> 


                            </tbody></table>
                    </div> <!-- #personInfo -->

                     
                                                            <div class="btn-area">
                        <a class="write" id="updateButton"  style="text-decoration: none">수정완료</a>
                        
                        <a class="return" href="../mypage/mypage_main.jsp" style="text-decoration: none">취소</a>
                    </div>
                    <!-- use_contract -->
                    </form>                </div><!-- #join -->
            </div>
            </div>
            <jsp:include page="../common/footer.jsp"/>
</body>

<script type="text/javascript">

	
	var updateButton = document.querySelector('#updateButton');
	 var accountForm = document.querySelector('#accountForm');
	 var proc = document.querySelector('[name=proc]');
	 updateButton.onclick = function(){
		
		 var pass = document.getElementById("pass").value;
			var passCheck = document.getElementById("pass-check").value;
	    
	    if(pass==""||pass.length<8 || pass.length>16){
			alert("비밀번호는 8자~16자로 입력하십시오");
			return false;			
		} else if(pass!=passCheck){
			 alert("비밀번호를 다시 확인해주세요");
			 return false;			 
		 }
	    
		 proc.value = 'update';
		 accountForm.submit(); 
	 }
	 
	  


	    function goPopup(){
	    	var pop = window.open("../common/jusoPopup.jsp", "pop", "width=570,height=420, scrollbars=yes, resizable=yes");
	    	}

	    function jusoCallBack(haddress1, haddress2, hpost1){
	    		document.querySelector("#hpost1").value = hpost1;
	    		document.querySelector("#haddress1").value = haddress1;
	    		document.querySelector("#haddress2").value = haddress2;
	    		/* document.form.zipNo.value = zipNo;
	    		document.form.roadAddrPart1.value = roadAddrPart1; */
	    	}
	    function onSelect(obj){
	    	var input = document.querySelector("#selectedValue");
	    	input.value = obj.value;
	    };
</script>
</html>