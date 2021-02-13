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
<title>[2인세트]</title>
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
								<img src="/hsoban/img/shop/Set1_01.jpg" alt="대표이미지"/>
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
							<input type="hidden" id="price" name="price" value="">
							<input type="hidden" id="disprice" name="disprice" value="">
							<input type="hidden" id="price_wh" name="price_wh" value="">
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
								<h3 class="tit-prd">2인 세트</h3>
								<div class="table-opt">
									<table summary="판매가격, 적립금, 주문수량, 옵션, 사이즈, 상품조르기, sns">
										<!-- <caption>상품 옵션</caption> -->
										<colgroup><col width="90"><col width="*"></colgroup>
										<tbody>
											<tr><th scope="row"><div class="tb-left">소비자가격</div></th><td class="price"><div class="tb-left"><strike>674,000원</strike></div></td></tr>
											<tr><th scope="row"><div class="tb-left">판매가격</div></th><td class="price"><div class="tb-left">606,000원</div></td></tr>
											<tr>
                                                <td colspan="2">
                                                    <div class="MK_optAddWrap">
                                                        <div id="MK_innerOptWrap">
                                                            <div id="MK_innerOptScroll">
                                                                <ul id="MK_innerOpt_01" class="MK_inner-opt-cm">
                                                                	<li id="basic_0">
                                                                		<input type="hidden" id="MS_keys_basic_0" value="0:0" class="basic_option">
                                                                		<span class="MK_p-name">2인세트</span>
                                                                		<div class="MK_qty-ctrl">
	                                                                		<input type="text" id="MS_amount_basic_0" name="amount[]" value="1" onfocusout="set_amount(this, 'basic');" size="4" style="text-align: right; float: left;" class="basic_option" maxlength="">
	                                                                		<a href="javascript:set_amount('MS_amount_basic_0', 'basic', 'up');" class="MK_btn-up"><img src="/hsoban/img/common/basket_up.gif" alt="수량증가" border="0"></a>
	                                                                		<a href="javascript:set_amount('MS_amount_basic_0', 'basic', 'down');" class="MK_btn-dw"><img src="/hsoban/img/common/basket_down.gif" alt="수량감소" border="0"></a>
                                                                		</div>
                                                                		<strong class="MK_price"><span id="MK_p_price_basic_0">606,000</span>원</strong>
                                                                	</li>
                                                                </ul>                                                                
                                                                <ul id="MK_innerOpt_02" class="MK_inner-opt-cm"></ul>                                                            </div>
                                                            <div id="MK_innerOptPrice">
                                                                상품금액 <span id="MK_txt-prd"></span> 원 + 기본옵션 <span id="MK_txt-opt"></span> 원
                                                            </div>
                                                             

                                                        </div>
                                                            <div id="MK_innerOptTotal">
                                                                <span class="MK_txt-total">TOTAL</span>
                                                                <strong class="MK_total" id="MK_p_total">606,000</strong>
                                                                <span class="MK_txt-won">원</span>
                                                            </div>

                                                    </div>
                                                </td>
                                            </tr>
										</tbody>
									</table>
								</div>
								<div class="prd-btns">
                                    <a href="../cart/order.jsp" class="btn_red"><img src="/hsoban/src/shop/img/btn_order.png" alt="바로구매" title="바로구매"></a>
                                    <a href="../cart/cart.jsp"><img src="/hsoban/src/shop/img/btn_cart.png" alt="장바구니 담기" title="장바구니 담기"></a>
                                    <a href="../mypage/mypage_myWish.jsp"><img src="/hsoban/src/shop/img/btn_wish.png" alt="관심상품" title="관심상품"></a>
                                </div>
							</div>
						</form>
					</div>
					<img src="/hsoban/src/shop/img/detail_top.jpg" alt="그릇 소개"/>
					<div class="prd-detail">
						<div id="videotalk_area"></div>
							<p align="center" style="margin: 0px; text-align: center;"><strong><font color="#676767"><font size="3"></font></font></strong>&nbsp;
							<p align="center" style="margin:0px; text-align:center;"><font face="Gungsuh,궁서" size="6">2人세트</font></p>
							<p align="center" style="margin: 0px; text-align: center;"><strong><font color="#676767"><font size="3"></font></font></strong>&nbsp;
							<p align="center" style="margin: 0px; text-align: center;"><font color="#cccccc">10% 할인 상품</font></p>
							<p align="center" style="margin: 0px; text-align: center;"><strong><font color="#676767"><font size="3"></font></font></strong>&nbsp;
							<p align="center" style="margin: 0px; text-align: center;"><strong><font color="#676767"><font size="3"></font></font></strong>&nbsp;
							<p align="center" style="margin: 0px; text-align: center;"><font color="#b5594a">색상 랜덤(최대한 같은 제품에 색상이 겹치지 않게 골고루 구성하여 보내드립니다.)</font></p>
							<p align="center" style="margin: 0px; text-align: center;"><strong><font color="#676767"><font size="3"></font></font></strong>&nbsp;
							<p align="center" style="margin: 0px; text-align: center;"><strong><font color="#676767"><font size="3"></font></font></strong>&nbsp;
							<p align="center" style="margin: 0px; text-align: center;"><font color="#5b5b5b">햇볼小 *2 / 햇볼中 *2 / 틴샐러드볼mini *3 / 가로접시中 *2 / 에그볼 *2 / 나즌콩접시 *2 / 피쉬접시 *1 / 원턱접시中 *1 / 하프볼 *1 / 수저받침 *2</font></p>												
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
							<p align="center" style="margin: 0px; text-align: center;"><img src="/hsoban/img/shop/Set1_02.jpg"></p>
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
							<a class="list" href="Q&A게시판링크">전체보기</a>
							<a class="answer" href="">상품문의</a>
						</span>
                    </h3>
                    <div class="table-slide qna-list">
                    	<table summary="번호, 제목, 작성자, 작성일, 조회">
                    		<caption>QnA 리스트</caption>
                    			<colgroup>
                                    <col width="80"><col width="30"><col width="*"><col width="100"><col width="100"><col width="80">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col"><div class="tb-center">번호</div></th>
                                        <th scope="col"></th>
                                        <th scope="col"><div class="tb-center">제목</div></th>
                                        <th scope="col"><div class="tb-center">작성자</div></th>
                                        <th scope="col"><div class="tb-center">작성일</div></th>
                                        <th scope="col"><div class="tb-center">조회</div></th>
                                    </tr>
                                </thead>
                                 <tbody>
                                	<tr>
                                		<td><div class="td-center">+</div></td>
                                		<td><div class="td_left">&nbsp;<img src="<%=path %>/img/board/mic.png" class="mic"/></div></td>
                                		<td><div class="td-left"><a href="../../board/notice.jsp">2021년 설 연휴 이전 배송이 2월10일 마감되어 15일 이후 발송됩니다.</a></div></td>
                                		<td><div class="td-center">운영자</div></td>
                                		<td><div class="td_center">2021/02/11</div></td>
                                		<td><div class="td_center">246</div></td>
                                	</tr>
                                	<tr>
					                   <td><div class="td_center">8</div></td>
					                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
					                   <td><div class="td_left"><a href="../../board/inquiry.jsp">재입고문의</a></div></td>
					                   <td><div class="td_center">홍길동</div></td>
					                   <td><div class="td_center">2021/02/10</div></td>
					                   <td><div class="td_center">2</div></td>
						             </tr>
					               <tr>
					                   <td><div class="td_center">7</div></td>
					                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
					                   <td><div class="td_left"><a href="../../board/inquiry.jsp">취소요청</a></div></td>
					                   <td><div class="td_center">홍길동</div></td>
					                   <td><div class="td_center">2021/02/09</div></td>
					                   <td><div class="td_center">15</div></td>
					               </tr>
					               <tr>
					                   <td><div class="td_center">6</div></td>
					                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
					                   <td><div class="td_left"><a href="../../board/inquiry.jsp">환불요청</a></div></td>
					                   <td><div class="td_center">홍길동</div></td>
					                   <td><div class="td_center">2021/02/07</div></td>
					                   <td><div class="td_center">11</div></td>
					               </tr>
					               <tr>
					                   <td><div class="td_center">5</div></td>
					                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
					                   <td><div class="td_left"><img src="<%=path%>/img/board/reply.png" style="padding-left: 10px;" class="reply">
					                   <a href="../../board/inquiry.jsp">환불요청</a></div></td>
					                   <td><div class="td_center">운영자</div></td>
					                   <td><div class="td_center">2021/02/08</div></td>
					                   <td><div class="td_center">11</div></td>
					               </tr>
					               <tr>
					                   <td><div class="td_center">4</div></td>
					                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
					                   <td><div class="td_left"><a href="../../board/inquiry.jsp">주문건요</a></div></td>
					                   <td><div class="td_center">홍길동</div></td>
					                   <td><div class="td_center">2021/02/07</div></td>
					                   <td><div class="td_center">42</div></td>
					               </tr>
					               <tr>
					                   <td><div class="td_center">3</div></td>
					                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
					                   <td><div class="td_left"><img src="<%=path%>/img/board/reply.png" style="padding-left: 10px;" class="reply">
					                   <a href="../../board/inquiry.jsp">주문건요</a></div></td>
					                   <td><div class="td_center">운영자</div></td>
					                   <td><div class="td_center">2021/02/08</div></td>
					                   <td><div class="td_center">41</div></td>
					               </tr>
					               <tr>
					                   <td><div class="td_center">2</div></td>
					                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
					                   <td><div class="td_left"><a href="../../board/inquiry.jsp">입고문의</a></div></td>
					                   <td><div class="td-center">홍길동</div></td>
					                   <td><div class="td_center">2021/02/07</div></td>
					                   <td><div class="td_center">53</div></td>
					               </tr>
					               <tr>
					                   <td><div class="td_center">1</div></td>
					                   <td><div class="td_left"><img src="<%=path%>/img/board/note.jpg" class="note"></div></td>
					                   <td><div class="td_left"><img src="<%=path%>/img/board/reply.png" style="padding-left: 10px;" class="reply">
					                   <a href="../../board/inquiry.jsp">입고문의</a></div></td>
					                   <td><div class="td_center">운영자</div></td>
					                   <td><div class="td_center">2021/02/08</div></td>
					                   <td><div class="td_center">50</div></td>
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


























