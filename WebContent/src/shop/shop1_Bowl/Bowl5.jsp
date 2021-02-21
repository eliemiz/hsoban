<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/hsoban/css/allCommon.css">
<link rel="stylesheet" href="/hsoban/css/shopdetail.css">
<link rel="stylesheet" href="/hsoban/css/common.css">
<style>
.mic {
	width: 14px;
	height: 14px;
}
.note {
	width: 25px;
	height: 25px;
}
.reply {
	width: 14px;
	height: 14px;
}
</style>
<meta charset="UTF-8">
<title>[토리볼]</title>
</head>
<body>
<jsp:include page="../../common/header.jsp"/>

<div id="contentWrapper">
	<div id="contentWrap">
		<div id="content">
			<div id="productDetail">
				<div class="page-body">
					<div class="thumb-info">
						<div class="thumb-wrap">
							<div class="thumb detail_image">
								<img src="/hsoban/img/shop/Bowl5_01.jpg" alt="대표이미지"/>
							</div>
						</div>
						<form name="form1" method="post" id="form1" action="/hsoban/cart/cart.jsp">	
							<!-- value값 처리 -->
							<input type="hidden" name="brandcode" value="">
							<input type="hidden" name="branduid" value="">
							<input type="hidden" name="xcode" value="">
							<input type="hidden" name="mcode" value="">
							<input type="hidden" name="typep" value="O">
							<input type="hidden" name="ordertype">
							<input type="hidden" name="opts">
							<input type="hidden" name="mode">
							<input type="hidden" name="optioncode">
							<input type="hidden" name="optiontype">
							<input type="hidden" name="optslist">
							<input type="hidden" id="price" name="price" value="32000">
							<input type="hidden" id="disprice" name="disprice" value="">
							<input type="hidden" id="price_wh" name="price_wh" value="32000">
							<input type="hidden" id="disprice_wh" name="disprice_wh" value="">
							<input type="hidden" id="option_type_wh" name="option_type_wh" value="PS">
							<input type="hidden" id="prd_hybrid_min" name="prd_hybrid_min" value="1">
							<input type="hidden" name="MOBILE_USE" value="NO">
							<input type="hidden" name="product_type" id="product_type" value="NORMAL">
							<input type="hidden" name="multiopt_direct" value="">
							<input type="hidden" name="collbasket_type" value="Y">
							<input type="hidden" name="package_chk_val" value="0">
							<input type="hidden" name="miniq" id="miniq" value="1">
							<input type="hidden" name="maxq" id="maxq" value="2147483647">
							<input type="hidden" name="cart_free" value="">
							<input type="hidden" name="opt_type" value="PS">
							<input type="hidden" name="hybrid_op_price" id="hybrid_op_price" value="">
							<input type="hidden" name="basket_use" id="basket_use" value="Y">
							<input type="hidden" name="spcode"><input type="hidden" name="spcode2"><input type="hidden" id="regular_price" name="regular_price" value=""><!-- value값에 가격 넣기 -->
							<input type="hidden" id="discount_price" name="discount_price" value="">
							<input type="hidden" id="discount_type" name="discount_type" value="">
							<input type="hidden" name="uid" value="1008823">
							<input type="hidden" id="option_type" name="option_type" value="PS">
							<div class="info">
								<h3 class="tit-prd">토리볼</h3>
								<div class="table-opt">
									<table summary="판매가격, 적립금, 주문수량, 옵션, 사이즈, 상품조르기, sns">
										<!-- <caption>상품 옵션</caption> -->
										<colgroup><col width="90"><col width="*"></colgroup>
										<tbody>
											<tr><th scope="row"><div class="tb-left">판매가격</div></th><td class="price"><div class="tb-left">32,000원</div></td></tr>
											<tr><td colspan="2">
												<div class="opt-wrap" style="margin-top: 0">										
													<dl>
														<dt>color</dt>
														<dd><select name="optionlist[]" onchange="change_option(this,'basic');" label="color" opt_type="SELECT" opt_id="3" opt_mix="Y" require="Y" opt_mandatory="Y" class="basic_option">
																<option value>옵션 선택</option>
																<option matrix="1" sto_id="3" price="32000" title="블랙" value="0">블랙(일시품절)</option>
																<option matrix="2" sto_id="4" price="32000" title="베이지" value="0">베이지(일시품절)</option>
																<option matrix="3" sto_id="5" price="32000" title="그린(유광)" value="0">그린(유광)(일시품절)</option>
																<option matrix="4" sto_id="14" price="32000" title="와인" value="0">와인(일시품절)</option>
																<option matrix="4" sto_id="14" price="32000" title="그레이" value="0">그레이(일시품절)</option>
																<option matrix="5" sto_id="11" price="32000" title="진그레이" value="0">진그레이(일시품절)</option>
																<!-- size 선택에 따라 option 선택창 >> 추후 함수 처리 -->																												
															</select>
														</dd>
													</dl>
												</div>
												</td>
											</tr>
											<tr><td colspan="2">
												<div class="MK_optAddWrap">
													<div id="MK_innerOptWrap">
														<div id="MK_innerOptScroll">
															<ul id="MK_innerOpt_01" class="MK_inner-opt-cm"></ul>
															<ul id="MK_innerOpt_02" class="MK_inner-opt-cm"></ul>
														</div>
														<div id="MK_innerOptPrice">
															상품금액<span id="MK_txt-prd"></span>원 + 기본옵션<span id="MK_txt-opt"></span>원
														</div>
													</div>
													<div id="MK_innerOptTotal">
                                                                <span class="MK_txt-total">TOTAL</span>
                                                                <strong class="MK_total" id="MK_p_total">0</strong>
                                                                <span class="MK_txt-won">원</span>
                                                    </div>
												</div>
											</td></tr>
										</tbody>
									</table>
								</div>
								<div class="prd-btns">
                                    <div style="text-align:right; color:#525252; font-size:12px; font-weight:bold;">상품이 품절되었습니다.</div>
                                </div>
							</div>
						</form>
					</div>
					<img src="/hsoban/src/shop/img/detail_top.jpg" alt="그릇 소개"/>
					<div class="prd-detail">
						<div id="videotalk_area"></div>
							<p align="center" style="margin: 0px; text-align: center;"><span style="font-size: 9pt;"></span><br><span style="text-align: center; font-size: small;">&nbsp;</span></p>
							<p align="center" style="margin: 0px; text-align: center;"><strong><font color="#676767"><font size="3"></font></font></strong>&nbsp;
								<strong>
									<font color="#676767">
										<font size="3">◎</font>
										<font size="5">
											<font size="4">size</font>
											<font color="rgb(0.0.0)">&nbsp;&nbsp; 9.5
												<font style="font-size: 11pt;">cm(d)x													
													<font size="5">7</font>
												</font>
												<font style="font-size: 11pt;">cm(h)</font>
											</font>
										</font>
									</font>
								</strong>
							</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="left" style="margin: 0px; text-align: left;"><font color="#000000" style="background-color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font><font color="#828282" style="background-color: rgb(255, 255, 255);">&nbsp;&nbsp; º&nbsp;본 제품은 일일이 손으로 빚어 가마에서 구워나오는 &nbsp;수제의 특성상&nbsp;약간의 사이즈 차이가 있을 수 있습니다.</font></p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; º 기물에 보이는 유약의 흐름이나 검정색으로 보이는 작은 철분점은 교환,반품의 사유가 되지 않습니다.</font></p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; º 제품 상세 사진은 화면의 해상도에 따라 색이 약간 다를 수도 있습니다.</font></p>
							<p align="center" style="margin: 0px; text-align: center;"><br><span style="text-align: center; font-size: small;">&nbsp;</span><br><strong><font color="#676767"><font style="font-size: 11pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></font></strong><br></p>							
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="center" style="margin: 0px; text-align: center;"><img src="/hsoban/img/shop/Bowl5_02.jpg"></p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>					
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>					
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>					
							<p align="center" style="margin: 0px; text-align: center;"><img src="/hsoban/img/shop/Bowl5_03.jpg"></p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="center" style="margin: 0px; text-align: center;"><img src="/hsoban/img/shop/Bowl5_04.jpg"></p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="center" style="margin: 0px; text-align: center;"><img src="/hsoban/img/shop/Bowl5_05.jpg"></p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="center" style="margin: 0px; text-align: center;"><img src="/hsoban/img/shop/Bowl5_06.jpg"></p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="center" style="margin: 0px; text-align: center;"><img src="/hsoban/img/shop/Bowl5_07.jpg"></p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="center" style="margin: 0px; text-align: center;"><img src="/hsoban/img/shop/Bowl5_08.jpg"></p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="center" style="margin: 0px; text-align: center;"><img src="/hsoban/img/shop/Bowl5_09.jpg"></p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
					</div>
					<img src="/hsoban/src/shop/img/detail_info.jpg" alt="주의사항" style="display:block;"/>
					<h3 class="tit-detail">상품문의
						<span class="btns">
							<a class="list" href="../../board/inquiry_board.jsp">전체보기</a>
							<a class="answer" href="../../board/inquiry_write.jsp">상품문의</a>
						</span>
                    </h3>
                    <div class="table-slide qna-list">
                        <table summary="번호, 제목, 작성자, 작성일, 조회">
                    		<caption>QnA 리스트</caption>
                    			<colgroup>
                                    <col width="80"><col width="30"><col width="*"><col width="100"><col width="100"><col width="100">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col"><div class="tb-center">번호</div></th>
                                        <th scope="col"></th>
                                        <th scope="col"><div class="tb-center">제목</div></th>
                                        <th scope="col"><div class="tb-center">작성자</div></th>
                                        <th scope="col"><div class="tb-center">작성일</div></th>
                                        <th scope="col"><div class="tb-center">조회수</div></th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<tr>
                                		<td><div class="tb-center">+</div></td>
                                		<td><div class="td_left"><img src="<%=path %>/img/board/mic.png" class="mic"/></div></td>
                                		<td><div class="td_left"><a href="../../board/notice.jsp">2021년 설 연휴 이전 배송이 2월10일 마감되어 15일 이후 발송됩니다.</a></div></td>
                                		<td><div class="tb-center">운영자</div></td>
                                		<td><div class="tb-center">2021/02/11</div></td>
                                		<td><div class="tb-center">246</div></td>
                                	</tr>
                                	<tr>
					                   <td><div class="tb-center">8</div></td>
					                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
					                   <td><div class="td_left"><a href="../../board/inquiry.jsp">재입고문의</a></div></td>
					                   <td><div class="tb-center">홍길동</div></td>
					                   <td><div class="tb-center">2021/02/10</div></td>
					                   <td><div class="tb-center">2</div></td>
						             </tr>
					               <tr>
					                   <td><div class="tb-center">7</div></td>
					                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
					                   <td><div class="td_left"><a href="../../board/inquiry.jsp">취소요청</a></div></td>
					                   <td><div class="tb-center">홍길동</div></td>
					                   <td><div class="tb-center">2021/02/09</div></td>
					                   <td><div class="tb-center">15</div></td>
					               </tr>
					               <tr>
					                   <td><div class="tb-center">6</div></td>
					                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
					                   <td><div class="td_left"><a href="../../board/inquiry.jsp">환불요청</a></div></td>
					                   <td><div class="tb-center">홍길동</div></td>
					                   <td><div class="tb-center">2021/02/07</div></td>
					                   <td><div class="tb-center">11</div></td>
					               </tr>
					               <tr>
					                   <td><div class="tb-center">5</div></td>
					                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
					                   <td><div class="td_left"><img src="<%=path%>/img/board/reply.png" style="padding-left: 10px;" class="reply">
					                   <a href="../../board/inquiry.jsp">환불요청</a></div></td>
					                   <td><div class="tb-center">운영자</div></td>
					                   <td><div class="tb-center">2021/02/08</div></td>
					                   <td><div class="tb-center">11</div></td>
					               </tr>
					               <tr>
					                   <td><div class="tb-center">4</div></td>
					                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
					                   <td><div class="td_left"><a href="../../board/inquiry.jsp">주문건요</a></div></td>
					                   <td><div class="tb-center">홍길동</div></td>
					                   <td><div class="tb-center">2021/02/07</div></td>
					                   <td><div class="tb-center">42</div></td>
					               </tr>
					               <tr>
					                   <td><div class="tb-center">3</div></td>
					                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
					                   <td><div class="td_left"><img src="<%=path%>/img/board/reply.png" style="padding-left: 10px;" class="reply">
					                   <a href="../../board/inquiry.jsp">주문건요</a></div></td>
					                   <td><div class="tb-center">운영자</div></td>
					                   <td><div class="tb-center">2021/02/08</div></td>
					                   <td><div class="tb-center">41</div></td>
					               </tr>
					               <tr>
					                   <td><div class="tb-center">2</div></td>
					                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
					                   <td><div class="td_left"><a href="../../board/inquiry.jsp">입고문의</a></div></td>
					                   <td><div class="tb-center">홍길동</div></td>
					                   <td><div class="tb-center">2021/02/07</div></td>
					                   <td><div class="tb-center">53</div></td>
					               </tr>
					               <tr>
					                   <td><div class="tb-center">1</div></td>
					                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
					                   <td><div class="td_left"><img src="<%=path%>/img/board/reply.png" style="padding-left: 10px;" class="reply">
					                   <a href="../../board/inquiry.jsp">입고문의</a></div></td>
					                   <td><div class="tb-center">운영자</div></td>
					                   <td><div class="tb-center">2021/02/08</div></td>
					                   <td><div class="tb-center">50</div></td>
					               </tr>
					           </tbody>
                        </table>
                        <br>
					      <div style="text-align: center;">
					         <input type="button" value="&nbsp;1&nbsp;" class="btn_normal">
					         <input type="button" value="&nbsp;>&nbsp;" class="btn_normal">
					         <input type="button" value=">>" class="btn_normal">
					      </div>
                   </div>
				</div>
			</div>
			<!-- #productDetail -->
		</div>
	</div>
</div>

<jsp:include page="../../common/side.jsp"/>	
<jsp:include page="../../common/footer.jsp"/>
</body>
</html>