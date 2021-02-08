<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/hsoban/css/allCommon.css">
<link rel="stylesheet" href="/hsoban/css/common.css">
<link rel="stylesheet" href="/hsoban/css/mypage.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="contentWrapper">
        <div id="contentWrap">
<hr>            <div id="content">
                <div id="myWish">
                    <div class="bbs-tit">마이페이지</div>
                    <ul class="mypage_tab">
                        <a href="../mypage/mypage_myOrder.jsp"><li>주문내역</li></a>
                        <a class="on" href="../mypage/mypage_myWish.jsp"><li>관심상품</li></a>
                        <a href="../mypage/mypage_main.jsp"><li>마이페이지</li></a>
                    </ul>
                    <div class="page-body">
                        <div class="table-d2-list">
                            <table summary="사진,  상품명, 수량, 재고, 적립금, 가격, 장바구니">
                                <caption>예치금 내역</caption>
                                <colgroup>
                                    <col width="100">
                                    <col width="100">
                                    <col width="*">
                                    <col width="120">
                                    <col width="120">
                                    <col width="120">
                                    <col width="150">
                                </colgroup>
        <form name="list_form" method="post"></form>                                <thead>
                                    <tr>
                                        <th scope="row"><div class="tb-center"><!--input type="checkbox" class="chk-rdo" /--><input type="checkbox" name="all_brchk" onclick="all_brand_check();" id="allchk"></div></th>
                                        <th scope="row"><div class="tb-center" style="font-size:12px">사진</div></th>
                                        <th scope="row"><div class="tb-center" style="font-size:12px">상품명</div></th>
                                        <th scope="row"><div class="tb-center" style="font-size:12px">수량</div></th>
                                        <th scope="row"><div class="tb-center" style="font-size:12px">재고</div></th>
                                        <!--<th scope="row"><div class="tb-center">적립금</div></th>-->
                                        <th scope="row"><div class="tb-center" style="font-size:12px">가격</div></th>
                                        <th scope="row"><div class="tb-center" style="font-size:12px">장바구니</div></th>
                                    </tr>
                                </thead>
                                <tbody>
                        <input type="hidden" name="quantity[]" value="1000000000">
            <input type="hidden" name="brandcodes[]" value="001000000002">
            <input type="hidden" name="branduids[]" value="1008823">
            <input type="hidden" id="param_0" spcode="" spcode2="" option_type="" optcode="" optioncode="" opts="" optionvalue="" wish_id="1" brandcode="001000000002" product_type="NORMAL">                                    <tr>
                                        <td><div class="tb-center"><!--input type="checkbox" class="chk-rdo" /--><input type="checkbox" name="brchks[]" value="001000000002" onclick="all_brchk_check(this);"></div></td>
                                        <td>
                                            <div class="tb-center">
                                                <a href=""><img src="" style="width: 84px; height: 84px"></a>
                                            </div>
                                        </td>
                                        <td class="product">
                                            <div class="tb-left">국그릇</div>
                                                                                        <div class="tb-left"><span class="wish-opt">[color : 베이지 1개]</span></div>
                                                                                    </td>
                                        <td><div class="tb-center"><input type="text" name="order_quantity[]" value="1" class="txt-input2">개</div></td>
                                        <td><div class="tb-center">있음</div></td>
                                        <!--<td><div class="tb-right">0원</div></td>-->
                                        <td>
                                            <div class="tb-center">
                                                                                                34,000원
                                            </div>
                                        </td>
                                        <td>
                                            <div class="tb-center tb-btns">
                                                <a class="basket" href="javascript: go_basket(0, 'kor');">장바구니 담기</a>
                                                                                                <a class="delete" href="javascript: del_wishlist('1008823','0');">관심상품 삭제</a>
                                            </div>
                                        </td>
                                    </tr>
                                            </tbody>
                            </table>
                        </div>
                        <div class="btn-foot">
                            <a class="delete" href="javascript: multi_del_wishlist()">선택삭제</a>
                                                    </div>
                        <ol class="paging">
                                        <li><strong>1</strong></li>
                                    </ol>
                    </div><!-- .page-body -->
                </div><!-- #myWish -->
            </div><!-- #content -->
        </div><!-- #contentWrap -->
    </div>
</body>
<script type="text/javascript">
function all_brchk_check(){
	if(document.querySelector("[name=allchk]").checked==true){
		document.querySelector("[name=brchks[]]").checked=true;
	}else{
		document.querySelector("[name=brchks[]]").checked=false;
	}
}
</script>
</html>