<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" import="selection.*" %>
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
</head>
<body>
	<input type="text" id="selectedValue">
	<select onchange="onSelect(this)">
		<%
		for (Option domain : Selection.domains){
		%>
		<option value="<%=domain.value%>"><%=domain.key%></option>
		<%
		}
		%>
	</select>
	<hr>
	
	<select>
		<%
		for(Option areaCode : Selection.areaCode){
		%>
		<option value="<%=areaCode.value%>"><%=areaCode.key%></option>
		<%	
		}
		%>
	</select>
	<hr>
	
	<select>
		<%
		for(Option areaCodeEx : Selection.areaCodeEx){
		%>
		<option value="<%=areaCodeEx.value%>"><%=areaCodeEx.key%></option>
		<%	
		}
		%>
	</select>
</body>
<script type="text/javascript">
	function onSelect(obj){
		var input = document.querySelector("#selectedValue");
		input.value = obj.value;
	};
</script>
</html>