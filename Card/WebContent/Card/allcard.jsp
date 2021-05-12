<%@page import="DTO.CardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.CardDao"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="../Main_css/allcard.css">

</head>
<body>
<%@include file="../Main_jsp/header.jsp" %>

<%@include file="admin.jsp" %>

<% DecimalFormat df = new DecimalFormat("###,### 원"); // 천단위 쉼표 만들기 = 형식 클래스 [ DecimalFormat ] %>

<%

	CardDao dao = CardDao.getinstance();

	ArrayList<CardDto> list = new ArrayList<>();
	
	list = dao.cardlist();

%>

<div id="a_div1">

	<h3><span>Peanuts</span> 카드목록</h3>
	
	<table id="a_t1">
		
		<tr>
			<th>이미지</th>
			<th>카드명</th>
			<th>카드사</th>
			<th>연회비</th>
			<th>링크</th>
			<th>카테고리</th>
			<th>타입</th>
			<th>비고</th>
		</tr>
		
		<%
		
			for(int i = 0; i < list.size(); i++) {
				
				CardDto dto = list.get(i);
				
		%>
		
		<tr>
			<td>
				<img alt="" src="/Card/card_upload/<%=dto.getImages() %>" width="120px;">
			</td>
			<td><%=dto.getCard_name() %></td>
			<td><%=dto.getCard_company() %></td>
			<td><%=df.format(dto.getMembership_fee()) %></td>
			<td>
				<a href="<%=dto.getBank_link() %>">발급링크</a>
			</td>
			<td><%=dto.getCard_category() %></td>
			<td><%=dto.getCard_benefit() %></td>
			<td>
				<a href="modifycard.jsp?card_name=<%=dto.getCard_name() %>">수정</a> / 
				<a href="#">삭제</a>
			</td>
		</tr>
		
		<%
		}
		%>
	</table>

</div>

<%@include file="../Main_jsp/footer.jsp" %>
</body>
</html>