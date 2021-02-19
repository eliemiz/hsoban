-<%@ page language="java" contentType="text/html; charset=UTF-8"
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

body {
	width: 90%;
	margin: auto;
	padding-top: 50px;
}

</style>
</head>
	<%
		// #11. cart_list에서 넘어온 페이지. 앞에서 받아온 parameter들을 변수 선언한다.
		// #18. update버튼 누른 후의 페이지.
		// <table> 안을 보시면 name= account_id부터 count까지 의 input 요소객체의 값들이 parameter로 넘어옵니다.
		// 변수 선언 for 페이지 로드
		String account_id = request.getParameter("account_id");
		String product_id = request.getParameter("product_id");
		String color = request.getParameter("color");
				
		// validate
		if (account_id == null || account_id.trim().equals("")) {
			account_id = "0";
		}
		if (product_id == null || product_id.trim().equals("")) {
			product_id = "0";
		}
		if (color == null) {
			color = "";
		}
		
		// #12. 받아온 변수들을 이용해 데이터 '하나'를 가져옵니다.
		// ArrayList<Cart>가 아니라 Cart로 받아옵니다.
		// #19. 받아온 변수들을 이용해 데이터 '하나'를 가져옵니다...만 여기선 중요하지 않습니다.
		// update 후에 바로 list.jsp로 넘어갈 것이기 때문이죠.
		Dao_Cart dao = new Dao_Cart();
		Cart cart = dao.getCart(Integer.parseInt(account_id), Integer.parseInt(product_id), color);
		
		// #13. count는 앞에서 받아오지 않았기 때문에 현 시점의 count는 null 이겠죠
		// #20. 테이블 내에 name=count가 있었기 때문에 이 값 또한 가져옵니다.
		// 여기서 count는 사용자가 input에 입력한 값이 저장됩니다.
		// 변수 선언 for update
		String count = request.getParameter("count");
		if (count == null || count.trim().equals("")) {
			count = "0";
		}
		
		// #14. process 역시 마찬가지입니다. 아래 if-else if문도 통과합니다.
		// #21. 17번 과정에서 process 값을 update로 수정했다고 했죠? 여기서 쓰입니다.
		// process값이 update가 됨에 따라 update 과정을 수행합니다.
		String process = request.getParameter("process");
		if (process == null) {
			process = "";
		}
		if (process.equals("update")) {

			// update
			// #22. update를 위한 Cart객체를 생성합니다.
			// 여기서 주의할 점, 만약 값들 중 일부만 수정하여 18번과 20번에 없는 변수가 있다면 어떻게 해야 할까요?
			// 19번의 cart에 저장된 값들을 그대로 이용하면 됩니다.
			// 수정하지 않을 값들은 기존 값 그대로 쓰면 되니 cart.변수명을 매개변수로 해서 update하면 됩니다.
			// 이 부분은 제 코드 상 설명이 힘드니 헷갈리는 분은 다시 질문 주세요.
			// 업데이트 처리를 한 후 cart_list.jsp페이지로 이동하면서 이 페이지에서의 역할이 끝납니다.
			Cart newCart = new Cart(Integer.parseInt(account_id), Integer.parseInt(product_id), color, Integer.parseInt(count));
			dao.updateCart(newCart);
			response.sendRedirect("cart_list.jsp");
			
		} else if (process.equals("delete")) {
			
			// #23. delete도 update와 마찬가지이니, delete버튼을 눌렀을 때의 흐름을 직접 파악해보세요
			// delete
			dao.deleteCart(Integer.parseInt(account_id), Integer.parseInt(product_id), color);
			response.sendRedirect("cart_list.jsp");
		}
	%>
<body>
	<%-- #15. 12번과정에서 가져온 cart의 변수값들을 화면에 출력합니다. --%>
	<form method="post" id="cartForm">
		<input type="hidden" name="process" value="">
		<table>
			<tr>
				<th>account_id</th>
				<td><input type="text" name="account_id" value="<%=cart.getAccount_id()%>" disabled></td>
			</tr>
			<tr>
				<th>product_id</th>
				<td><input type="text" name="product_id" value="<%=cart.getProduct_id()%>" disabled></td>
			</tr>
			<tr>
				<th>color</th>
				<td><input type="text" name="color" value="<%=cart.getColor()%>" disabled></td>
			</tr>
			<tr>
				<th>count</th>
				<td><input type="text" name="count" value="<%=cart.getCount()%>"></td>
			</tr>
			<tr>
				<td colspan="2">
					<%-- #16. 값을 수정해서 update버튼을 누르면 script의 updateButton.onclick()이 실행됩니다. --%>
					<input type="submit" value="수정" id="updateButton" class="btn btn_thatch">
					<input type="submit" value="삭제" id="deleteButton" class="btn btn_black">
					<input type="button" value="리스트로 이동" onclick="location.href='cart_list.jsp'" class="btn btn_normal">
				</td>
			</tr>
		</table>
	</form>
</body>
<script type="text/javascript">
	var cartForm = document.querySelector('#cartForm');
	var process = document.querySelector('[name=process]');
	var updateButton = document.querySelector('#updateButton');
	var deleteButton = document.querySelector('#deleteButton');
	
	// #17. 여기서 수정한 값은 count뿐이지만, 수정하는게 많은 클래스들은 이 부분이 길어질 겁니다.
	// 필요에 따라 유효성 체크를 하고, 유효하지 않으면 경고와 함께 return false;로 빠꾸시키도록 합니다.
	// 모든 것이 정상적으로 입력되었으면 input type="hidden" name="process"로 선언한 요소객체의 값을 update로 해주고 submit합니다
	// 그러면 다시 페이지가 로딩될때 getParameter로 process의 값을 받을 때 update값을 받을 수 있습니다.
	updateButton.onclick = function() {
		
		// 유효성 체크
		var count = document.querySelector('[name=count]');
		if (isNaN(count.value)){
			alert('숫자를 입력하세요');
			return false;
		}
		
		process.value = 'update';
		cartForm.submit();
	}
	
	deleteButton.onclick = function() {
		process.value = 'delete';
		if (confirm('정말 삭제하시겠습니까?')){
			cartForm.submit();	
		} 
	}
	
</script>
</html>