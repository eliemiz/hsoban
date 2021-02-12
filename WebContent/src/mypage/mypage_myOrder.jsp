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
<jsp:include page="../common/header.jsp"/>
<jsp:include page="../common/side.jsp"/>

<div class="content_wrap">
<div id="contentWrapper">
        <div id="contentWrap">
<hr>            <div id="content">
                <div id="myOrder">
                    <div class="bbs-tit">마이페이지</div>
                    <ul class="mypage_tab">
                        <a class="on" href="../mypage/mypage_myOrder.jsp" style="text-decoration:none"><li>주문내역</li></a>
                        <a href="../mypage/mypage_myWish.jsp" style="text-decoration:none"><li>관심상품</li></a>
                        <a href="../mypage/mypage_main.jsp" style="text-decoration:none"><li>마이페이지</li></a>
                    </ul>
                    <div class="page-body">
                        <p class="mypage_s_tit">주문제품정보</p>
                        <div class="table-d2-list">
                            <table summary="번호, 주문일자, 상품명, 결제금액, 주문상세, 배송현황">
                                <caption>주문내역</caption>
                                <colgroup>
                                    <col width="70">
                                    <col width="95">
                                    <col width="*">
                                    <col width="100">
                                    <col width="75">
                                    <col width="75">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="row"><div class="tb-center" style="font-size:12px">번호</div></th>
                                        <th scope="row"><div class="tb-center" style="font-size:12px">주문일자</div></th>
                                        <th scope="row"><div class="tb-center" style="font-size:12px">상품명</div></th>
                                        <th scope="row"><div class="tb-center" style="font-size:12px">결제금액</div></th>
                                        <th scope="row"><div class="tb-center" style="font-size:12px">주문상세</div></th>
                                        <th scope="row"><div class="tb-center" style="font-size:12px">배송현황</div></th>
                                    </tr>
                                </thead>
                                <tbody>
                                        <tr>
                                        <td><div class="tb-center">1</div></td>
                                        <td><div class="tb-center">2021.02.01</div></td>
                                        <td><div class="tb-left"><a href="../mypage/mypage_myOrder_info.jsp" style="text-decoration: none; color: #777;">두부볼中,小</a></div></td>
                                        <td><div class="tb-center tb-bold">0원</div></td>
                                        <td><div class="tb-center"><a href="../mypage/mypage_myOrder_info.jsp" style="text-decoration:none; color: #777;">주문상세</a></div></td>
                                        <td><div class="tb-center"><a>미배송</a>
                                            </div></td>
                                    </tr>
                                    </tbody>
                            </table>
                        </div>
                        <ol class="paging">
                                        <li><strong>1</strong></li>
                                    </ol>
                        <ul class="foot-dsc">
                            <li>상품명 또는 주문상세의 조회 버튼을 클릭하시면, 주문상세 내역을 확인하실 수 있습니다.</li>
                            
                        </ul>
                    </div><!-- .page-body -->
                </div><!-- #myOrder -->
            </div><!-- #content -->
        </div><!-- #contentWrap -->
    </div>
    </div>
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>