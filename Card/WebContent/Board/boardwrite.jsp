<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


		<meta http-equiv="content-Type" content="text/html; charset = UTF-8">	<%// html 페이지 속성  %>
		<meta name="viewport" content ="width=device-width  initial-scale = 1 "> <%// 반응형 웹 만들기 %>
		<link rel="stylesheet" href="/Card/css/bootstrap.css">	<%// 링크 스타일 %>
<title>Insert title here</title>
<style>
.container { margin-top: 70px;
				padding : 30px;
				text-align: center;
				}
table { text-align: center;}
</style>
</head>
<body>
<%@include file="../Main_jsp/header.jsp" %>

<%
	if( user == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert(' 로그인후 이용해주세요.');");
		script.println("location.href ='/Card/Member/login.jsp'");
		script.println("</script>");
		
		
	}

%>

<div class="container">
<div>
	<form action="boardwritecontroller.jsp"  method="post" enctype="multipart/form-data">
		
		<table class="table table-striped" style="text-align: center; border: 1px">
		
		<thead>
			<tr>
				<th style="background-color: #eeeeee; text-align: center;"> 게시물 작성 </th>
			</tr>
		</thead>
		
		<tbody>
		
						<tr>
							<td> <input type="text" name="board_title" placeholder="글 제목" class="form-control" maxlength="40" > </td>
						</tr>
						
						
						
							
						<tr>
							<td> <textarea name="board_contents" placeholder="글 내용" class="form-control" maxlength="3000" 
									style="height: 400px; "> </textarea> </td>
						</tr>
						
					</tbody>
					
				</table>
					<input type="file" name="board_file">
					<input type="submit" value="글 등록" class="btn btn-primary pull-right">
			
	</form>
</div>
</div>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
		<script src="/Card/js/bootstrap.js"></script>
</body>
</html>