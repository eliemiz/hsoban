<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*"
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
<link rel="stylesheet" href="/hsoban/css/allCommon.css">
<link rel="stylesheet" href="/hsoban/css/common.css">
<link rel="stylesheet" href="/hsoban/css/mypage.css">
<meta charset="UTF-8">
<title>주문 내역</title>
<%--

String account_id = request.getParameter("account_id");
if (account_id == null || account_id.trim().equals("")){
	account_id = "0";}
	
	Dao_OrderDetail dao = new Dao_OrderDetail();
ArrayList<OrderDetail> list;

list = dao.getOrderDetailList(Integer.parseInt(account_id));
	
--%>
<%
Object object = session.getAttribute("sessionId");
String account_id;
if (object == null) account_id = "0";
else {
    account_id = object.toString();
}

Dao_OrderDetail dao = new Dao_OrderDetail();
ArrayList<OrderDetail> list;

list = dao.getOrderDetailList(Integer.parseInt(account_id));

%>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<jsp:include page="../common/side.jsp"/>

<div class="content_wrap">
<div id="contentWrapper">
        <div id="contentWrap">
<hr>            <div id="content">
                <div id="myOrder">
                    <div class="bbs-tit">마이페이지</div>
                    <ul class="mypage_tab">
                        <a class="on" href="../mypage/mypage_myOrder.jsp" style="text-decoration:none"><li>주문내역</li></a>
                        <a href="../mypage/mypage_myWish.jsp" style="text-decoration:none"><li>관심상품</li></a>
                        <a href="../mypage/mypage_main.jsp" style="text-decoration:none"><li>마이페이지</li></a>
                    </ul>
                    <div class="page-body">
                        <p class="mypage_s_tit">주문제품정보</p>
                        <div class="table-d2-list">
                            <table summary="번호, 주문일자, 상품명, 결제금액,  배송현황">
                                <caption>주문내역</caption>
                                <colgroup>
                                    <col width="70">
                                    <col width="95">
                                    <col width="*">
                                    <col width="100">
                                    <col width="75">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="row"><div class="tb-center" style="font-size:12px">번호</div></th>
                                        <th scope="row"><div class="tb-center" style="font-size:12px">주문일자</div></th>
                                        <th scope="row"><div class="tb-center" style="font-size:12px">주문번호</div></th>
                                        <th scope="row"><div class="tb-center" style="font-size:12px">결제금액</div></th>
                                        <th scope="row"><div class="tb-center" style="font-size:12px">배송현황</div></th>
                                    </tr>
                                </thead>
                                <tbody>
                                
                                <% 
                                int cnt=1;
								for (OrderDetail order : list){%>
										
									
                                        <tr onclick="callDetail(<%=order.getOrder_id() %>)">
                                        <td><div class="tb-center" ><%=cnt++%></div></td>
                                        <td><div class="tb-center"><%=order.getOrder_date() %></div></td>
                                        <td><div class="tb-center"><%=order.getOrder_id() %></div></td>
                                        <td><div class="tb-center tb-bold"><%=order.getTotal() %></div></td>
                                        <td><div class="tb-center"><a>배송완료</a>
                                            </div></td>
                                    </tr>
                                    	<%
										}
									     %> 
                                    </tbody>
                            </table>
                        </div>
                        <ol class="paging">
                                        <li><strong>1</strong></li>
                                    </ol>
                        <ul class="foot-dsc">
                            <li>주문번호를 클릭하시면, 주문상세 내역을 확인하실 수 있습니다.</li>
                            
                        </ul>
                    </div><!-- .page-body -->
                </div><!-- #myOrder -->
            </div><!-- #content -->
        </div><!-- #contentWrap -->
    </div>
    </div>
    <jsp:include page="../common/footer.jsp"/>
</body>
<script type="text/javascript">
function callDetail(order_id){
	location.href= "mypage_myOrder_info.jsp?order_id="+order_id;
}

</script>
</html>