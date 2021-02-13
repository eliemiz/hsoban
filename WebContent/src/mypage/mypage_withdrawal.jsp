<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
</head>
<link rel="stylesheet" href="/hsoban/css/allCommon.css">
<link rel="stylesheet" href="/hsoban/css/common.css">
<link rel="stylesheet" href="/hsoban/css/mypage.css">
<body>
<jsp:include page="../common/header.jsp"/>
<jsp:include page="../common/side.jsp"/>

<div class="content_wrap">
<div class="page-body">
                        <div class="dbox-wrap">
                        <div class="scede-frm">
                        <div class="bbs-tit">회원탈퇴</div>
                            <fieldset>
                                <legend >탈퇴 사유 작성 폼</legend>
                                <div class="table-d2-view">
                                    <table summary="사유">
                                        <caption>탈퇴 사유</caption>
                                        <colgroup>
                                            <col width="90">
                                            <col width="*">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row" style=" height:500px;"><div class="tb-center">사유</div></th>
                                                <td style=" height:500px; "><div class="tb-center"><textarea style=" height:500px;" id="reason" class="MS_input_textarea txt-area1" name="reason" rows="10" cols="70"></textarea></div></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="btn-foot">
                                     <span align="center"><input type="button" class="btn btn_black" value="회원탈퇴" style="height:22px; width:110px;" onclick="go()"></span>
                                     <span><input type="button" class="btn btn_black" value="탈퇴취소" style="height:22px; width:110px;" onclick="location.href='../mypage/mypage_main.jsp'";></span>
                                </div>
                            </fieldset>
                        </div><!-- .scede-frm -->
                    </div>
                    </div>
                    </div>
        <jsp:include page="../common/footer.jsp"/>            
</body>
<script type="text/javascript">

function withdrawal_fin(){
	var result = confirm('탈퇴할 경우 회원관련 데이터가 복구되지 않습니다. 정말로 탈퇴를 하시겠습니까?');
	if(result==true){
		alert('해당 ID를 탈퇴처리해 드렸습니다.');
		location.href="../mypage/mypage_main.jsp";
	}else{
		location.href="../mypage/mypage_main.jsp";
	}
		
	
}

function go(){

	   if(reason.value.length<1) {
		   alert('탈퇴 사유를 입력해주세요.');
	   }

	   else { 
		   withdrawal_fin()
	   }
	}

</script>
</html>