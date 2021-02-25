<%@page import="java.text.DecimalFormat"%>
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
<link rel="stylesheet" href="/hsoban/css/allCommon.css">
<link rel="stylesheet" href="/hsoban/css/common.css">
<link rel="stylesheet" href="/hsoban/css/mypage.css">
<link rel="stylesheet" href="<%=path%>/css/cart.css">
<meta charset="UTF-8">
<title>관심상품</title>
</head>
<%--

// 변수 선언
String account_id = request.getParameter("account_id");
if (account_id == null || account_id.trim().equals("")){
	account_id = "";
}

Dao_WishList dao = new Dao_WishList();
ArrayList<WishList> list;
if (account_id == ""){
	list = dao.getWishList();
} else {
	list = dao.getWishList(Integer.parseInt(account_id));	
}

 --%>
<%
DecimalFormat df = new DecimalFormat("#,###");

int account_id = 100001;
	Dao_WishList dao = new Dao_WishList();
	ArrayList<WishList> list = dao.getWishList(account_id);	
	
	Dao_Cart daoCart = new Dao_Cart();
	
	Dao_Stock daoStock = new Dao_Stock();

	Dao_Product daoProduct = new Dao_Product();
	  for (int i = 0; i < list.size(); i++) {
          Product product = daoProduct.getProdList(list.get(i).getProduct_id(), list.get(i).getColor());
     }
				
	  String account_id_temp = request.getParameter("account_id");
		String product_id = request.getParameter("product_id");
		String color = request.getParameter("color");
		
	
		
		String proc = request.getParameter("proc");
		if (proc == null){
			proc = "";
		}
		
		  if (proc.equals("addCart")) {
			daoCart.insertCart(new Cart(Integer.parseInt(account_id_temp), Integer.parseInt(product_id), color, 1)); // TODO 숫자 변경?
			dao.deleteWish(Integer.parseInt(account_id_temp), Integer.parseInt(product_id), color);
			response.sendRedirect("../mypage/mypage_myWish.jsp");
		} else if (proc.equals("deleteWish")) {
			dao.deleteWish(Integer.parseInt(account_id_temp), Integer.parseInt(product_id), color);
			response.sendRedirect("../mypage/mypage_myWish.jsp");
		}
		
%>
<body>
<jsp:include page="../common/header.jsp"/>
<jsp:include page="../common/side.jsp"/>

<div class="content_wrap">
<div id="contentWrapper">
        <div id="contentWrap">
<hr>            <div id="content">
                <div id="myWish">
                    <div class="bbs-tit">마이페이지</div>
                    <ul class="mypage_tab">
                        <a href="../mypage/mypage_myOrder.jsp" style="text-decoration:none"><li>주문내역</li></a>
                        <a class="on" href="../mypage/mypage_myWish.jsp" style="text-decoration:none"><li>관심상품</li></a>
                        <a href="../mypage/mypage_main.jsp" style="text-decoration:none"><li>마이페이지</li></a>
                    </ul>
                    <div class="page-body">
                        <div class="table-d2-list">
                            <table summary="사진,  상품명, 수량, 재고, 적립금, 가격, 장바구니">
                            <colgroup>
					<col width="100">
					<col width="*">
					<col width="150">
					<col width="150">
					<col width="180">
				</colgroup>
				<caption>관심상품</caption>
				<tbody>
				<tr>
                  <th scope="row"><div class="tb-center" style="font-size:12px">사진</div></th>
                  <th scope="row"><div class="tb-center" style="font-size:12px">상품명</div></th>
                  <th scope="row"><div class="tb-center" style="font-size:12px">재고</div></th>
                  <th scope="row"><div class="tb-center" style="font-size:12px">가격</div></th>
                  <th scope="row"><div class="tb-center" style="font-size:12px">처리</div></th>
                </tr>
					<%
					for (int i = 0; i < list.size(); i++){
						WishList wish = list.get(i);
						Product product = daoProduct.getProdList(wish.getProduct_id(), wish.getColor());
						Stock stock = daoStock.getStock(wish.getProduct_id(), wish.getColor());
						%>
						<c:set var="account_id" value="<%=wish.getAccount_id()%>"/>
						<c:set var="product_id" value="<%=wish.getProduct_id()%>"/>
						<c:set var="color" value="<%=wish.getColor()%>"/>
						<tr>
							<td style="display:none">
								<% String id = "wishForm" + i; %>
								<form id="<%=id%>" method="post">
									<input type="hidden" name="account_id" value="${account_id}">
									<input type="hidden" name="product_id" value="${product_id}">
									<input type="hidden" name="color" value="${color}">
									<input type="hidden" name="proc">
								</form>
							</td>
							<% String thumbnail = product.getThumbnail() + "_00.jpg"; %>
							<td class="td_center"><img src="<%=thumbnail%>" class="thumbnail_m" style="width: 84px; height: 84px"></td>
							<td class="product">
						<div class="tb-center">	
								<%String url = path + "/src/shop/shop_detailForm.jsp?product_id=" + wish.getProduct_id(); %>
									<a href="<%=url%>" style="text-decoration:none; color:#464646;"><%=product.getName() %></a>
						</div>
								<div class="tb-center"><span class="wish-opt">[color:<%=wish.getColor()%>]</span></div>
							</td>
							<td class="td_center">
								<c:set var="stock" value="<%=stock.getStock() %>" scope="page"/>
								<c:choose>
									<c:when test="${stock > 0}">있음</c:when>
									<c:otherwise>없음</c:otherwise>
								</c:choose>
							</td> 
							<td class="td_center"><%=df.format(product.getPrice()) %>원</td>
							<td class="td_center">
								<span>
									<input type="button" value="장바구니 담기" class="btn btn_thatch"
										onclick="submitCartForm(<%=i%>, 'addCart')">
								</span>
								<span>
									<input type="button" value="관심상품 삭제" class="btn btn_normal"
										onclick="submitCartForm(<%=i%>, 'deleteWish')">
								</span>
							</td>
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
                    </div><!-- .page-body -->
                </div><!-- #myWish -->
            </div><!-- #content -->
        </div><!-- #contentWrap -->
    </div>
    </div>
   
    <jsp:include page="../common/footer.jsp"/>
</body>
<script type="text/javascript">


 function submitCartForm(){
		var idx = arguments[0];
		var proc = arguments[1];

		var form = '';
		if (proc == 'modifyNumber'){
			var m_count = document.querySelector("[name=m_count" + idx + "]");
			form = document.querySelector("#cartForm" + idx);
			form.count.value = m_count.value;
		} else if (proc == 'addWish' || proc == 'deleteCart') {
			form = document.querySelector("#cartForm" + idx);
		} else if (proc == 'addCart' || proc == 'deleteWish') {
			form = document.querySelector("#wishForm" + idx)
		}
		form.proc.value = proc;
		
		form.submit();
	}

</script>
</html>