<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="java.net.*" import="selection.*" 
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
<title>고급형 주문서 작성</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<link rel="stylesheet" href="<%=path%>/css/common.css">
<link rel="stylesheet" href="<%=path%>/css/cart.css">
<style type="text/css">
#form1 {
	display: inline;
}

#form2, #form3 {
	display: none;
}
</style>
</head>
<%
	
	// format
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	DecimalFormat df = new DecimalFormat("#,###");
	
	// TODO : session에서 가져오기
	int account_id = 100001;

	// Dao
	Dao_Cart daoCart = new Dao_Cart();
	Dao_Product daoProduct = new Dao_Product();
	Dao_OrderDetail daoOrderDetail = new Dao_OrderDetail();
	Dao_OrderProduct daoOrderProduct = new Dao_OrderProduct();

	// cart list
	ArrayList<Cart> cartList = daoCart.getCartList(account_id);
	
	// INSERT OrderDetail
	String proc = request.getParameter("proc");
	
	if (proc != null) {
		if (proc.equals("order")){
			int order_id = daoOrderDetail.getNextOrderId();
			// int account_id = 현재 저장된 값 그대로 사용
			Date now = new Date();
			String order_date_s = sf.format(new Date());
			String post = request.getParameter("post1") + request.getParameter("post2");
			String address1 = request.getParameter("address1");
			String address2 = request.getParameter("address2");
			String order_message = request.getParameter("order_message");
			if (order_message == null){
				order_message = "";
			}
			String pay = request.getParameter("pay");
			String total = request.getParameter("total");
			
			daoOrderDetail.insertOrderDetail(new OrderDetail(order_id, account_id, 
					order_date_s, Integer.parseInt(post), address1, address2,
					order_message, pay, Integer.parseInt(total)));
			
			String[] product_ids = request.getParameterValues("product_id");
			String[] colors = request.getParameterValues("color");
			String[] counts = request.getParameterValues("count");
			
			for (int idx = 0; idx < product_ids.length; idx++) {
				daoOrderProduct.insertOrderProduct(new OrderProduct(order_id, 
						Integer.parseInt(product_ids[idx]), colors[idx], Integer.parseInt(counts[idx])));
				
			}
			
			response.sendRedirect(path + "/src/mypage/mypage_myOrder.jsp");
		}
	}
		
	%>
	
<body>
	<jsp:include page="../common/header.jsp"/>
	<jsp:include page="../common/side.jsp"/>
	
	<form id="formOrder">
		<input type="button" value="주문 테스트"/>
	<div class="content_wrap">
		<div class="cart_title clear_fix">
			주문/결제
		</div>
		
		<div class="cart_wrap clear_fix">
			<table class="table_order">
				<colgroup>
					<col width="50px">
					<col width="200px">
					<col width="80px">
					<col width="80px">
				</colgroup>
				<thead>
					<tr>
						<td colspan="4">
							주문 리스트
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th></th>
						<th>제품</th>
						<th>수량</th>
						<th>가격</th>
					</tr>
					<%
						int sum = 0;
						for (int i = 0; i < cartList.size(); i++) {
							Cart cart = cartList.get(i);
							Product product = daoProduct.getProdList(cart.getProduct_id(), cart.getColor());
							%>
							<c:set var="account_id" value="<%=cart.getAccount_id() %>"/>
							<c:set var="product_id" value="<%=cart.getProduct_id() %>"/>
							<c:set var="color" value="<%=cart.getColor() %>"/>
							<c:set var="count" value="<%=cart.getCount() %>"/>
							<tr>
								<td style="display:none;">
									<input type="hidden" name="product_id" value="${product_id}">
									<input type="hidden" name="color" value="${color}">
									<input type="hidden" name="count" value="${count}">
								</td>
								<td class="td_center"><img src="<%=path%><%=product.getThumbnail()%>" class="thumbnail_s"></td>
								<td class="td_left"><a href="<%=path%>/src/shop/shop1_Bowl/Bowl1.jsp"><%=product.getName() %></a></td>
								<td class="td_center">${count}개</td>
								<td class="td_right"><%= df.format(product.getPrice()) %>원</td>
							</tr>
							<tr>
								<td colspan="4"><img src="<%=path%>/img/cart/cart_option.gif"> color: ${color} ${count}개</td>
							</tr>		
							<%
							sum += product.getPrice() * cart.getCount();
						}
					%>
				</tbody>
			</table>
		</div>
		
		<div class="cart_wrap clear_fix">
			<table class="table_order">
				<colgroup>
					<col width="130px">
					<col width="*">
				</colgroup>
				<thead>
					<tr>
						<td colspan="2">
							주문자 정보
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th class="th_left">이름</th>
						<td>
							<span>temp</span>
						</td>
					</tr>
					<tr>
						<th class="th_left">이메일</th>
						<td>
							<input type="text"> @ <input type="text" id="domain">
							<select onchange="onChangeDomain(this)">
							<%
							for (Option domain : Selection.domains){
							%>
								<option value="<%=domain.value%>"><%=domain.key%></option>
							<%
							}
							%>
							</select>
						</td>
					</tr>
					<tr>
						<th class="th_left">연락처</th>
						<td>
							<select>
							<%
							for (Option areaCodeEx : Selection.areaCodeEx){
							%>
								<option value="<%=areaCodeEx.value%>"><%=areaCodeEx.value%></option>
							<%
							}
							%>
							</select>
							-
							<input type="text" class="w60">
							-
							<input type="text" class="w60">
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div class="cart_wrap clear_fix">
			<table class="table_order">
				<colgroup>
					<col width="130px">
					<col width="*">
					<col width="130px">
					<col width="*">
				</colgroup>
				<thead>
					<tr>
						<td colspan="4">
							배송 정보
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th class="th_left">이름</th>
						<td colspan="3"><input type="text"></td>
					</tr>
					<tr>
						<th class="th_left">연락처1</th>
						<td>
							<select>
							<%
							for (Option areaCodeEx : Selection.areaCodeEx){
							%>
								<option value="<%=areaCodeEx.value%>"><%=areaCodeEx.value%></option>
							<%
							}
							%>
							</select>
							-
							<input type="text" class="w60">
							-
							<input type="text" class="w60">
						</td>
						<th class="th_left">연락처2</th>
						<td>
							<select>
							<%
							for (Option areaCode : Selection.areaCode){
							%>
								<option value="<%=areaCode.value%>"><%=areaCode.key%></option>
							<%
							}
							%>
							</select>
							-
							<input type="text" class="w60">
							-
							<input type="text" class="w60">
						</td>
					</tr>
					<tr>
						<th class="th_left">배송지 선택</th>
						<td colspan="3">
							<label><input type="radio" name="address"> 자택</label>
							<label><input type="radio" name="address"> 최근 배송지</label>
							<input type="button" value="배송지 목록" class="btn btn_normal">
							<label><input type="radio" name="address"> 신규 배송지</label>
						</td>
					</tr>
					<tr>
						<th class="th_left">주소</th>
						<td colspan="3">
							<span>
								<input type="text" class="w60" id="zipNo1" name="post1" readonly>
								-
								<input type="text" class="w60" id="zipNo2" name="post2" readonly>
								<input type="button" value="우편번호" class="btn btn_normal" onclick="goPopup()">
							</span>
							<span>
								<input type="text" class="w240" id="roadAddrPart1" name="address1" readonly>
								<input type="text" class="w240" id="addrDetail" name="address2">
							</span>
						</td>
					</tr>
					<tr>
						<th class="th_left"><span>주문메세지</span><span>(100자 내외)</span></th>
						<td colspan="3">
							<textarea name="order_message"></textarea>
						</td>
					</tr>
					<tr>
						<th class="th_left">무통장 입금자명</th>
						<td colspan="3">
							<input type="text">
							(주문자와 같을 경우 생략 가능)
						</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="4">
							<label><input type="checkbox">
							해당 배송지 정보를 나의 회원정보로 등록합니다.</label>
						</td>
					</tr>
				</tfoot>
			</table>
		</div>
		
		<div class="cart_wrap clear_fix">
			<table class="table_order table_order_payment">
				<thead>
					<tr>
						<td colspan="5">
							주문상품 할인 적용
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>상품금액</th>
						<th>배송비</th>
						<th>할인금액</th>
						<th>추가금액</th>
						<th>결제 예정금액</th>
					</tr>
					<tr>
						<td><span><%=df.format(sum)%>원</span></td>
						<td>
							<img src="<%=path%>/img/cart/bul_h23_plus.png" class="fL">
							<span>무료</span>
						</td>
						<td>
							<img src="<%=path%>/img/cart/bul_h23_minus.png" class="fL">
							<span class="c_red">0</span>원
						</td>
						<td>
							<img src="<%=path%>/img/cart/bul_h23_plus.png" class="fL">
							<span>0원</span>
						</td>
						<td>
							<img src="<%=path%>/img/cart/bul_h23_equal.png" class="fL">
							<span class="c_red"><%=df.format(sum)%></span>원
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div class="cart_wrap clear_fix">
			<table class="table_order">
				<colgroup>
					<col width="130px">
					<col width="*">
				</colgroup>
				<thead>
					<tr>
						<td colspan="2">
							결제 정보
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th class="th_left">결제 방법</th>
						<td>
							<label>
								<span>
									<input type="radio" name="pay" value="무통장 입금" checked="checked"> 무통장 입금
									<select>
										<option>농협중앙회</option>
										<option>국민은행</option>
										<option>우리은행</option>
										<option>중앙은행</option>
									</select>
								</span>
							</label>
							<label><span><input type="radio" name="pay" value="신용카드"> 신용카드</span></label>
							<label><span><input type="radio" name="pay" value="실시간 계좌이체"> 실시간 계좌이체</span></label>
							<label><span><input type="radio" name="pay" value="휴대폰 결제"> 휴대폰 결제</span></label>
						</td>
					</tr>
					<tr>
						<th class="th_left">증빙 신청</th>
						<td>
							<span>
								<label><input type="radio" name="evidenceCheck"> 신청 안함</label>
								<label><input type="radio" name="evidenceCheck"> 현금영수증</label>
							</span>
							<div>
								<select onchange="onSelectEvidence(this)">
									<option value="form1">핸드폰 번호</option>
									<option value="form2">국세청 현금영수증 카드</option>
									<option value="form3">사업자 번호</option>
								</select>
								<div id="form1">
									<input type="text" class="w60">
									-
									<input type="text" class="w60">
									-
									<input type="text" class="w60">
								</div>
								<div id="form2">
									<input type="text" class="w60">
									-
									<input type="text" class="w60">
									-
									<input type="text" class="w60">
									-
									<input type="text" class="w60">
								</div>
								<div id="form3">
									<input type="text" class="w60">
									-
									<input type="text" class="w60">
									-
									<input type="text" class="w60">
									업체명 :
									<input type="text" class="w60"> 
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="2" style="line-height: 20px;font-weight:normal;">
								선택된 입금계좌로 인터넷 뱅킹, 은행 방문 등을 통해 입금해주세요.<br>
								반드시 입금 기한 내에 정확한 결제 금액을 입금해주세요.<br>
								입금 기한이 지나면 주문은 자동 취소 됩니다.
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div class="cart_wrap clear_fix">
			<table class="table_order">
				<colgroup>
					<col width="130px">
					<col width="*">
				</colgroup>
				<thead>
					<tr>
						<td colspan="2">
							주문자 동의
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th class="th_left">주문 동의</th>
						<td>
							<label>
								<input type="checkbox">
								상기 결제 정보를 확인하였으며, 구매 진행에 동의합니다.
							</label>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div>
			<table class="table_order table_order_payment">
				<colgroup>
					<col width="130px">
					<col width="*">
				</colgroup>
				<tr>
					<th class="final_title">최종 결제 금액</th>
					<td class="final_content"><span class="c_red"><%=df.format(sum)%></span>원</td>
				</tr>
			</table>
		</div>
		
		<div class="cart_button_wrap">
			<input type="button" class="btn btn_thatch" value="주문하기" onclick="onOrder()">
			<input type="button" class="btn btn_normal" value="주문취소" onclick="orderCancel()">
		</div>
	</div>
	<input type="hidden" name="total" value="<%=sum%>"/>
	<input type="hidden" name="proc"/>
	</form>
	<jsp:include page="../common/footer.jsp"/>
</body>
<script type="text/javascript">
	
	function goPopup(){
		var pop = window.open("../common/jusoPopup.jsp", "pop", "width=570,height=420, scrollbars=yes, resizable=yes");
	}

	function jusoCallBack(roadAddrPart1, addrDetail, zipNo){
		var zipNo1 = zipNo.substr(0, 3);
		var zipNo2 = zipNo.substr(3, 3);
		document.querySelector("#zipNo1").value = zipNo1;
		document.querySelector("#zipNo2").value = zipNo2;
		document.querySelector("#roadAddrPart1").value = roadAddrPart1;
		document.querySelector("#addrDetail").value = addrDetail;
	}
	
	// not using
	function orderSuccess(){
		alert('주문에 성공했습니다.');
		location.href='<%=path%>/src/main/main.jsp';
	}
	
	function orderCancel(){
		alert('주문을 취소했습니다.');
		location.href='cart.jsp';
	}
	
	function onChangeDomain(obj){
		var domain = document.querySelector("#domain");
		domain.value = obj.value;
	}
	
	function onSelectEvidence(obj){
		document.querySelector("#form1").style.display = "none";
		document.querySelector("#form2").style.display = "none";
		document.querySelector("#form3").style.display = "none";
		var form = "#" + obj.value;
		document.querySelector(form).style.display = "inline";
	}
	
	function onOrder(){
		if ($("[name=post1]").val() == "") {
			alert("우편번호를 입력해주세요.");
			return false;
		}
		
		if ($("[name=post2]").val() == "") {
			alert("우편번호를 입력해주세요.");
			return false;
		}
		
		if ($("[name=address1]").val() == "") {
			alert("주소를 입력해주세요.");
			return false;
		}
		
		if ($("[name=address2]").val() == "") {
			alert("상세주소를 입력해주세요.");
			return false;
		}
		
		$("[name=proc]").val("order");
		$("#formOrder").submit();
	}
</script>
</html>