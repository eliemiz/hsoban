<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="/hsoban/css/allCommon.css">
<link rel="stylesheet" href="/hsoban/css/common.css">
<link rel="stylesheet" href="/hsoban/css/mypage.css">
<body>
<div class="page-body">
                        <div class="dbox-wrap">
                        <div class="scede-frm">
                            <fieldset >
                                <legend>탈퇴 사유 작성 폼</legend>
                                <div class="table-d2-view">
                                    <table summary="사유">
                                        <caption>탈퇴 사유</caption>
                                        <colgroup>
                                            <col width="90">
                                            <col width="*">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row"><div class="tb-center">사유</div></th>
                                                <td><div class="tb-center"><textarea id="reason" class="MS_input_textarea txt-area1" name="reason" rows="10" cols="70"></textarea></div></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="btn-foot">
                                     <span><input type="button" class="btn btn_black" value="회원탈퇴" style="height:22px; width:110px; align:center;"></span>
                                     <span><input type="button" class="btn btn_black" value="탈퇴취소" style="height:22px; width:110px; align:center;" onclick="location.href='../mypage/mypage_main.jsp'";></span>
                                </div>
                            </fieldset>
                        </div><!-- .scede-frm -->
                    </div>
</body>
</html>