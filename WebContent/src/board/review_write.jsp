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
<link rel="stylesheet" href="<%=path%>/css/boardwrite.css">
<style>
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<jsp:include page="../common/side.jsp"/>
	<div style="text-align:center;">
	<br><br><br><br>
	<p class="title">REVIEW</p><br>
	</div>
	<br><br><br>
      <div class="content_wrap">
       <form>
       <tr>
       <td height=20 align= center bgcolor=#ccc><font color=white> 글쓰기</font></td>
       </tr>
       <tr>
       <td bgcolor=white>
           <table summary>
               <colgroup>
                   <col width="95">
                   <col width="190">
                   <col width="90">
               </colgroup>
               <tbody>
                   <tr>
                       <th>
                       	 <div>NAME</div>
                       </th>
                       <td>
                         <div class="td_left">
                         	<input id="bw_input_writer" type="text" name="hname" class="MS_input_txt input_style" readonly="readonly" value="홍길동">
                         </div>
                       </td>
                       <th>
                       	 <div>PASSWORD</div>
                       </th>
                       <td>
                       	 <div class="td_left">
                       	 	<input id="bw_input_passwd" type="password" name="passwd" class="MS_input_txt input_style"></div>
                       </td>
                   </tr>
                   <tr>
                       <th>
                       	 <div>TITLE</div>
                       </th>
                       <td colspan="3">
                           <div class="td_left">
                           	<input id="bw_input_subject" class="MS_input_txt input_style2" type="text" name="subject" value="">
                           <input type="checkbox" name="tag" value="ok"> HTML태그 허용<br></div>
                       </td>
                   </tr>
                   <tr>
                       <th><div>CONTENT</div></th>
                       <td colspan="3"><div class="td_left"><textarea id="MS_text_content" name="content" style="font-family: 굴림체; width: 100%; height: 380px;"  placeholder="안내글 예제> 신규 게시글을 작성시에는, 반드시 회원ID를 적어 주세요!"></textarea>
                       <input type="hidden" name="mobile_content_type" value=""></div>
                       </td>
                   </tr>
                   <tr>
                       <th><div>FILE</div></th>
                       <td colspan="3">
                           <div class="td_left"><input type="file" id="avatar" name="avatar" accept="image/png, image/jpeg"></div>
                          
                       </td>
                   </tr>
              </tbody>
           </table>
        <br>
      	<div style="text-align:right;">
		<input type="button" value="완료" class="btn btn_thatch" onclick="location.href='review_board.jsp'" >
		<input type="button" value="목록" class="btn btn_normal" onclick="location.href='review_board.jsp'" >
		</div>
 </form>
 </div>
 <jsp:include page="../common/footer.jsp"/>
</body>
</html>
