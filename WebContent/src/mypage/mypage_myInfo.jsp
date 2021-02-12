<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" import="java.net.*" import="selection.*"
    %>
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
<jsp:include page="../common/header.jsp"/>
<jsp:include page="../common/side.jsp"/>

<div class="content_wrap">
<div id="content">
                <div id="join">
                    <div class="bbs-tit">회원정보</div>
                    <!--  
                    <form name="iddupop" method="post" action="/shop/iddup.html">
    <input name="id" type="hidden" value="">
    <input name="mode" type="hidden" value="">
</form><form name="ipinInForm" method="post">
    <input type="hidden" name="IDPCODE" value="">
    <input type="hidden" name="IDPURL" value="">
    <input type="hidden" name="CPCODE" value="">    
    <input type="hidden" name="CPREQUESTNUM" value="">
    <input type="hidden" name="RETURNURL" value="">
    <input type="hidden" name="WEBPUBKEY" value="">
    <input type="hidden" name="WEBSIGNATURE" value="">
    <input type="hidden" name="FILLER01" value="">
    <input type="hidden" name="FILLER02" value="JOIN">
</form>
<form name="ipinOutForm" method="post" action="/ssllogin/idinfo.html">
    <input type="hidden" name="popup" value="">
    <input type="hidden" name="cur_page" value="">
    <input type="hidden" name="type" value="ok">
    <input type="hidden" name="ipintype" value="">
    <input type="hidden" name="brandcode" value="">
    <input type="hidden" name="first" value="">
    <input type="hidden" name="data_third_party_agree" value="">
    <input type="hidden" name="data_trust_agree" value="">
    <input type="hidden" name="data_privacy_agree" value="">
    <input type="hidden" name="realname">
    <input type="hidden" name="encdata">
    <input type="hidden" name="member_type" value="PERSON">
</form>
-->
<form name="form1" method="post" id="join_form" action="/shop/idinfo.html" enctype="multipart/form-data" autocomplete="off">
<!--  
<input type="hidden" name="resno" value="9706302000000">
<input type="hidden" name="cur_page" value="">
<input type="hidden" name="brandcode" value="">
<input type="hidden" name="sslid" value="hsoban">
<input type="hidden" name="sslip" value="www.hsobanmall.com">
<input type="hidden" name="haddress" id="haddress" value="">
<input type="hidden" name="msecure_key" value="">
<input type="hidden" name="loginkeyid" value="725795197f4f47f5fc5f03a3dd5a9583">
<input type="hidden" name="idcheck" value="">
<input type="hidden" name="emailcheck">
<input type="hidden" name="junk_member_ok" value="">
<input type="hidden" name="hiddenres" value="2670b14728ad9902aecba32e22fa4f6bd">
<input type="hidden" name="mem_type" value="PERSON">
<input type="hidden" name="member_join_type" value="NEW">
<input type="hidden" name="member_join_minor" value="N">
<input type="hidden" name="use_company_num" value="Y">
<input type="hidden" name="company_num_modify" value="N">
<input type="hidden" name="admin_type" value="N">
<input type="hidden" name="old_company_num1" value="">
<input type="hidden" name="old_company_num2" value="">
<input type="hidden" name="old_company_num3" value="">
<input type="hidden" name="old_email" id="old_email" value="www2555@hanmail.net">
<input type="hidden" name="etc_phone" id="etc_phone" value="010-7406-2555">
<input type="hidden" name="simple_login" value="">
<input type="hidden" name="app_os" value="">
<input type="hidden" name="return_url" value="">
<input type="hidden" name="type" value="upd">
<input type="hidden" name="reurl" value="">  
-->                  
                    <!-- 일반회원 기본 노출 -->
                    <div id="personInfo">
                        <table class="person-tb">
                            <colgroup>
                                <col width="135"><col width="*">
                            </colgroup>
                                                        <tbody><tr>
                                <th>
                                    <div class="tb-l pl-30"><span class="red"></span>■ 이름</div>
                                </th>
                                <td>
                                    <div class="tb-l pl-6">
                                        <input type="text" name="hname" id="hname" value="이채영" class="MS_input_txt w137" size="15" maxlength="30">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tb-l pl-30"><span class="red"></span>■ 아이디</div>
                                </th>
                                <td>
                                    <div class="tb-l pl-6">
										<input type="hidden" name="id" id="id" value="www970630">                                                                           
									 </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tb-l pl-30"><span class="red"></span>■ 비밀번호</div>
                                </th>
                                <td>
                                    <div class="tb-l pl-6">
                                         <input type="password" name="password1" id="password1" class="MS_input_txt w137" value="" size="15" maxlength="20" onkeyup="check_pwd_length(this, 'password');">                                       
                                          <span class="idpw-info">
                                           * 영문 대소문자/숫자/특수문자를 혼용하여 2종류 10~16자 또는 3종류 8~16자
                                          </span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tb-l pl-30"><span class="red"></span>■ 비밀번호 확인</div>
                                </th>
                                <td>
                                    <div class="tb-l pl-6">
                                        <input type="password" name="password2" id="password2" class="MS_input_txt w137" value="" size="15" maxlength="20" onkeyup="check_pwd_length(this, 'repassword');">                                    </div>
                                </td>
                            </tr>
                                                        <tr>
                                <th>
                                    <div class="tb-l pl-30"><span class="red"></span>■ 생일/성별</div>
                                </th>
                                <td>
                                    <div class="tb-l pl-6 birth">
                                         <select name="birthyear" disabled="" class="MS_select MS_birthday">
<option value="">선택</option><option value="1920">1920</option><option value="1921">1921</option><option value="1922">1922</option><option value="1923">1923</option><option value="1924">1924</option><option value="1925">1925</option><option value="1926">1926</option><option value="1927">1927</option><option value="1928">1928</option><option value="1929">1929</option><option value="1930">1930</option><option value="1931">1931</option><option value="1932">1932</option><option value="1933">1933</option><option value="1934">1934</option><option value="1935">1935</option><option value="1936">1936</option><option value="1937">1937</option><option value="1938">1938</option><option value="1939">1939</option><option value="1940">1940</option><option value="1941">1941</option><option value="1942">1942</option><option value="1943">1943</option><option value="1944">1944</option><option value="1945">1945</option><option value="1946">1946</option><option value="1947">1947</option><option value="1948">1948</option><option value="1949">1949</option><option value="1950">1950</option><option value="1951">1951</option><option value="1952">1952</option><option value="1953">1953</option><option value="1954">1954</option><option value="1955">1955</option><option value="1956">1956</option><option value="1957">1957</option><option value="1958">1958</option><option value="1959">1959</option><option value="1960">1960</option><option value="1961">1961</option><option value="1962">1962</option><option value="1963">1963</option><option value="1964">1964</option><option value="1965">1965</option><option value="1966">1966</option><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997" selected="">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option><option value="2009">2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option><option value="2021">2021</option></select>년<select name="birthmonth" class="MS_select MS_birthday" disabled="">
<option value="">선택</option><option value="01">1</option><option value="02">2</option><option value="03">3</option><option value="04">4</option><option value="05">5</option><option value="06" selected="selected">6</option><option value="07">7</option><option value="08">8</option><option value="09">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select>월<select name="birthdate" class="MS_select MS_birthday" disabled="">
<option value="">선택</option><option value="01">1</option><option value="02">2</option><option value="03">3</option><option value="04">4</option><option value="05">5</option><option value="06">6</option><option value="07">7</option><option value="08">8</option><option value="09">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30" selected="selected">30</option><option value="31">31</option></select>일&nbsp;&nbsp;<input type="radio" name="sex" value="1" disabled="" class="MS_radio">남 <input type="radio" name="sex" value="2" class="MS_radio" checked="">여                                    </div>
                                </td>
                            </tr>
                                                        
                            <tr>
                                <th>
                                    <div class="tb-l pl-30"><span class="red"> </span>■ 우편번호</div>
                                </th>
                                <td>
                                    <div class="tb-l pl-6">
                                         <input type="text" name="hpost1" form="join_form" id="hpost1" class="MS_input_txt" value="" size="6" maxlength="6" >
                                    <span>
                                    	<input type="button" class="btn btn_black" onClick="goPopup();" value="주소검색" style="height:22px; width:110px;">
                                    </span>
                                    </div>
                               </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tb-l pl-30"><span class="red"></span>■ 집주소</div>
                                </th>
                                <td>
                                    <div class="tb-l pl-6">
                                        <input type="text" name="haddress1" form="join_form" id="haddress1" class="MS_input_txt w415" value="" size="40" maxlength="100" readonly="readonly">                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tb-l pl-30"><span class="red"></span>■ 상세주소</div>
                                </th>
                                <td>
                                    <div class="tb-l pl-6">
                                        <input type="text" name="haddress2" form="join_form" id="haddress2" class="MS_input_txt w415" value="" size="40" maxlength="100">                                    </div>
                                </td>
                            </tr>
                                                       <tr>
                                <th>
                                    <div class="tb-l pl-30"><span class="red"></span>■ 이메일</div>
                                </th>
                                <td>
                                    <div class="tb-l pl-6">
                                            <input type="hidden" name="oldemail" id="oldemail" value="www2555@hanmail.net">
    <input type="hidden" name="email" id="email" value="www2555@hanmail.net">
    <input type="text" name="email1" id="email1" onchange="this.form.emailcheck.value=''" class="MS_input_txt" size="10" maxlength="20" value="">
    <span>@</span> 
    <span id="direct_email" style="margin-top:3px;display:inline-block">
        <input type="text" name="email3" id="email3" class="MS_input_txt" value="" disabled="" size="15" maxlength="25" onchange="this.form.emailcheck.value=''">
    </span>
    <select name="email2" id="email2" class="MS_select MS_email" style="margin-right:5px;" onchange="viewdirect()">
    <option value="direct">직접입력</option><option value="naver.com">naver.com</option><option value="hotmail.com">hotmail.com</option><option value="hanmail.net" selected="selected">hanmail.net</option><option value="yahoo.com">yahoo.com</option><option value="nate.com">nate.com</option><option value="korea.com">korea.com</option><option value="chol.com">chol.com</option><option value="gmail.com">gmail.com</option><option value="netian.com">netian.com</option>
    </select>
      <span><input type="button" class="btn btn_black" value="중복확인" style="height:22px; width:110px;"></span>                                                                             
                                                                            </div>
                                </td>
                            </tr>
			                                <tr>
                                <th>
                                    <div class="tb-l pl-30"><span class="red"></span>■ 휴대폰</div>
                                </th>
                                <td>
                                    <div class="tb-l pl-6">
                                        <input type="hidden" name="etcphone" form="join_form" value="010-7406-2555">
<select name="etcphone1" id="etcphone1" form="join_form" class="MS_select MS_tel">
    <option value="">선택</option>            <option value="010">010</option>            <option value="011">011</option>            <option value="016">016</option>            <option value="017">017</option>            <option value="018">018</option>            <option value="019">019</option>
</select>
- 
<input type="text" name="etcphone2" form="join_form" id="etcphone2" class="MS_input_tel" value="" size="4" maxlength="4">
-
<input type="text" name="etcphone3" form="join_form" id="etcphone3" class="MS_input_tel" value="" size="4" maxlength="4" minlength="4">                                    </div>
                                </td>
                            </tr>
                                                                                    <tr>
                                <th>
                                    <div class="tb-l pl-30">&nbsp;&nbsp;연락처</div>
                                </th>
                                <td>
                                    <div class="tb-l pl-6">
                                            <input type="hidden" name="hphone" form="join_form" value="--">
    <select name="hphone1" form="join_form" id="hphone1" class="MS_select MS_tel">
        <option value="">선택</option>            <option value="010">010</option>            <option value="011">011</option>            <option value="016">016</option>            <option value="017">017</option>            <option value="018">018</option>            <option value="019">019</option>            <option value="02">서울 (02)</option>            <option value="031">경기 (031)</option>            <option value="032">인천 (032)</option>            <option value="033">강원 (033)</option>            <option value="041">충남 (041)</option>            <option value="042">대전 (042)</option>            <option value="043">충북 (043)</option>            <option value="044">세종 (044)</option>            <option value="051">부산 (051)</option>            <option value="052">울산 (052)</option>            <option value="053">대구 (053)</option>            <option value="054">경북 (054)</option>            <option value="055">경남 (055)</option>            <option value="061">전남 (061)</option>            <option value="062">광주 (062)</option>            <option value="063">전북 (063)</option>            <option value="064">제주 (064)</option>            <option value="0502">KT (0502)</option>            <option value="0503">온세텔레콤(0503)</option>            <option value="0504">온세텔레콤(0504)</option>            <option value="0505">Dacom (0505)</option>            <option value="0507">온세텔레콤(0507)</option>            <option value="0508">한국케이블텔레콤(0508)</option>            <option value="070">인터넷전화 (070)</option>            <option value="080">착신 과금 서비스 (080)</option>
    </select>
    - 
    <input type="text" name="hphone2" form="join_form" id="hphone2" class="MS_input_tel" value="" size="4" maxlength="4">
    -
    <input type="text" name="hphone3" form="join_form" id="hphone3" class="MS_input_tel" value="" size="4" maxlength="4" minlength="4">                                    </div>
                                </td>
                            </tr>
                                                                                    



                                                                                                                            <tr>
                                        <th>
                                            <div class="tb-l pl-30">&nbsp;&nbsp;뉴스메일</div>
                                        </th>
                                        <td>
                                            <div class="tb-l pl-6">
                                                <label style="margin-right:20px;">        <input type="radio" name="emailreceive" value="Y">
 받습니다.</label>
                                                <label>        <input type="radio" name="emailreceive" value="N" checked=""> 받지 않습니다.</label>
                                            </div>
                                        </td>
                                    </tr>
                                                                        <tr>
                                        <th>
                                            <div class="tb-l pl-30">&nbsp;&nbsp;SMS안내</div>
                                        </th>
                                        <td>
                                            <div class="tb-l pl-6">
                                                <label style="margin-right:20px;">        <input type="radio" name="smsreceive" form="join_form" value="Y"> 받습니다.</label>
                                                <label>        <input type="radio" name="smsreceive" form="join_form" value="N" checked=""> 받지 않습니다.</label>
                                            </div>
                                        </td>
                                    </tr>
                                                                                                                                                            </tbody></table>
                    </div> <!-- #personInfo -->

                     
                                                            <div class="btn-area">
                        <a class="write" href="../mypage/mypage_main.jsp" onclick="modify()" style="text-decoration: none">수정완료</a>
                        
                        <a class="return" href="../mypage/mypage_main.jsp" style="text-decoration: none">취소</a>
                    </div>
                    <!-- use_contract -->
                    </form>                </div><!-- #join -->
            </div>
            </div>
            <jsp:include page="../common/footer.jsp"/>
</body>
<!-- 

<tr>
                                <th>
                                    <div class="tb-l pl-30"><span class="red"> </span>■ 우편번호</div>
                                </th>
                                <td>
                                    <div class="tb-l pl-6">
                                         <input type="text" name="hpost1" form="join_form" id="hpost1" class="MS_input_txt" value="" size="3" maxlength="3" >
 -
 <input type="text" name="hpost2" form="join_form" id="hpost2" class="MS_input_txt" value="" size="3" maxlength="3" >                                       
                                    <span><input type="button" class="btn btn_black" onClick="goPopup();" value="주소검색" style="height:22px; width:110px;"></span>
                                    </div>
                                </td>
                            </tr>
 -->
<script type="text/javascript">
function modify(){
	alert("수정이 완료되었습니다.");
}

function goPopup(){
	var pop = window.open("../common/jusoPopup.jsp", "pop", "width=570,height=420, scrollbars=yes, resizable=yes");
	}

function jusoCallBack(haddress1, haddress2, hpost1){
		document.querySelector("#hpost1").value = hpost1;
		document.querySelector("#haddress1").value = haddress1;
		document.querySelector("#haddress2").value = haddress2;
		/* document.form.zipNo.value = zipNo;
		document.form.roadAddrPart1.value = roadAddrPart1; */
	}
</script>
</html>