<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/hsoban/css/allCommon.css">
<link rel="stylesheet" href="/hsoban/css/shopdetail.css">
<meta charset="UTF-8">
<title>[사각멀티볼]</title>
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
								<img src="/hsoban/img/shop/SideBowl1_01.jpg" alt="대표이미지"/>
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
							<input type="hidden" id="price" name="price" value="58000">
							<input type="hidden" id="disprice" name="disprice" value="">
							<input type="hidden" id="price_wh" name="price_wh" value="58000">
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
								<h3 class="tit-prd">사각멀티볼</h3>
								<div class="table-opt">
									<table summary="판매가격, 적립금, 주문수량, 옵션, 사이즈, 상품조르기, sns">
										<!-- <caption>상품 옵션</caption> -->
										<colgroup><col width="90"><col width="*"></colgroup>
										<tbody>
											<tr><th scope="row"><div class="tb-left">판매가격</div></th><td class="price"><div class="tb-left">58,000원</div></td></tr>
											<tr><td colspan="2">
												<div class="opt-wrap" style="margin-top: 0">
													<dl>
														<dt>color</dt>
														<dd><select name="optionlist[]" onchange="change_option(this,'basic');" label="color" opt_type="SELECT" opt_id="3" opt_mix="Y" require="Y" opt_mandatory="Y" class="basic_option">
																<option value>옵션 선택</option>
																<option matrix="1" sto_id="3" price="58000" title="블랙" value="0">블랙</option>
																<option matrix="3" sto_id="5" price="58000" title="그린(유광)" value="0">그린(유광)</option>
																<option matrix="4" sto_id="14" price="558000" title="그레이" value="0">그레이</option>
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
											<tr><td colspan="2"><div class="tb-left"></div></td></tr>
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
							<p style="margin: 0px; text-align: left;">&nbsp;</p>
							<p style="margin: 0px; text-align: center;"><strong><font color="#676767"><font size="3"></font></font></strong>&nbsp;</p><font color="#676767"><font size="3">
							<!-- size 소개 -->
							<p style="margin: 0px; text-align: center; line-height: 2;">
								<strong>
									<font color="#676767">
										<font size="3"><span style="color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">◎</span></font>
										<font size="5">
											<font size="4"><span style="color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">size</span></font>
											<span style="color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">&nbsp;&nbsp;</span>
										</font>
										<font size="4"><span style="color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">&nbsp;</span></font>
									</font>
									<font color="#626262" size="4"><span style="color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">中</span></font>
									<font color="#676767">
										<font size="5"><span style="color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">&nbsp;</span></font>
									</font>
									<font size="5">
										<font style="background-color: rgb(255, 255, 255);">
											<font color="rgb(0,0,0)">
												<span style="color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">&nbsp; 10</span>
												<font style="font-size: 11pt;">
													<span style="color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">cm(d)&nbsp;× &nbsp;</span>
													<font size="5"><span style="color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">4</span></font>
												</font>
												<font style="font-size: 11pt;"><span style="color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">cm(h)</span></font>
											</font>
										</font>
									</font>
								</strong>
							</p>
							<font color="rgb(0,0,0)" style="background-color: rgb(255, 255, 255);"><span style="color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);"></span></font>
							<font color="rgb(0,0,0)" style="background-color: rgb(255, 255, 255);"></font>
							<p style="margin: 0px; text-align: center;"><strong><font size="3"></font></strong><font color="rgb(0,0,0)" style="background-color: rgb(255, 255, 255);">&nbsp;</font></p>
							<font color="rgb(0,0,0)" style="background-color: rgb(255, 255, 255);"></font>
							<p style="margin: 0px; text-align: center;"><font color="rgb(0,0,0)" style="background-color: rgb(255, 255, 255);">&nbsp;</font></p>
							<font color="#676767"><font size="3"><font color="rgb(0,0,0)" style="background-color: rgb(255, 255, 255);"></font></font>
							<blockquote style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px;" dir="ltr">
							<p style="margin: 0px; text-align: left;">&nbsp;</p>
							<p style="margin: 0px; text-align: left;"><font size="2"><font color="#1b1b1b">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></font><font size="2"><font color="#1b1b1b"></font></font></p>
							<p style="margin: 0px; text-align: left;"><font size="2"><font color="#1b1b1b"></font></font>&nbsp;</p>
							<p style="margin: 0px; text-align: left;"><font size="2"><font color="#1b1b1b">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-family: Gungsuh,궁서;">&nbsp;º </span></font><span style="font-family: Gungsuh,궁서;">본 제품은 일일이 손으로 빚어 가마에서 구워나오는 수제의 특성상 약간의 사이즈 차이가 있을 수 있습니다.</span></font></p>
							<span style="font-family: Gungsuh,궁서;"></span><p style="margin: 0px; text-align: left; line-height: 2;"><font size="2"><font color="#1b1b1b"><span style="font-family: Gungsuh,궁서;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;º </span></font><span style="font-family: Gungsuh,궁서;">기물에 보이는 유약의 흐름이나 검정색으로 보이는 작은 철분점은 교환,반품의 사유가 되지 않습니다.</span></font></p>
							<span style="font-family: Gungsuh,궁서;"></span><p style="margin: 0px; text-align: left; line-height: 2;"><font size="2"><font color="#1b1b1b"><span style="font-family: Gungsuh,궁서;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;º </span></font><span style="font-family: Gungsuh,궁서;">제품 상세 사진은 화면의 해상도에 따라 색이 약간 다를 수 있습니다.</span></font></p></blockquote></font></font>
							<p style="margin: 0px; text-align: center;"><strong><font color="#676767"><font size="3"></font></font></strong>&nbsp;</p>
							<p style="margin: 0px; text-align: center;"><img src="" alt="상세이미지1"/></p>
							<p style="margin: 0px;"><img src="" alt="상세이미지2"/></p>
							<p style="margin: 0px;"><font color="#7f7f7f" face="Gungsuh,궁서" size="3"><strong><img src="" alt="상세이미지3"/></strong></font></p>
							<p style="margin: 0px;"><img src="" alt="상세이미지4"/></p><p></p>
							<p style="margin: 0px; text-align: center;"><font color="#7f7f7f" face="Gungsuh,궁서" size="3"><strong><img src="" alt="상세이미지5"/></strong></font></p>
							<p style="margin: 0px; text-align: center;"><font color="#7f7f7f" face="Gungsuh,궁서" size="3"><strong><img src="" alt="상세이미지6"/></strong></font></p>
							<p style="margin: 0px; text-align: center;"><font color="#7f7f7f" face="Gungsuh,궁서" size="3"><strong><img src="" alt="상세이미지7"/></strong></font></p>
							<p style="margin: 0px;"><img src="" alt="상세이미지8"/></p>
							<!-- s: 상품 일반정보(상품정보제공 고시) -->
							<!-- e: 상품 일반정보(상품정보제공 고시) -->
							<!-- 쿠폰 관련 부분 -->
							<!-- 쿠폰관련 부분 끝 -->
							<!-- 몰티비 플레이어 노출 위치 -->
							<div id="malltb_video_player" style="margin-top: 10px; margin-bottom: 10px; text-align: center; display: none;"></div>
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
                                		<td colspan="6" style="text-align:center;">
                                			<ol class="paging">
                                				<li class="now"><a href="">1</a></li>
                                			</ol>
                                        </td>
                                    </tr>
                                 </tbody>
                        </table>
                   </div>
				</div>
			</div>
			<!-- #productDetail -->
		</div>
	</div>
</div>



<jsp:include page="../../common/footer.jsp"/>
</body>
</html>


























