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
<title>주소 입력 샘플</title>
<link rel="stylesheet" href="<%=path%>/css/common.css">
</head>
<body>
	<form name="form" id="form" method="post">
		<div>
			<table>
				<tr>
					<td>우편번호</td>
					<td><input type="text" id="zipNo" name="zipNo" /></td>
				</tr>
				<tr>
					<td>도로명주소</td>
					<td><input type="text" id="roadAddrPart1" name="roadAddrPart1" /></td>
				</tr>
				<tr>
					<td>도로명주소(상세)</td>
					<td><input type="text" id="addrDetail" name="addrDetail" /></td>
				</tr>
			</table>
		</div>
		<input type="button" onClick="goPopup();" value="주소 검색" class="btn btn_black"/>
	</form>
</body>
<script type="text/javascript">

function goPopup(){
	var pop = window.open("../common/jusoPopup.jsp", "pop", "width=570,height=420, scrollbars=yes, resizable=yes");
	}

function jusoCallBack(roadAddrPart1, addrDetail, zipNo){
		document.querySelector("#zipNo").value = zipNo;
		document.querySelector("#roadAddrPart1").value = roadAddrPart1;
		document.querySelector("#addrDetail").value = addrDetail;
		/* document.form.zipNo.value = zipNo;
		document.form.roadAddrPart1.value = roadAddrPart1; */
	}
</script>
</html>