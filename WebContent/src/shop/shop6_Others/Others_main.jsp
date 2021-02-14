<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/hsoban/css/common.css">
<link rel="stylesheet" href="/hsoban/css/allCommon.css">
<link rel="stylesheet" href="/hsoban/css/shopdetail.css">
<meta charset="UTF-8">
<title>Others</title>
<style>
/* BASIC css start */
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

/* BASIC css end */


</style>
</head>
<body>
<jsp:include page="../../common/header.jsp"/>
	
	<div id="contentWrapper">
		<div id="contentWrap">
			<div id="content">
				<div id="prdBrand">
					<div class="cate-wrap">
						<div class="bcate">Others</div>
					</div>
					<div class="item-wrap">
						<div class="item-cont">
							<dl class="item-list">
                                <dt class="thumb"><a href="Others1.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Others1_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>수저받침대</li>
                                        <li class="prd-price">14,000원</li>
                                    </ul>
                                </dd>
                            </dl>
							<dl class="item-list">
                                <dt class="thumb"><a href="Others2.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Others2_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>소스팟</li>
                                        <li class="prd-price">22,000원</li>
                                    </ul>
                                </dd>
                            </dl>
							<dl class="item-list">
                                <dt class="thumb"><a href="Others3.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Others3_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
                                <dd>
                                    <ul>
                                        <li class="prd-name"><span class="MK-product-icons"></span>술병</li>
                                        <li class="prd-price">68,000원</li>
                                    </ul>
                                </dd>
                            </dl>
							<dl class="item-list">
                                <dt class="thumb"><a href="Others4.jsp"><img class="MS_prod_img_s" src="/hsoban/img/shop/Others4_00.jpg" alt="상품 썸네일" title="상품 썸네일"></a></dt>
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
<jsp:include page="../../common/side.jsp"/>	
<jsp:include page="../../common/footer.jsp"/>
</body>
</html>