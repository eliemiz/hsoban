  
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
<meta charset="UTF-8">
<title>주문 상세 내역</title>
</head>
<link rel="stylesheet" href="/hsoban/css/allCommon.css">
<link rel="stylesheet" href="/hsoban/css/common.css">
<link rel="stylesheet" href="/hsoban/css/mypage.css">
<style>
body, h1, h2, h3, h4, h5, h6, table, input, select, textarea, a {
    font-size: 12px;
    line-height: 1.25;
    color: #777;
    font-family: "NanumGothic", AppleGothic, Helvetica, sans-serif;
}
#orderInfo .table-w {
    margin-top: 10px;
}
div {
    display: block;
}
#orderInfo h2 {
    margin-top: 20px;
    font-size: 12px;
    font-weight: bold;
    color: #3D77BD;
    letter-spacing: -1px;
}
</style>
<%
//변수 선언 for 페이지 로드
Object object = session.getAttribute("sessionId");
String account_id;
if (object == null) account_id = "0";
else {
    account_id = object.toString();
}

		String order_id = request.getParameter("order_id");
		// validate
		if (order_id == null || order_id.trim().equals("")) {
			order_id = "0";
		}
		
		// dao for use
	      Dao_OrderDetail dao2 = new Dao_OrderDetail();
	      Dao_OrderProduct dao = new Dao_OrderProduct();
	      Dao_Account daoAccount = new Dao_Account();
	      Dao_Product daoProduct = new Dao_Product();
	      
	      // get order detail
	      OrderDetail dorder = dao2.getOrderDetail(Integer.parseInt(order_id));
	      
	      // get order product list
	      ArrayList<OrderProduct> plist = dao.getOrderProductList(dorder.getOrder_id());
	      // get account
	      Account account = daoAccount.getAccount( dorder.getAccount_id());
	      for (int i = 0; i < plist.size(); i++) {
              Product product = daoProduct.getProdList(plist.get(i).getProduct_id(), plist.get(i).getColor());
         }
%>
<body>
<jsp:include page="../common/header.jsp"/>
<jsp:include page="../common/side.jsp"/>

<div class="content_wrap">
<div id="orderSt">
    <h1 class="tit-pop"></h1>
    <div id="orderInfo">
    <div class="bbs-tit">주문 상세 </div>
        <h2><b>주문자정보</b></h2>
        <div class="table-w table-orderinfo">
       <table summary="">
                                <caption>주문자정보</caption>
                <colgroup>
                    <col width="120">
                    <col width="*">
                    <col width="120">
                    <col width="*">
                </colgroup>
                <tbody>
                    <tr>
                        <th scope="row"><div class="tb-center">주문번호</div></th>
                        <td><div class="tb-center"><%=dorder.getOrder_id() %></div></td>
                        <th scope="row"><div class="tb-center">주문일자</div></th>
                        <td><div class="tb-center"><%=dorder.getOrder_date() %></div></td>
                    </tr>
                    <tr>
                        <th scope="row"><div class="tb-center">주문자</div></th>
                        <td><div class="tb-center"><%=account.getName() %></div></td>
                        <th scope="row"><div class="tb-center">주문서 입금현황 </div></th>
                        <td><div class="tb-center">결제완료</div></td>
                    </tr>

                                    </tbody>
            </table>
        </div>
                <h2><b>배송지정보</b></h2>
        <div class="table-w table-region">
            <table summary="">
                <caption>배송지정보</caption>
                <colgroup>
                    <col width="120">
                    <col width="*">
                    <col width="120">
                    <col width="*">
                </colgroup>
                <tbody>
                    <tr>
                        <th scope="row"><div class="tb-center">수취인</div></th>
                        <td><div class="tb-center"><%=account.getName() %></div></td>
                        <th scope="row"><div class="tb-center">연락처</div></th>
                        <td><div class="tb-center"><%=account.getPhone() %></div></td>
                    </tr>
                    <tr>
                        <th scope="row"><div class="tb-center">주소</div></th>
                        <td colspan="3"><div class="tb-left"><%=dorder.getAddress() %><%=dorder.getAddress2() %></div></td>
                    </tr>
                    <tr>
                        <th scope="row"><div class="tb-center">배송메세지</div></th>
                        <td colspan="3"><div class="tb-left"><%=dorder.getOrder_message() %></div></td>
                    </tr>
                                </tbody>
            </table>
        </div>
                <h2><b>주문상품정보</b></h2>
        <div class="table-w table-prdinfo">
            <table summary="">
                <caption>주문상품정보</caption>
                <colgroup>
                    <col width="100">
                    <col width="*">
                    <col width="105">
                    <col width="130">
                    <col width="130">
                </colgroup>
                <thead>
                    <tr><th scope="row" colspan="2"><div class="tb-center" style="font-size:12px">주문상품정보</div></th>
                    <th scope="row"><div class="tb-center" style="font-size:12px">수량</div></th>
                    <th scope="row"><div class="tb-center" style="font-size:12px">가격</div></th>
                    <th scope="row"><div class="tb-center" style="font-size:12px">처리상태</div></th>
                </tr></thead>
                <tfoot>
                    <tr><td colspan="5">
                        <div class="tb-right">
                           <%=dorder.getTotal() %> 원
                        </div>
                    </td>
                </tr></tfoot>
                <tbody>
                <tr>
               			<td>
               			<% for (int i = 0; i < plist.size(); i++) {
                                    Product product = daoProduct.getProdList(plist.get(i).getProduct_id(), plist.get(i).getColor());
                                 %>
                            <% String thumbnail = product.getThumbnail() + "_00.jpg"; %>
                            <div class="tb-center">
                              <img src="
                              <%=thumbnail%>
                              <%} %>
                              " class="thumbnail_s" style="width: 58px; height: 58px">
                            </div>
                        </td>
                        <td>
                            <div class="tb-left">
                                <div  style="text-decoration: none; color: #777;">
                                <% for (int i = 0; i < plist.size(); i++) {
                                    Product product = daoProduct.getProdList(plist.get(i).getProduct_id(), plist.get(i).getColor());
                                 %>
                                <%=product.getName()%>
                                <%} %><br></div>
                                <span class="quantity order_table_Td style4"><%for(OrderProduct order:plist){ %> color : <%=order.getColor() %> <%} %></span>
                            </div>
                        </td>
                        <td><div class="tb-center"><%for(OrderProduct order:plist){ %> <%=order.getCount()%><%} %></div></td>
                        <td><div class="tb-center tb-price"><strong><font color="#FF5D00"><%=dorder.getTotal() %></font></strong>원</div></td>
                        <td><div class="tb-center">배송완료</div></td>
                 </tr>
                 </tbody>
           </table>
        </div>
        <h2><b>결제정보</b></h2>
        <div class="table-w table-payinfo">
            <table summary="">
                <caption>결제정보</caption>
                <colgroup>
                    <col width="180">
                    <col width="250">
                </colgroup>
                <thead>
                    <tr><th scope="row"><div class="tb-center" style="font-size:12px">결제방법</div></th>
                    <th scope="row"><div class="tb-center" style="font-size:12px">결제금액</div></th>
                </tr></thead>
                <tfoot>
                    <tr>
                        <td><div class="tb-center"><%=dorder.getPay() %></div></td>
                        <td><div class="tb-center"><%=dorder.getTotal() %></div></td>
                    </tr>
                </tfoot>
            </table>
        </div>
                                <div id="pop_order_btn_group">
                                      <a href="../mypage/mypage_myOrder.jsp">
                                          <input type="button" value="닫기" class="btn btn_black"/> 
                                      </a>
    <!--<a href="javascript:window.close();"><input type="button" value="닫기" class="btn btn_black"/> </a>-->
        </div>
    </div><!-- #orderInfo-->
</div>
</div>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>