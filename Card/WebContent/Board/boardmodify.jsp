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
<style>
.container { margin-top: 90px;
				padding : 30px;
				text-align: center;
				}
form { margin-top : 50px;}
</style>
</head>
<body>
<%@include file="../Main_jsp/header.jsp" %>

<%
int board_id = Integer.parseInt(request.getParameter("id"));
BoardDao dao = BoardDao.getinstance();
BoardDto dto = dao.getboard(board_id);
%>

<div class="container">
	<div>
		<form action="boardmodifycontroller.jsp?board_id=<%=board_id %>" method="post" enctype="multipart/form-data">
		
		<table class="table table-striped" style="text-align: center; border:1px" >
		<thead>
			<tr>
				<th style= " background-color:#eeeeee; text-align: center;"> 게시물 수정 </th>
				</tr>
				</thead>
			
			<tbody>
				<tr>
					<td> <input type="text" name="board_title" placeholder="글 제목" class="form-control" maxlength="40" value="<%=dto.getBoard_title() %>"></td>
				</tr>
				
				<tr>
					<td> <textarea name="board_contents" placeholder="글 내용" class="form-control" maxlength="3000" style="height:400px"> <%=dto.getBoard_contents() %></textarea>
				</td></tr>
			</tbody>
			
		</table>
		
		<input type="file" name="board_file" >
		<input type="hidden" name="board_file2" value="<%=dto.getBoard_file()%>">
		<input type="submit" value="글 수정" class="btn btn-primary pull-right">
			
		</form>
	
	</div>

</div>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
		<script src="/Card/js/bootstrap.js"></script>
</body>
</html>