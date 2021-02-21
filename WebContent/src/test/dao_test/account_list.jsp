<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="java.util.*" import="java.net.*"
   import="hsoban.dao.*" import="hsoban.vo.*"%>
<%
   request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=path%>/css/common.css">
<style type="text/css">
#accountList tr:first-child:hover {
   cursor: auto;
}

#accountList tr:hover {
   background-color: #f7f7f7;
   cursor: pointer;
}

#accountList tr:active {
   background-color: #f0f0f0;
}

body {
   width: 90%;
   margin: auto;
   padding-top: 50px;
}
</style>
</head>
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
<body>
   <%-- account_id 검색 form --%>
   <form method="post" id="accountForm1">
      <table>
         <tr>
            <th>account_id</th>
            <td><input type="text" name="account_id" value="<%=account_id%>"></td>
         </tr>
         <tr>
            <td colspan="2">
               <input type="button" value="검색" id="searchButton1" class="btn btn_thatch">
            </td>
         </tr>
      </table>
   </form>
   <br>
   <%-- id, pass 검색 form --%>
   <form method="post" id="accountForm2">
      <table>
         <tr>
            <th>id</th>
            <td><input type="text" name="id" value="<%=id%>"></td>
         </tr>
         <tr>
            <th>pass</th>
            <td><input type="text" name="pass" value="<%=pass%>"></td>
         </tr>
         <tr>
            <td colspan="2">
               <input type="button" value="검색" id="searchButton2" class="btn btn_thatch">
            </td>
         </tr>
      </table>
   </form>
   <%-- name, email 검색 form --%>
   <form method="post" id="accountForm3">
      <table>
         <tr>
            <th>name</th>
            <td><input type="text" name="name" value="<%=name%>"></td>
         </tr>
         <tr>
            <th>email</th>
            <td><input type="text" name="email" value="<%=email%>"></td>
         </tr>
         <tr>
            <td colspan="2">
               <input type="button" value="검색" id="searchButton3" class="btn btn_thatch">
            </td>
         </tr>
      </table>
   </form>
   <%-- name, phone 검색 form --%>
   <form method="post" id="accountForm4">
      <table>
         <tr>
            <th>name</th>
            <td><input type="text" name="name" value="<%=name%>"></td>
         </tr>
         <tr>
            <th>phone</th>
            <td><input type="text" name="phone" value="<%=phone%>"></td>
         </tr>
         <tr>
            <td colspan="2">
               <input type="button" value="검색" id="searchButton4" class="btn btn_thatch">
               <input type="button" value="회원 가입" class="btn btn_black" onclick="location.href='account_insert.jsp'">
            </td>
         </tr>
      </table>
   </form>
   
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
      <tr onclick="callDetail(<%=account.getAccount_id()%>)">
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
<script type="text/javascript">
   // account_id 검색 form
   var searchButton1 = document.querySelector("#searchButton1");
   searchButton1.onclick = function() {
      var account_id = document.querySelector('[name=account_id]');
      
      // 유효성 체크
      if (isNaN(account_id.value)){
         alert('숫자를 입력해주세요.');
         return false;
      }

      document.querySelector('#accountForm1').submit();
   }
   
   // id, pass 검색 form
   var searchButton2 = document.querySelector("#searchButton2");
   searchButton2.onclick = function() {
      
      document.querySelector('#accountForm2').submit();
   }
   // id, pass 검색 form
   var searchButton3 = document.querySelector("#searchButton3");
   searchButton3.onclick = function() {
      
      document.querySelector('#accountForm3').submit();
   }
   // id, pass 검색 form
   var searchButton4 = document.querySelector("#searchButton4");
   searchButton4.onclick = function() {
      
      document.querySelector('#accountForm4').submit();
   }
   
   // account_id(primary key)만 인자로 받아 account_detail.jsp 페이지로 넘어간다
   function callDetail(account_id){
      var url = "account_detail.jsp?";
      url += "account_id=" + account_id;
      location.href = url;
   }
</script>
</html>