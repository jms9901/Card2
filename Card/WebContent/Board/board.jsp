
<%@page import="DTO.BoardDto"%>
<%@page import="DAO.BoardDao"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

		<meta http-equiv="content-Type" content="text/html; charset = UTF-8">	<%// html 페이지 속성  %>
		<meta name="viewport" content ="width=device-width  initial-scale = 1 "> <%// 반응형 웹 만들기 %>
		<link rel="stylesheet" href="/Card/css/bootstrap.css">	<%// 링크 스타일 %>

<meta charset="UTF-8">
<title>게시판</title>
<style >
.container { margin-top: 90px;
				padding : 30px;
				text-align: center;
				}
form { margin-top : 50px;}
</style>
</head>
<body>
<%@include file="../Main_jsp/header.jsp" %>

<%	// 게시물 갯수에 따른 페이지 나누기 
		int pagenumber =1;
	
	if (request.getParameter("pagenumber") !=null ){
		pagenumber = Integer.parseInt(request.getParameter("pagenumber"));
	}
%>
	<!-- 부트스트랩 테이블  -->
	<div class="container">
		<div>
			<table class="table table-striped" style="text-align: center; ">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;"> 번호 </th>
						<th style="background-color: #eeeeee; text-align: center;"> 제목 </th>
						<th style="background-color: #eeeeee; text-align: center;"> 작성자 </th>
						<th style="background-color: #eeeeee; text-align: center;"> 작성일 </th>
					</tr>	
				</thead>
				
				<tbody> 
							<% request.setCharacterEncoding("UTF-8");
				String key=request.getParameter("key");
				String keyword = request.getParameter("keyword");
				
				BoardDao dao= BoardDao.getinstance();
				
				ArrayList<BoardDto> list= new ArrayList<>();
				
				if(key == null || keyword == null) { 
				list = dao.getboardlist(pagenumber); }
				else {
				list=dao.getboardsearch(key, keyword) ; }
				
				for (int i=0; i<list.size(); i++){
				BoardDto dto = list.get(i);
				
				%>
					<tr onclick="location.href='boarddetail.jsp?id='+<%=dto.getBoard_id()%> ">
					<td> <%=dto.getBoard_id() %> </td>
					<td> <%=dto.getBoard_title() %> </td>
					<td> <%=dto.getBoard_userid() %> </td>
					<td> <%=dto.getBoard_date() %> </td> </tr>
				<% } %>
				
				
	</tbody>
				
			</table>
	
	<%if(pagenumber != 1) { 
	%> 
	<a href="board.jsp?pagenumber=<%=pagenumber - 1 %>" class="btn btn-success btn-arrow-left">이전</a>
	<%}  if(dao.nextpage(pagenumber+1)){%> <a href="board.jsp?pagenumber=<%=pagenumber + 1 %>" class="btn btn-success btn-arrow-rigth"> 다음</a>
	<%} %>
				
					
				
			<form action="board.jsp" method="post" >
				<table style="margin: 0 auto;">
					<tr>
						<td> 
							<select name="key" class="form-control">
							<option value="title"> 제목 </option>
							<option value="contents"> 내용 </option>
							<option value="author"> 작성자 </option>
			
							</select>
							</td>
							
							<td>
								<input type="text" name="keyword" value="" size="20" class="form-control">
							</td>
							
							<td>
								<input type="submit" value="검색" class="btn btn-default">
							</td>
							
							</tr>
							</table>
							</form>
							
				<a href="boardwrite.jsp" class="btn btn-primary pull-right"> 글작성</a>	
						
							
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
		<script src="/Card/js/bootstrap.js"></script>
</body>
</html>