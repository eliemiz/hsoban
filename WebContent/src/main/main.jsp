<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" %>
<% 
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/hsoban/css/main.css">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../common/header.jsp"/>

<div class="main_slider_wrap">                   
	<div id="f2s-rolling-container1" class="f2s-swiper">
		<div class="swiper-container">
			<div class="swiper-wrapper">                              
				<div class="swiper-slide"><img src="<%=path%>/img/common/mainroll1.jpg" alt="" /></div>                                
				<div class="swiper-slide"><img src="<%=path%>/img/common/mainroll2.jpg" alt="" /></div>                           
			</div>
				
		</div>
	</div>
</div>
<!-- <div>
	<div>
	    <p><span>Bowl</span><a href="" alt="">전체보기</a></p>
                        <ul>
		<li><div><a href="">
			<img src="" alt="상품" title="상품" />
		</a>
		</div>
		</li>
		<li><span></span> 두부볼中,小</li>
		<li>18,000원</li>
			    	    </ul>
	    	                <ul>
		<li><div><a href="">
			<img src="" alt="상품" title="상품" />
		</a>
		</div>
		</li>
		<li><span ></span> 국그릇</li>
		<li>34,000원</li>
			    	    </ul>
	    	                <ul>
		<li><div><a href="">
			<img src="" alt="상품" title="상품" />
		</a>
		</div>
		</li>
		<li><span></span>틴샐러드볼大</li>
		<li>78,000원</li>
			    	    </ul>
	    	                <ul>
		<li><div><a href="">
			<img src="" alt="상품" title="상품" />
		</a>
		</div>
		</li>
		<li><span></span>스프볼</li>
		<li>42,000원</li>
			    	    </ul>
	    	    	    	
	</div> -->
<jsp:include page="../common/side.jsp"/>


<jsp:include page="../common/footer.jsp"/>




</body>
</html>