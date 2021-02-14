<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 상세 내역</title>
</head>
<link rel="stylesheet" href="/hsoban/css/allCommon.css">
<link rel="stylesheet" href="/hsoban/css/common.css">
<link rel="stylesheet" href="/hsoban/css/mypage.css">
<style>
body, h1, h2, h3, h4, h5, h6, table, input, select, textarea, a {
    font-size: 12px;
    line-height: 1.25;
    color: #777;
    font-family: "NanumGothic", AppleGothic, Helvetica, sans-serif;
}
#orderInfo .table-w {
    margin-top: 10px;
}
div {
    display: block;
}
#orderInfo h2 {
    margin-top: 20px;
    font-size: 12px;
    font-weight: bold;
    color: #3D77BD;
    letter-spacing: -1px;
}
</style>
<body>
<jsp:include page="../common/header.jsp"/>
<jsp:include page="../common/side.jsp"/>

<div class="content_wrap">
<div id="orderSt">
    <h1 class="tit-pop"></h1>
    <div id="orderInfo">
    <div class="bbs-tit">주문 상세 </div>
        <h2><b>주문자정보</b></h2>
        <div class="table-w table-orderinfo">
            <table summary="">
                <caption>주문자정보</caption>
                <colgroup>
                    <col width="120">
                    <col width="*">
                    <col width="120">
                    <col width="*">
                </colgroup>
                <tbody>
                    <tr>
                        <th scope="row"><div class="tb-center">주문번호</div></th>
                        <td><div class="tb-center">20210201225913-16894579728</div></td>
                        <th scope="row"><div class="tb-center">주문일자</div></th>
                        <td><div class="tb-center">2021.02.01</div></td>
                    </tr>
                    <tr>
                        <th scope="row"><div class="tb-center">주문자</div></th>
                        <td><div class="tb-center">이채영</div></td>
                        <th scope="row"><div class="tb-center">주문서 입금현황 </div></th>
                        <td><div class="tb-center">미입금</div></td>
                    </tr>
                    <tr>
                        <th scope="row"><div class="tb-center">주문 메모</div></th>
                        <td colspan="3"><div class="tb-left">
입금자 : 이채영
</div></td>
                    </tr>
                                    </tbody>
            </table>
        </div>
                <h2><b>배송지정보</b></h2>
        <div class="table-w table-region">
            <table summary="">
                <caption>배송지정보</caption>
                <colgroup>
                    <col width="120">
                    <col width="*">
                    <col width="120">
                    <col width="*">
                </colgroup>
                <tbody>
                    <tr>
                        <th scope="row"><div class="tb-center">수취인</div></th>
                        <td><div class="tb-center">이채영</div></td>
                        <th scope="row"><div class="tb-center">연락처</div></th>
                        <td><div class="tb-center">-</div></td>
                    </tr>
                    <tr>
                        <th scope="row"><div class="tb-center">주소</div></th>
                        <td colspan="3"><div class="tb-left">-</div></td>
                    </tr>
                    <tr>
                        <th scope="row"><div class="tb-center">배송메세지</div></th>
                        <td colspan="3"><div class="tb-left"></div></td>
                    </tr>
                                </tbody>
            </table>
        </div>
                <h2><b>주문상품정보</b></h2>
        <div class="table-w table-prdinfo">
            <table summary="">
                <caption>주문상품정보</caption>
                <colgroup>
                    <col width="60">
                    <col width="*">
                    <col width="110">
                    <col width="55">
                    <col width="80">
                    <col width="80">
                    <col width="80">
                </colgroup>
                <thead>
                    <tr><th scope="row" colspan="2"><div class="tb-center" style="font-size:12px">주문상품정보</div></th>
                    <th scope="row"><div class="tb-center" style="font-size:12px">상품별주문번호</div></th>
                    <th scope="row"><div class="tb-center" style="font-size:12px">수량</div></th>
                    <th scope="row"><div class="tb-center" style="font-size:12px">가격</div></th>
                    <th scope="row"><div class="tb-center" style="font-size:12px">처리상태</div></th>
                    <th scope="row"><div class="tb-center" style="font-size:12px">배송번호</div></th>
                </tr></thead>
                <tfoot>
                    <tr><td colspan="7">
                        <div class="tb-right">
                            (상품구매금액) (할인/추가금액)  = 0원
                        </div>
                    </td>
                </tr></tfoot>
                <tbody>
                <tr>
                        <td>
                            <div class="tb-center">
                              <img src="/hsoban/img/mypage/0010000000263.jpg" style="width: 58px; height: 58px">
                            </div>
                        </td>
                        <td>
                            <div class="tb-left">
                                <a href="javascript:go_brand('001000000026');" style="text-decoration: none; color: #777;">두부볼中,小<br></a>
                                <span class="quantity order_table_Td style4"> size : 小, color : 그린</span>
                            </div>
                        </td>
                        <td><div class="tb-center">20210201225913-16894579728_[1]</div></td>
                        <td><div class="tb-center">1</div></td>
                        <td><div class="tb-center tb-price"><strong><font color="#FF5D00">18,000</font></strong>원</div></td>
                        <td><div class="tb-center">입금전취소-구매자</div></td>
                        <td><div class="tb-center">S-21020122-683630465-00</div></td>
                 </tr>
                 </tbody>
           </table>
        </div>
        <h2><b>결제정보</b></h2>
        <div class="table-w table-payinfo">
            <table summary="">
                <caption>결제정보</caption>
                <colgroup>
                    <col width="180">
                    <col width="250">
                    <col width="*">
                </colgroup>
                <thead>
                    <tr><th scope="row"><div class="tb-center" style="font-size:12px">결제방법</div></th>
                    <th scope="row"><div class="tb-center" style="font-size:12px">결제금액</div></th>
                    <th scope="row"><div class="tb-center" style="font-size:12px">세부내역</div></th>
                </tr></thead>
                <tfoot>
                    <tr>
                        <td><div class="tb-center">무통장</div></td>
                        <td><div class="tb-center">0원 (미입금)</div></td>
                        <td><div class="tb-center">우리은행 1002-895-790115 (예금주:문선화) <span id="bankname_banker">이채영</span> 
                                                                        </div></td>
                    </tr>
                </tfoot>
            </table>
        </div>
                                <div id="pop_order_btn_group">
                                      <a href="../mypage/mypage_myOrder.jsp">
                                          <input type="button" value="닫기" class="btn btn_black"/> 
                                      </a>
    <!--<a href="javascript:window.close();"><input type="button" value="닫기" class="btn btn_black"/> </a>-->
        </div>
    </div><!-- #orderInfo-->
</div>
</div>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>