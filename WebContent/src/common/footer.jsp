<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" %>
<% 
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/hsoban/css/footer.css">
<meta charset="UTF-8">
<title>footer</title>
</head>
<body>
	<div id="footer">
    <div class="foot_info"><img src="<%=path%>/img/common/foot_info.jpg" alt="foot_info"></div>
    <div class="foot_middle">
		<div class="foot_middle_inner">
	    	<p><img src="<%=path%>/img/common/foot_info1.jpg" alt="img01"></p>
	    	<div class="fminner"><img src="<%=path%>/img/common/foot_info2.jpg" alt="img02"></div>
	    	<div class="fminner">
	            <img src="<%=path%>/img/common/foot_info3.jpg" alt="img03">
                    <a href="리뷰링크">REVIEW<b><img src="<%=path%>/img/common/foot_arrow.png"></b></a>
	    	</div>
		</div>
    </div>
</div>

<div id="footerWrap">
	<div class="foot_info">
		<img src="<%=path%>/img/common/foot_logo.jpg" alt="hsoban">
        <img src="<%=path%>/img/common/foot_text.jpg" alt="hsoban">
		<div class="copy">
			<p>
			<a href="개인정보취급방침링크"><img src="<%=path%>/img/common/foot_link1.jpg" alt="개인정보취급방침"></a>
            | 
            <a href="이용약관 링크"><img src="<%=path%>/img/common/foot_link2.jpg" alt="이용약관"></a>
			</p>
            <img src="<%=path%>/img/common/foot_copy.jpg" alt="copyright">
		</div>
	</div>
</div>
</body>
</html>