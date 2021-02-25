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
<link rel="stylesheet" href="/hsoban/css/allCommon.css">
<link rel="stylesheet" href="/hsoban/css/common.css">
<link rel="stylesheet" href="/hsoban/css/mypage.css">
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<%--

String account_id = request.getParameter("account_id");
if (account_id == null || account_id.trim().equals("")){
	account_id = "0";}
	
	Dao_Account dao = new Dao_Account();
Account account = dao.getAccount(Integer.parseInt(account_id));
--%>
<%

int account_id = 100043;
Dao_Account dao = new Dao_Account();
Account account = dao.getAccount(account_id);
%>
<body>
<jsp:include page="../common/header.jsp"/>
<jsp:include page="../common/side.jsp"/>
<div class="content_wrap">
<div id="contentWrapper">
        <div id="contentWrap">
            
<hr>            <div id="content">
                <div id="mypage">
                    <div class="bbs-tit">마이페이지</div>
                    <ul class="mypage_tab">
                        <a href="../mypage/mypage_myOrder.jsp" style="text-decoration:none"><li>주문내역</li></a>
                        <a href="../mypage/mypage_myWish.jsp" style="text-decoration:none"><li>관심상품</li></a>
                        <a class="on" href="../mypage/mypage_main.jsp" style="text-decoration:none"><li>마이페이지</li></a>
                    </ul>
                    <div class="page-body">
                        <p class="mypage_s_tit">마이페이지</p>
                        <div class="info">
                            <table>
                                <tbody><tr>
                                    <th>이름</th>
                                    <td><%=account.getName()%></td>
                                </tr>
                                <tr>
                                    <th>아이디</th>
                                    <td><%=account.getId()%></td>
                                </tr>
                                <tr>
                                    <th>주소</th>
                                    <td><%=account.getAddress()%><%=account.getAddress2()%></td>
                                </tr>
                                <tr>
                                    <th>이메일</th>
                                    <td><%=account.getEmail()%></td>
                                </tr>
                                <tr>
                                    <th>휴대폰</th>
                                    <td><%=account.getPhone()%></td>
                                </tr>
                                <tr>
                                    <th>연락처</th>
                                    <td><%=account.getPhone2()%></td>
                                </tr>
                            </tbody></table>
                        </div>
                        <div class="my-btn-area">
                            <a class="red"  style="text-decoration:none" 
                            onclick="callDetail(<%=account.getAccount_id()%>)"><li>개인정보수정</li></a>
                            <a onclick="withdrawal()"><li>회원탈퇴</li></a>
                        </div>
                    </div><!-- .page-body -->
                </div><!-- #mypage -->
            </div><!-- #content -->
        </div><!-- #contentWrap -->
    </div>
</div>
<jsp:include page="../common/footer.jsp"/>
</body>
<script type="text/javascript">
function withdrawal(){
	var result = confirm('회원탈퇴를 하시겠습니까?');
	if(result==true){
		location.href="../mypage/mypage_withdrawal.jsp";
	}else{
		location.href="../mypage/mypage_main.jsp";
	}
}

function callDetail(account_id){
    var url = "../mypage/mypage_myInfo.jsp?";
    url += "account_id=" + account_id;
    location.href = url;
 }


</script>
</html>