<%@page import="java.text.DecimalFormat"%>
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
<title>장바구니</title>
<link rel="stylesheet" href="<%=path%>/css/common.css">
<link rel="stylesheet" href="<%=path%>/css/cart.css">
</head>
	<%
	int[] prices = new int[]{10000, 20000, 30000, 40000};
	DecimalFormat df = new DecimalFormat("#,###");
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
						for (int i = 0; i < 4; i++) {
							%>
							<tr>
								<td class="td_center"><%=i + 1%></td>
								<td class="td_center"><img src="<%=path%>/img/cart/temp.jpg" class="thumbnail_m"></td>
								<td class="td_left">
									<div>
										<div>
											<a href="<%=path%>/src/shop/shop1_Bowl/Bowl1.jsp">국그릇</a>
										</div>
										<div>
											<span>[color: 그린(유광) 1개]</span>
											<img src="<%=path%>/img/cart/option.gif" onclick="popUpModifyOption()">
										</div>
									</div>
								</td>
								<td class="td_center">
									<% String name = "p" + i; %>
									<input type="number" class="table_cart_number" value="1" name="<%=name%>">
									<input type="button" value="수정" class="btn btn_black table_cart_number_modify">
								</td>
								<td class="td_center"><%=df.format(prices[i]) %>원</td>
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
							<%
						}
					%>
				</tbody>
				<tfoot>
					<%
						int total = 0;
						for (int price : prices){
							total += price;
						}
					%>
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
						for (int i = 1; i <= 4; i++){
							%>
							<tr>
								<td class="td_center"><img src="<%=path%>/img/cart/temp.jpg" class="thumbnail_m"></td>
								<td class="td_left">국그릇</td>
								<td class="td_center"><input type="number" class="table_cart_number" value="1"> 개</td>
								<td class="td_center">있음</td>
								<td class="td_center">123,456원</td>
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