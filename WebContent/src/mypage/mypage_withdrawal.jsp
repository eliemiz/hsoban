<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*"
    	import="hsoban.dao.*" import="hsoban.vo.*" %>
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
<title>회원탈퇴</title>
</head>
<link rel="stylesheet" href="/hsoban/css/allCommon.css">
<link rel="stylesheet" href="/hsoban/css/common.css">
<link rel="stylesheet" href="/hsoban/css/mypage.css">
<%
Object object = session.getAttribute("sessionId");
String account_id;
if (object == null) account_id = "0";
else {
    account_id = object.toString();
}

Dao_Account dao = new Dao_Account();
Account account = dao.getAccount(Integer.parseInt(account_id));


String reason = request.getParameter("reason");
String withdraw_date_s = request.getParameter("withdraw_date_s");



if (reason == null) {
	reason = "";
}
if (withdraw_date_s == null) {
	withdraw_date_s = "";
}



		
	
	


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
String post = request.getParameter("post");
if (post == null || post.trim().equals("")){
	post = "0";}
String address = request.getParameter("address");
if (address == null) {address = "";}
String address2 = request.getParameter("address2");
if (address2 == null) {address2 = "";}
String email = request.getParameter("email");
if (email == null) {email = "";}
String phone = request.getParameter("phone");
if (phone == null) {phone = "";}
String phone2 = request.getParameter("phone2");
if (phone2 == null) {phone2 = "";}
String mail_recv = request.getParameter("mail_recv");
if (mail_recv == null) {mail_recv = "";}
String sms_recv = request.getParameter("ms_recv");
if (sms_recv == null) {sms_recv = "";}
String auth = request.getParameter("auth");
if (auth  == null) {auth  = "";} 

String proc = request.getParameter("proc");
if (proc == null) {
	proc = "";
}
if (proc.equals("delete")) {

	Withdraw_account with = new Withdraw_account(Integer.parseInt(account_id), reason, withdraw_date_s);
	
	Dao_Withdraw_account dao2 = new Dao_Withdraw_account();
	dao2.insertWithdraw_account(with);	
	dao.deleteAccount(Integer.parseInt(account_id));
	
	response.sendRedirect("../mypage/mypage_withdrawal_session_fin.jsp");
}


%>
<body>
<jsp:include page="../common/header.jsp"/>
<jsp:include page="../common/side.jsp"/>

<div class="content_wrap">
<div class="page-body">
                        <div class="dbox-wrap">
                        <div class="scede-frm">
                        <div class="bbs-tit">회원탈퇴</div>
                        <form method="post" id="withdrawForm">
						<input type="hidden" name="proc" value="">
						<input type="hidden" name="account_id" value="<%=account.getAccount_id()%>">
						<input type="hidden" name="name" value="<%=account.getName()%>">
						<input type="hidden" name="id" value="<%=account.getId()%>" >
						<input type="hidden" name="pass" value="<%=account.getPass()%>">
						<input type="hidden" name="birthday" value="<%=account.getBirthday()%>">
						<input type="hidden" name="gender" value="<%=account.getGender()%>">
						<input type="hidden" name="post" value="<%=account.getPost()%>">
						<input type="hidden" name="address" value="<%=account.getAddress()%>">
						<input type="hidden" name="address2" value="<%=account.getAddress2()%>">
						<input type="hidden" name="email" value="<%=account.getEmail()%>">
						<input type="hidden" name="phone2" value="<%=account.getPhone2()%>">
						<input type="hidden" name="mail_recv" value="<%=account.isMail_recv()%>">
						<input type="hidden" name="sms_recv" value="<%=account.isSms_recv()%>">
						<input type="hidden" name="auth" value="<%=account.getAuth()%>">
						<input type='date' id='currentDate' name="withdraw_date_s" value=""/>


<script>
  document.getElementById('currentDate').value = new Date().toISOString().substring(0, 10);;
</script>
						
						
						
						
						
                            <fieldset>
                                <legend >탈퇴 사유 작성 폼</legend>
                                <div class="table-d2-view">
                                    <table summary="사유">
                                        <caption>탈퇴 사유</caption>
                                        <colgroup>
                                            <col width="90">
                                            <col width="*">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row" style=" height:500px;"><div class="tb-center">사유</div></th>
                                                <td style=" height:500px; "><div class="tb-center"><textarea style=" height:500px;" id="reason" class="MS_input_textarea txt-area1" name="reason" rows="10" cols="70"></textarea></div></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="btn-foot">
                                     <span align="center"><input type="button" name="deleteButton"id="deleteButton"class="btn btn_black" value="회원탈퇴" style="height:22px; width:110px;" onclick="go()"></span>
                                     <span><input type="button" class="btn btn_black" value="탈퇴취소" style="height:22px; width:110px;" onclick="location.href='../mypage/mypage_main.jsp'";></span>
                                </div>
                            </fieldset>
                             </form>
                        </div><!-- .scede-frm -->
                       
                    </div>
                    </div>
                    </div>
                    
   <jsp:include page="../common/footer.jsp"/>            
</body>
<script type="text/javascript">

var accountForm = document.querySelector('#withdrawForm');
var proc = document.querySelector('[name=proc]');
var deleteButton = document.querySelector('#deleteButton');

	 
deleteButton.onclick = function() {
	proc.value = 'delete';
	
	if(reason.value.length<1) {
		   alert('탈퇴 사유를 입력해주세요.');
	   }
	else if(confirm('정말 탈퇴하시겠습니까?')){
		withdrawForm.submit();	
	} 
}



</script>
</html>