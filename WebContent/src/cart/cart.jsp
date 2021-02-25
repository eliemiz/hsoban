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
<meta charset="UTF-8">
<title>장바구니</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<link rel="stylesheet" href="<%=path%>/css/common.css">
<link rel="stylesheet" href="<%=path%>/css/cart.css">
</head>
	
	<%
	Object obj = session.getAttribute("sessionId");
	String account_id;
	if (obj == null) {
		account_id = "0";
		response.sendRedirect(path + "/src/login/login.jsp");
		return;
	} else {
		account_id = obj.toString();
	}
	
	// for number format
	DecimalFormat df = new DecimalFormat("#,###");
	
	// TODO : session에서 가져올 것
// 	int account_id = 100001;
	
	// 사용되는 DAO 객체 생성
	Dao_Cart daoCart = new Dao_Cart();
	Dao_WishList daoWishlist = new Dao_WishList();
	Dao_Product daoProduct = new Dao_Product();
	Dao_Stock daoStock = new Dao_Stock();
	
	// Update, Delete 처리. TODO : 유효성 체크
	// String account_id_temp = request.getParameter("account_id");
	String product_id = request.getParameter("product_id");
	String color = request.getParameter("color");
	
	String proc = request.getParameter("proc");
	if (proc == null){
		proc = "";
	}
	
	if (proc.equals("modifyNumber")){
		String count = request.getParameter("count");
		daoCart.updateCart(new Cart(Integer.parseInt(account_id), Integer.parseInt(product_id), color, Integer.parseInt(count)));
	} else if (proc.equals("addCart")) {
		daoCart.insertCart(new Cart(Integer.parseInt(account_id), Integer.parseInt(product_id), color, 1)); // TODO 숫자 변경?
		daoWishlist.deleteWish(Integer.parseInt(account_id), Integer.parseInt(product_id), color);
	} else if (proc.equals("deleteCart")) {
		daoCart.deleteCart(Integer.parseInt(account_id), Integer.parseInt(product_id), color);
	} else if (proc.equals("deleteCartAll")) {
		daoCart.deleteCartAll(Integer.parseInt(account_id));
	} else if (proc.equals("addWish")) {
		daoWishlist.insertWish(new WishList(Integer.parseInt(account_id), Integer.parseInt(product_id), color));
		daoCart.deleteCart(Integer.parseInt(account_id), Integer.parseInt(product_id), color);
	} else if (proc.equals("deleteWish")) {
		daoWishlist.deleteWish(Integer.parseInt(account_id), Integer.parseInt(product_id), color);
	} 
	
	// cart list 불러오기
	ArrayList<Cart> cartList = daoCart.getCartList(Integer.parseInt(account_id));
	
	// wish list 불러오기
	ArrayList<WishList> wishList = daoWishlist.getWishList(Integer.parseInt(account_id));
	
	%>
<body>
	<jsp:include page="../common/header.jsp"/>
	<jsp:include page="../common/side.jsp"/>
	
	<div class="content_wrap">
		<div class="cart_title clear_fix">
			장바구니
		</div>
		
		<div class="cart_wrap clear_fix">
			<table class="table_cart">
				<colgroup>
					<col width="50">
					<col width="100">
					<col width="*">
					<col width="120">
					<col width="120">
					<col width="120">
					<col width="150">
				</colgroup>
				<thead>
					<tr>
						<td colspan="7">
							장바구니 담긴 상품
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>번호</th>
						<th>사진</th>
						<th>제품명</th>
						<th>수량</th>
						<th>가격</th>
						<th>배송비</th>
						<th>취소</th>
					</tr>
					<%
						int total = 0;
						for (int i = 0; i < cartList.size(); i++) {
							Cart cart = cartList.get(i);								
							
							// # product_id를 토대로 상품 정보 불러오기
							Product product = daoProduct.getProdList(cart.getProduct_id(), cart.getColor());

							// total 계산
							total += product.getPrice() * cart.getCount();
							
							%>
							<%-- form 생성 --%>
							<c:set var="account_id" value="<%=cart.getAccount_id()%>"/>
							<c:set var="product_id" value="<%=cart.getProduct_id()%>"/>
							<c:set var="color" value="<%=cart.getColor()%>"/>
							<c:set var="count" value="<%=cart.getCount()%>"/>
							<tr>
								<td style="display:none">
									<% String id = "cartForm" + i; %>
									<form id="<%=id%>" method="post">
										<input type="hidden" name="account_id" value="${account_id}">
										<input type="hidden" name="product_id" value="${product_id}">
										<input type="hidden" name="color" value="${color}">
										<input type="hidden" name="count" value="${count}">
										<input type="hidden" name="proc">
									</form>
								</td>
								<td class="td_center"><%=i + 1%></td>
								<% String thumbnail = product.getThumbnail() + "_00.jpg"; %>
								<td class="td_center"><img src="<%=thumbnail%>" class="thumbnail_m"></td>
								<td class="td_left">
									<div>
										<div>
											<%-- TODO : 링크 경로 바꾸기 --%>
											<%String url = path + "/src/shop/shop_detailForm.jsp?product_id=" + cart.getProduct_id(); %>
											<a href="<%=url%>"><%=product.getName() %></a>
										</div>
										<div>
											<span>[color: ${color} ${count}개]</span>
											<img src="<%=path%>/img/cart/option.gif" onclick="popUpModifyOption()" class="modifyOption">
										</div>
									</div>
								</td>
								<td class="td_center">
									<%-- TODO : name 쓰이는 곳 있는지? --%>
									<% String m_count = "m_count" + i; %>
									<c:set var="m_count" value="<%=m_count%>"/>
									<input type="number" class="table_cart_number" value="${count}" name="${m_count}">
									<input type="button" value="수정" class="btn btn_black table_cart_number_modify" 
										onclick="submitCartForm(<%=i%>, 'modifyNumber')">
								</td>
								<td class="td_center"><%=df.format(product.getPrice()) %>원</td>
								<td class="td_center">
									<span>[기본배송]<br>조건</span>
								</td>
								<td class="td_center">
									<span>
										<input type="button" value="관심상품 등록" class="btn btn_thatch" 
											onclick="submitCartForm(<%=i%>, 'addWish')">
									</span>
									<span>
										<input type="button" value="장바구니 삭제" class="btn btn_normal"
											onclick="submitCartForm(<%=i%>, 'deleteCart')">
											
									</span>
								</td>
							</tr>
							<%
						}
					%>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="7" class="td_right">
							총 구매금액 : <%=df.format(total)%>원
						</td>
					</tr>
				</tfoot>
			</table>
		</div>
		
		<div class="cart_button_wrap clear_fix">
			<input type="button" value="주문하기" class="btn btn_thatch" onclick="location.href='order.jsp'">
			<% String url = path + "/src/shop/shop_detailForm.jsp?product_id=" + product_id; %>
			<input type="button" value="계속 쇼핑하기" class="btn btn_normal" onclick="location.href='<%=path%>/src/shop/shop1_Bowl/Bowl_main.jsp'">
			<input type="button" value="장바구니 비우기" class="btn btn_normal"
				onclick="submitCartForm(0, 'deleteCartAll')">
		</div>
		
		<div class="cart_wrap clear_fix">
			<table class="table_cart">
				<colgroup>
					<col width="100">
					<col width="*">
					<col width="120">
					<col width="120">
					<col width="120">
					<col width="150">
				</colgroup>
				<thead>
					<tr>
						<td colspan="6">
							관심상품
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>사진</th>
						<th>제품명</th>
						<th>수량</th>
						<th>재고</th>
						<th>가격</th>
						<th>처리</th>
					</tr>
					<%
					for (int i = 0; i < wishList.size(); i++){
						WishList wish = wishList.get(i);
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
							<td class="td_center"><img src="<%=thumbnail%>" class="thumbnail_m"></td>
							<td class="td_left">
								<div><%=product.getName()%></div>
								<div><span>[color:<%=wish.getColor()%>]</span></div>
							</td>
							<td class="td_center"><input type="number" class="table_cart_number" value="1"> 개</td>
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
	</div>
	<jsp:include page="../common/footer.jsp"/>
</body>
<script type="text/javascript">
	function popUpModifyOption(){
		var url = "orderOption.jsp";
		var option = "width=475, height=475, resizable=yes, scrollbars=yes, status=no";
		window.open(url, "", option);
	};
	
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
		} else if (proc == 'deleteCartAll') {
			if (!confirm('장바구니를 비우시겠습니까?')){
				return false;
			}
			form = document.querySelector("#cartForm" + idx);
		}
		form.proc.value = proc;
		
		form.submit();
	}
</script>
</html>
