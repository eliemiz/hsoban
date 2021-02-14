<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" %>
<% 
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<!-- <script type="text/javascript" src="js/swiper.js"></script> -->

<link rel="stylesheet" href="/hsoban/css/allCommon.css">
<link rel="stylesheet" href="/hsoban/css/common.css">

<meta charset="UTF-8">
<title>화소반 그릇 공식 쇼핑몰</title>
<style>
#prdBrand .cate-wrap .bcate { text-align: center; font-size: 16px; font-weight: normal; margin: 80px auto 45px; font-size:30px; }
#prdBrand .cate-wrap .mcate { zoom: 1; overflow: hidden; margin: 20px 0; padding: 10px 0 10px 20px; border-top: 1px solid #ccc; border-bottom: 1px solid #ccc; }
#prdBrand .cate-wrap .mcate li { float: left; }
#prdBrand .cate-wrap .mcate li a:hover { text-decoration: underline; }
#prdBrand .item-wrap .bcate{text-align: center; font-size: 15px; font-weight: bold; margin: 40px 0 20px;}
#prdBrand .cate-wrap .hd-search { width:100%; text-align:right; margin-bottom:15px; }
#prdBrand .cate-wrap .hd-search input { width:150px; line-height:30px; font-size:12px; padding: 0 10px; border:#e7e7e7 1px solid; }
#prdBrand .cate-wrap .hd-search a { border:#e7e7e7 1px solid; background:#464646; width: 30px; height: 30px; float: right; margin-left:3px; }
#prdBrand .item-wrap .item-cont .item-list .prd-name,
#prdBrand .item-wrap .item-cont .item-list .prd-price { font-family: NanumGothic,'NanumGothic'; font-size: 13px; margin-top:15px; color:#4c4a4b; font-weight:normal; box-sizing:border-box; }
#prdBrand .item-wrap .item-cont .item-list .prd-name { width:60%; float:left; text-align:left; padding-left:15px; }
#prdBrand .item-wrap .item-cont .item-list .prd-price { width:40%; float:right; text-align:right; padding-right:15px; }
#prdBrand .item-wrap .item-cont .item-list dt.thumb { max-height:187px; overflow:hidden; }
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<div id="contentWrapper">
 <div id="contentWrap">
  <div class="main_slider_wrap">                    
  	<div id="f2s-rolling-container1" class="f2s-swiper">
      <div class="swiper-container">
        <div class="swiper-wrapper">                                
          <div class="swiper-slide"><img src="<%=path%>/img/common/mainroll1.jpg" alt="" /></div>                                
          <%--  <div class="swiper-slide"><img src="<%=path%>/img/common/mainroll2.jpg" alt="" /></div>    --%>                        
            </div>
           <div class="swiper-pagination"></div>
           <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
      </div>
     </div>
  </div>
<div id="contentWrapper">
<div id="contentWrap">
<div id="content">
<div id="prdBrand">
<div class="cate-wrap">
	 <div class="bcate">Bowl</div>
	 <p><a href="../shop/shop1_Bowl/Bowl_main.jsp" alt="">전체보기</a></p>
	   <div class="item-wrap">
		<div class="item-cont">
			<dl class="item-list">
                <dt class="thumb"><a href="../shop/shop1_Bowl/Bowl1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Bowl1_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                   <dd>
                     <ul>
                      <li class="prd-name"><span class="MK-product-icons"></span> 국그릇 </li>
                      <li class="prd-price">34,000원</li>
                     </ul>
                    </dd>
                      </dl>
            <dl class="item-list">
                <dt class="thumb"><a href="../shop/shop1_Bowl/Bowl2.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Bowl2_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                    <dd>
                     <ul>
                       <li class="prd-name"><span class="MK-product-icons"></span> 틴샐러드볼大 </li>
                       <li class="prd-price">78,000원</li>
                      </ul>
                    </dd>
                      </dl>
             <dl class="item-list">
                <dt class="thumb"><a href="../shop/shop1_Bowl/Bowl3.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Bowl3_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                    <dd>
                     <ul>
                       <li class="prd-name"><span class="MK-product-icons"></span> 스프볼 </li>
                       <li class="prd-price">42,000원</li>
                      </ul>
                    </dd>
                      </dl>
              <dl class="item-list">
                <dt class="thumb"><a href="../shop/shop1_Bowl/Bowl4.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Bowl4_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                    <dd>
                     <ul>
                       <li class="prd-name"><span class="MK-product-icons"></span> 밥그릇 </li>
                       <li class="prd-price">32,000원</li>
                      </ul>
                    </dd>
                      </dl>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>  
<div id="contentWrapper">
<div id="contentWrap">
<div id="content">
<div id="prdBrand">
<div class="cate-wrap">
	<div class="bcate">Plate.dish</div>
	<a href="../shop/shop2_PlateDish/PlateDish_main.jsp" alt="">전체보기</a>
					</div>
					<div class="item-wrap">
						<div class="item-cont">
							<dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop2_PlateDish/PlateDish1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/PlateDish1_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>피크닉볼大</li>
                                        <li class="prd-price">108,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop2_PlateDish/PlateDish2.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/PlateDish2_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>딥타원접시 특대</li>
                                        <li class="prd-price">160,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop2_PlateDish/PlateDish3.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/PlateDish3_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>딥사각접시</li>
                                        <li class="prd-price">68,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop2_PlateDish/PlateDish4.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/PlateDish4_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>대접시</li>
                                        <li class="prd-price">160,000원</li>
                                    </ul>
                                </dd>
                            </dl>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>  
<div id="contentWrapper">
<div id="contentWrap">
<div id="content">
<div id="prdBrand">
<div class="cate-wrap">
	<div class="bcate">Noodle Bowl</div>
	<a href="../shop/shop3_NoodleBowl/NoodleBowl_main.jsp" alt="">전체보기</a>
					</div>
					<div class="item-wrap">
						<div class="item-cont">
							<dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop3_NoodleBowl/NoodleBowl1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/NoodleBowl1_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>일자면기</li>
                                        <li class="prd-price">68,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop3_NoodleBowl/NoodleBowl2.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/NoodleBowl2_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>윤볼</li>
                                        <li class="prd-price">68,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop3_NoodleBowl/NoodleBowl3.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/NoodleBowl3_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>햇볼 大</li>
                                        <li class="prd-price">68,000원</li>
                                    </ul>
                                </dd>
                            </dl>  
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>      
<div id="contentWrapper">
<div id="contentWrap">
<div id="content">
<div id="prdBrand">
<div class="cate-wrap">
	<div class="bcate">Side Bowl</div>
	<a href="../shop/shop4_SideBowl/SideBowl_main.jsp" alt="">전체보기</a>
					</div>
					<div class="item-wrap">
						<div class="item-cont">
							<dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop4_SideBowl/SideBowl1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/SideBowl1_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>사각멀티볼</li>
                                        <li class="prd-price">58,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop4_SideBowl/SideBowl2.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/SideBowl2_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>나즌볼</li>
                                        <li class="prd-price">48,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop4_SideBowl/SideBowl3.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/SideBowl3_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>피클볼</li>
                                        <li class="prd-price">36,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop4_SideBowl/SideBowl4.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/SideBowl4_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>콩접시</li>
                                        <li class="prd-price">26,000원</li>
                                    </ul>
                                </dd>
                            </dl>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>  
<div id="contentWrapper">
<div id="contentWrap">
<div id="content">
<div id="prdBrand">
<div class="cate-wrap">
	<div class="bcate">Cup</div>
	<a href="../shop/shop5_Cup/Cup_mian.jsp" alt="">전체보기</a>
					</div>
					<div class="item-wrap">
						<div class="item-cont">
							<dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop5_Cup/Cup1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Cup1_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>머그</li>
                                        <li class="prd-price">38,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop5_Cup/Cup2.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Cup2_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>티잔</li>
                                        <li class="prd-price">32,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop5_Cup/Cup3.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Cup3_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>저그</li>
                                        <li class="prd-price">68,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop5_Cup/Cup4.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Cup4_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>아이스통머그</li>
                                        <li class="prd-price">78,000원</li>
                                    </ul>
                                </dd>
                            </dl>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>  
<div id="contentWrapper">
<div id="contentWrap">
<div id="content">
<div id="prdBrand">
<div class="cate-wrap">
	<div class="bcate">Others</div>
	<a href="../shop/shop6_Others/Others_main.jsp" alt="">전체보기</a>
					</div>
					<div class="item-wrap">
						<div class="item-cont">
							<dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop6_Others/Others1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Others1_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>수저받침대</li>
                                        <li class="prd-price">14,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop6_Others/Others2.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Others2_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>소스팟</li>
                                        <li class="prd-price">22,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop6_Others/Others3.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Others3_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>술병</li>
                                        <li class="prd-price">68,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop6_Others/Others4.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Others4_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>드리퍼</li>
                                        <li class="prd-price">120,000원</li>
                                    </ul>
                                </dd>
                            </dl>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<div id="contentWrapper">
<div id="contentWrap">
<div id="content">
<div id="prdBrand">
<div class="cate-wrap">
	<div class="bcate">Set</div>
	<a href="../shop/shop7_Set/Set1_main.jsp" alt="">전체보기</a>
					</div>
					<div class="item-wrap">
						<div class="item-cont">
							<dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop7_Set/Set1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Set1_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>2인세트</li>
                                        <li class="prd-price">606,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop7_Set/Set1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Set2_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>4인세트</li>
                                        <li class="prd-price">1,157,000원</li>
                                    </ul>
                                </dd>
                            </dl>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
<jsp:include page="../common/side.jsp"/>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>