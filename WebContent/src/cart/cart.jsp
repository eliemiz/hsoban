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
<link rel="stylesheet" href="<%=path%>/css/common.css">
<link rel="stylesheet" href="<%=path%>/css/cart.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
	
	<%

	// for number format
	DecimalFormat df = new DecimalFormat("#,###");
	
	// TODO : session에서 가져올 것
	int account_id = 100001;
	
	// 사용되는 DAO 객체 생성
	Dao_Cart daoCart = new Dao_Cart();
	Dao_WishList daoWishlist = new Dao_WishList();
	Dao_Product daoProduct = new Dao_Product();
	Dao_Stock daoStock = new Dao_Stock();
	
	// modifyNumber 클릭 시, cart update
	String process = request.getParameter("process");
	if (process == null) {
		process = "";
	}
	
	// cart list 불러오기
	ArrayList<Cart> cartList = daoCart.getCartList(account_id);
	
	// wish list 불러오기
	ArrayList<WishList> wishList = daoWishlist.getWishList(account_id);
	
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
						// TODO : 불러온 목록 화면에 뿌리기
						int total = 0;
						for (int i = 0; i < cartList.size(); i++) {
							Cart cart = cartList.get(i);								
							
							// # product_id를 토대로 상품 정보 불러오기
							Product product = daoProduct.getProdList(cart.getProduct_id(), cart.getColor());

							// total 계산
							total += product.getPrice() * cart.getCount();
							
							%>
							<% String id = "cartForm" + i; %>
							<tr>
								<td class="td_center"><%=i + 1%></td>
								<td class="td_center"><img src="<%=path%><%=product.getThumbnail() %>" class="thumbnail_m"></td>
								<td class="td_left">
									<div>
										<div>
											<%-- TODO : 링크 경로 바꾸기 --%>
											<a href="<%=path%>/src/shop/shop1_Bowl/Bowl1.jsp"><%=product.getName() %></a>
										</div>
										<div>
											<span>[color: <%=cart.getColor() %> <%=cart.getCount() %>개]</span>
											<img src="<%=path%>/img/cart/option.gif" onclick="popUpModifyOption()" class="modifyOption">
										</div>
									</div>
								</td>
								<td class="td_center">
									<%-- TODO : name 쓰이는 곳 있는지? --%>
									<% String name = "count" + i; %>
									<c:set var="name" value="<%=name%>"/>
									<input type="number" class="table_cart_number" value="<%=cart.getCount() %>" name="${name}">
									<input type="button" value="수정" class="btn btn_black table_cart_number_modify">
								</td>
								<td class="td_center"><%=df.format(product.getPrice()) %>원</td>
								<td class="td_center">
									<span>[기본배송]<br>조건</span>
								</td>
								<td class="td_center">
									<span>
										<input type="button" value="관심상품 등록" class="btn btn_thatch">
									</span>
									<span>
										<input type="button" value="장바구니 삭제" class="btn btn_normal">
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
			<input type="button" value="계속 쇼핑하기" class="btn btn_normal" onclick="location.href='<%=path%>/src/shop/shop1_Bowl/Bowl_main.jsp'">
			<input type="button" value="장바구니 비우기" class="btn btn_normal">
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
						<tr>
							<td class="td_center"><img src="<%=path%><%=product.getThumbnail()%>" class="thumbnail_m"></td>
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
									<input type="button" value="장바구니 담기" class="btn btn_thatch">
								</span>
								<span>
									<input type="button" value="관심상품 삭제" class="btn btn_normal">
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
	
	
</script>
</html>