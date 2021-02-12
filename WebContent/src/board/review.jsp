<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="java.net.*"
    %>
<% request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=path%>/css/common.css">
<style>
.prd-tinfo {
    zoom: 1;
    overflow: hidden;
    padding: 10px 0 10px 80px;
    border: 3px solid #e0e0e0;
    margin-top: 20px;
}
dl {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
.wrt textarea {
    width: calc(100% - 75px);
    height: 50px;
    margin-right: 5px;
}
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<br><br>
	<div class="content_wrap" style="text-align:center;">	
	<p style= "font-size: 30px;">REVIEW</p><br>
	</div>
	<br><br>
	<dl class="prd-tinfo">
             <dt>
                 <a href="../shop/shop_default.jsp"><img src="../img/review.jpg"></a>
             </dt>
             <dd>
                 <ul>
                     <li class="name"><span class="tit">상 품 명:</span><a href="../shop/shop_default.jsp">두부볼中,小</a></li>
                     <li class="price"><span class="tit">상품가격:</span><strong>18,000원</strong></li>
                 </ul>
             </dd>
         </dl>

       <div class="content_wrap">
       <div>
                            <table summary="게시글 보기">
                                <caption>게시글 보기</caption>
                                <thead>
                                    <tr>
                                        <th><div class="tb-center">만족합니다.</div></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="line">
                                            <div class="cont-sub-des">
                                                <div>
                                                    <span><em>작성자</em>temp123</span>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="line">
                                            <div class="cont-sub-des">
                                                <div>
                                                     <span><em>작성일</em>2021-02-01</span>                                                                                                          <span><em>조회수</em> 44</span>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div>만족합니다. 디자인이 멋있어요.</div><br><br><br><br>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                                <legend>코멘트 쓰기</legend>
                                  <table summary="코멘트 쓰기" class="comment-box">
                                    <caption>코멘트 쓰기</caption>
                                    <colgroup>
                                        <col width="120">
                                        <col>
                                        <col width="150">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <td colspan="3" class="com-wrt-box">
                                                <div>
                                                    <div class="wrt">
                                                        <label>NAME</label><span><input type="text" name="name" value="" onclick="CheckLogin()" onkeypress="CheckLogin()" placeholder="이름"></span>
                                                        <label>PASSWORD</label><span><input type="password" name="pass" onclick="CheckLogin()" onkeypress="CheckLogin()" placeholder="패스워드"> </span>
                                                    </div>     
                                                    <textarea name="comment"onclick="CheckLogin()" placeholder="내용"></textarea>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </fieldset>
							</form>                  
                            <ul>
	                     <li>
		              <span class="arrow prev">이전글 :</span>
                                   										
			       <a href="../shop/shop_default.jsp">[수저받침대]</a>	
                                                                      										
                                       <a href="">수저받침대</a>
                               </li>
                               <li>
                                   <span class="arrow next">다음글 :</span>
                                   										
                                       <a href="">[일자면기]</a>	
                                                                      										
                                       <a href="">이뻐요</a>
                               </li>
                           </ul>
                        </div>
      
      </div>
      <br>
      	<div style="text-align:right;">
		<input type="button" value="완료" class="btn btn_thatch">
		<input type="button" value="목록보기" class="btn btn_normal">
		</div>
 </form>
  <jsp:include page="../common/footer.jsp"/>
</body>
</html>