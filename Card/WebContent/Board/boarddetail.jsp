<%@page import="DTO.BoardDto"%>
<%@page import="DAO.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


		<meta http-equiv="content-Type" content="text/html; charset = UTF-8">	<%// html 페이지 속성  %>
		<meta name="viewport" content ="width=device-width  initial-scale = 1 "> <%// 반응형 웹 만들기 %>
		<link rel="stylesheet" href="/Card/css/bootstrap.css">	<%// 링크 스타일 %>
		
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container { margin-top: 90px;
				padding : 30px;
				text-align: center;
				}
form { margin-top : 50px;}

</style>
</head>
<body>

<%@include file="../Main_jsp/header.jsp" %>

<%	// 해당 아이디에 해당하는 dto
				
		int board_id = Integer.parseInt( request.getParameter("id") );
		BoardDao dao = BoardDao.getinstance();
		BoardDto dto = dao.getboard(board_id);
	
	%>

<div class="container">
		<div>
			<table class="table table-striped" style="text-align: center; border: solid gray 1px; ">
			
				<thead>
					<tr>
						<th colspan="3" style="background-color: #eeeeee; text-align:center;"  > 게시물 <br> 조회수 : <%=dto.getBoard_count() %> </th>
					</tr>
				</thead>
				<tbody>
				
						<tr>
						<td style="border-right:  dotted gray 1px; width: 200px;"  > 게시물 이미지 </td>
						<td colspan="2" style="text-align: left;"> <img alt="" src="upload/<%=dto.getBoard_file()%>" width="100%"> </td> 
					</tr>
					
						<tr>
						<td style="border-right:  dotted gray 1px; width: 200px;"  > 게시물 제목 </td>
						<td colspan="2" style="text-align: left;"> <%=dto.getBoard_title() %> </td> 
					</tr>
					
					
					<tr>
						<td style="border-right: dotted gray 1px; "> 게시물 작성자 </td>
						<td colspan="2"  style="text-align: left;"> <%=dto.getBoard_userid() %>  </td> 
					</tr>
					<% if( dto.getBoard_file() == null) {
					%>
					<tr>
						<td style="border-right: dotted gray 1px; "> 게시물 첨부파일 </td>
						<td colspan="2"  style="text-align: left;"> </td></tr>
					
					<%
					}else {	
						%>
					<tr>
						<td style="border-right: dotted gray 1px; "> 게시물 첨부파일 </td>
						<td colspan="2"  style="text-align: left;"> <a href="filecontroller.jsp?file=<%=dto.getBoard_file()%>"><%=dto.getBoard_file()%></a>  </td>
					</tr>
					<%} %>
				
					
					
					<tr>
						<td style="border-right: dotted gray 1px; "> 게시물 내용 </td>
						<td colspan="2" style="height: 300px; text-align: left;">
								 <%=dto.getBoard_contents() %> 
					  </td> 
					</tr>
					
				</tbody>
			</table>
			<a href="boardmodify.jsp?id=<%=dto.getBoard_id() %>" class="btn btn-primary pull-right" style="margin-left: 10px;" >글수정</a>
			<a href="boarddeletecontroller.jsp?id=<%=dto.getBoard_id() %>" class="btn btn-primary pull-right" >글삭제</a>
			<a href="board.jsp" class="btn btn-primary pull-left" >목록보기</a>
		</div>
	</div>
	
	<br>
	<br>
	<br>
	<br>
	<!--  ////////////////////////////////////////댓글 작성 코드 //////////////////////////////////////////////// -->
	
	<div class="container">
		<div>
			<form action="replycontroller.jsp?id <%=board_id%>" method="post" >
			
				<table class="table table-striped" style="text-align: center; border: 1px">
					<thead>
						<tr>
							<th style="background-color: #eeeeee; text-align: center;">댓글</th>
						</tr>	
					</thead>
					
					<tbody> 
					
													
						<tr>
							<td> <textarea name="contents" placeholder="글 내용" class="form-control" maxlength="3000" 
									style="height: 50px;"> </textarea> </td>
						</tr>
						
					</tbody>
					
				</table>
				
					<input type="submit" value="댓글 등록" class="btn btn-primary pull-right">
					
			</form>
		</div>
	</div>
	
	
	
	
	
	
<%-- 	
	<!--  ////////////////////////////////////////댓글 작성 목록 /////////////////////////////////////////////// -->
		<br><br><br>
		
		<%
			ReplyDao replyDao = ReplyDao.getinstance();
		
			ArrayList<ReplyDto> list = replyDao.getreplylist(id);
		
		
		%>
	
		<div class="container">
		<div>
			<table class="table table-striped" style="text-align: center; ">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;" width="100px"> 작성자 </th>
						<th style="background-color: #eeeeee; text-align:center;"> 내용 </th>
						</tr>	
				</thead>
					<%
					for (int i = 0; i<list.size(); i++) {
						
						ReplyDto replyDto = list.get(i);
					
					%>
				<tr>
				<td> <%=replyDto.getReply_userid() %></td>
				<td style="text-align: left;"> <%=replyDto.getReply_contents() %> </td>

				
				</tr>
				<%} %>
				</table>	
		</div> 
	</div>--%>
	
	
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
		<script src="/Card/js/bootstrap.js"></script>

</body>
</html>