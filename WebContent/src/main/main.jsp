<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" %>
<% 
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="js/swiper.js"></script>
<link rel="stylesheet" href="/hsoban/css/common.css">
<link rel="stylesheet" href="/hsoban/css/allCommon.css">
<link rel="stylesheet" href="/hsoban/css/shopdetail.css">

<meta charset="UTF-8">
<title>Insert title here</title>
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
                <dt class="thumb"><a href="../shop/shop1_Bowl/Bowl1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Bowl1_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                    <dd>
                     <ul>
                       <li class="prd-name"><span class="MK-product-icons"></span> 국그릇 </li>
                       <li class="prd-price">34,000원</li>
                      </ul>
                    </dd>
                      </dl>
             <dl class="item-list">
                <dt class="thumb"><a href="../shop/shop1_Bowl/Bowl1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Bowl1_01.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                    <dd>
                     <ul>
                       <li class="prd-name"><span class="MK-product-icons"></span> 국그릇2 </li>
                       <li class="prd-price">68,000원</li>
                      </ul>
                    </dd>
                      </dl>
              <dl class="item-list">
                <dt class="thumb"><a href="../shop/shop1_Bowl/Bowl1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Bowl1_01.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                    <dd>
                     <ul>
                       <li class="prd-name"><span class="MK-product-icons"></span> 국그릇2 </li>
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
	<div class="bcate">Plate.dish</div>
	<a href="../shop/shop2_PlateDish/PlateDish_main.jsp" alt="">전체보기</a>
					</div>
					<div class="item-wrap">
						<div class="item-cont">
							<dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop2_PlateDish/PlateDish1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/PlateDish1_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>plate dish 1 </li>
                                        <li class="prd-price">1,234원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop2_PlateDish/PlateDish1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/PlateDish1_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>plate dish 1 </li>
                                        <li class="prd-price">1,234원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop2_PlateDish/PlateDish1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/PlateDish1_01.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>plate dish 2 </li>
                                        <li class="prd-price">5,678원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop2_PlateDish/PlateDish1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/PlateDish1_01.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>plate dish 2 </li>
                                        <li class="prd-price">5,678원</li>
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
                                        <li class="prd-name"><span class="MK-product-icons"></span>국수 접시1 </li>
                                        <li class="prd-price">4,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop3_NoodleBowl/NoodleBowl1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/NoodleBowl1_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>국수 접시1 </li>
                                        <li class="prd-price">4,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop3_NoodleBowl/NoodleBowl1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/NoodleBowl1_01.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>국수 접시2 </li>
                                        <li class="prd-price">1,000,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop3_NoodleBowl/NoodleBowl1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/NoodleBowl1_01.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>국수 접시2 </li>
                                        <li class="prd-price">1,000,000원</li>
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
                                        <li class="prd-name"><span class="MK-product-icons"></span>사이드 접시1 </li>
                                        <li class="prd-price">987,034,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop4_SideBowl/SideBowl1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/SideBowl1_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>사이드 접시1 </li>
                                        <li class="prd-price">987,034,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop4_SideBowl/SideBowl1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/SideBowl1_01.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>사이드 접시2 </li>
                                        <li class="prd-price">789,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop4_SideBowl/SideBowl1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/SideBowl1_01.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>사이드 접시2 </li>
                                        <li class="prd-price">789,000원</li>
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
                                        <li class="prd-name"><span class="MK-product-icons"></span> 컵1 </li>
                                        <li class="prd-price">2,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop5_Cup/Cup1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Cup1_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span> 컵1 </li>
                                        <li class="prd-price">2,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop5_Cup/Cup1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Cup1_01.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span> 컵2 </li>
                                        <li class="prd-price">3,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop5_Cup/Cup1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Cup1_01.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span> 컵2 </li>
                                        <li class="prd-price">3,000원</li>
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
                                        <li class="prd-name"><span class="MK-product-icons"></span> 접시1 </li>
                                        <li class="prd-price">10,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop6_Others/Others1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Others1_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span> 접시1 </li>
                                        <li class="prd-price">10,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop6_Others/Others1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Others1_01.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span> 접시2 </li>
                                        <li class="prd-price">11,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop6_Others/Others1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Others1_01.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span> 접시2 </li>
                                        <li class="prd-price">11,000원</li>
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
                                        <li class="prd-name"><span class="MK-product-icons"></span> 접시1 </li>
                                        <li class="prd-price">10,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop7_Set/Set1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Set1_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span> 접시1 </li>
                                        <li class="prd-price">10,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop7_Set/Set1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Set1_01.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span> 접시2 </li>
                                        <li class="prd-price">100,000원</li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl class="item-list">
                                <dt class="thumb"><a href="../shop/shop7_Set/Set1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Set1_01.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span> 접시2 </li>
                                        <li class="prd-price">100,000원</li>
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