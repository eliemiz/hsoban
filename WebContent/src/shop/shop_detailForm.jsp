<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*"
    import = "hsoban.vo.*"
    import = "hsoban.dao.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<%
String product_id = request.getParameter("product_id");
if(product_id==null||product_id.equals("")) product_id="0";
Dao_Product dao = new Dao_Product();
Product prod = dao.getProduct(new Integer(product_id));
%>
<meta charset="UTF-8">
<title>[<%=prod.getName()%>]</title>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<div id="contentWrapper">
	<div id="contentWrap">
		<div id="content">
			<div id="productDetail">
				<div class="page-body">
					<div class="thumb-info">
						<div class="thumb-wrap">
							<div class="thumb detail_image">
								<img src="../../<%=prod.getThumbnail()%>" alt="대표이미지" width="100%"/>
							</div>
						</div>
						<form name="form1" method="post" id="form1" action="/hsoban/cart/cart.jsp">	
							<div class="info">
								<h3 class="tit-prd"><%=prod.getName() %></h3>
								<div class="table-opt">
									<table summary="판매가격, 적립금, 주문수량, 옵션, 사이즈, 상품조르기, sns">
										<!-- <caption>상품 옵션</caption> -->
										<colgroup><col width="90"><col width="*"></colgroup>
										<tbody>
											<tr><th scope="row"><div class="tb-left">판매가격</div></th><td class="price"><div class="tb-left"><%=prod.getPrice()%>원</div></td></tr>
											<tr><td colspan="2">
												<div class="opt-wrap" style="margin-top: 0">										
													<dl>
														<dt>color</dt>
														<dd><select name="optionlist[]" onchange="change_option(this,'basic');" label="color" opt_type="SELECT" opt_id="3" opt_mix="Y" require="Y" opt_mandatory="Y" class="basic_option">
																<option value>옵션 선택</option>
																<option matrix="1" sto_id="3" price="78000" title="블랙" value="0">블랙</option>
																<option matrix="2" sto_id="4" price="78000" title="베이지" value="0">베이지</option>
																<option matrix="3" sto_id="5" price="78000" title="그린(유광)" value="0">그린(유광)-일시품절</option>
																<option matrix="4" sto_id="14" price="78000" title="와인" value="0">와인</option>
																<option matrix="4" sto_id="14" price="78000" title="그레이" value="0">그레이</option>
																<option matrix="5" sto_id="11" price="78000" title="진그레이" value="0">진그레이</option>
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
                                    <a href="../../cart/order.jsp" class="btn_red"><img src="/hsoban/src/shop/img/btn_order.png" alt="바로구매" title="바로구매"></a>
                                    <a href="../../cart/cart.jsp"><img src="/hsoban/src/shop/img/btn_cart.png" alt="장바구니 담기" title="장바구니 담기"></a>
                                    <a href="../../mypage/mypage_myWish.jsp"><img src="/hsoban/src/shop/img/btn_wish.png" alt="관심상품" title="관심상품"></a>
                                </div>
							</div>
						</form>
					</div>
					<img src="/hsoban/src/shop/img/detail_top.jpg" alt="그릇 소개"/>
					<div class="prd-detail">						
							<jsp:include page="shop_description.jsp"/>						
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="center" style="margin: 0px; text-align: center;"><img src="/hsoban/img/shop/Bowl2_02.jpg"></p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>					
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>					
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>					
							<p align="center" style="margin: 0px; text-align: center;"><img src="/hsoban/img/shop/Bowl2_03.jpg"></p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="center" style="margin: 0px; text-align: center;"><img src="/hsoban/img/shop/Bowl2_04.jpg"></p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="center" style="margin: 0px; text-align: center;"><img src="/hsoban/img/shop/Bowl2_05.jpg"></p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="center" style="margin: 0px; text-align: center;"><img src="/hsoban/img/shop/Bowl2_06.jpg"></p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="justify" style="margin: 0px; text-align: justify;"><font color="#828282" style="background-color: rgb(255, 255, 255);"></font>&nbsp;</p>
							<p align="center" style="margin: 0px; text-align: center;"><img src="/hsoban/img/shop/Bowl2_07.jpg"></p>
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
							<a class="list" href="../board/inquiry_board.jsp">전체보기</a>
							<a class="answer" href="../board/inquiry_write.jsp">상품문의</a>
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

<jsp:include page="../common/side.jsp"/>	
<jsp:include page="../common/footer.jsp"/>
</body>
</html>