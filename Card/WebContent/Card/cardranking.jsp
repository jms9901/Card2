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

<link rel="stylesheet" type="text/css" href="../Main_css/cardranking.css">

</head>
<body>
<%@include file="/Main_jsp/header.jsp" %>

<% DecimalFormat df = new DecimalFormat("###,### 원"); // 천단위 쉼표 만들기 = 형식 클래스 [ DecimalFormat ] %>

<%

	CardDao dao = CardDao.getinstance();

	ArrayList<CardDto> list = new ArrayList<>();
	
	list = dao.cardranking();
	
	int count = 0;

%>

<div id="div1">

	<div id="div2">
		<p><span>Peanuts</span>추천 랭킹</p>
	</div>
	
	<table id="t1">
		<tr>
			<th>랭킹</th>
			<th>이미지</th>
			<th>카드명</th>
			<th>카드사</th>
			<!-- <th>연회비</th> -->
			<th>링크</th>
			<!-- <th>카테고리</th>
			<th>타입</th> -->
		</tr>
		
		<%
		
			for(int i = 0; i < list.size(); i++) {
				
				CardDto dto = list.get(i);
				
				count++;
				
		%>
		
		<tr>
			<td>
				<%=count %>
			</td>
			<td>
				<img alt="" src="/Card/card_upload/<%=dto.getImages() %>" width="120px;">
			</td>
			<td><%=dto.getCard_name() %></td>
			<td><%=dto.getCard_company() %></td>
			<!-- <td><%=df.format(dto.getMembership_fee()) %></td> -->
			<td>
				<a href="<%=dto.getBank_link() %>">자세히 보기</a>
			</td>
			<!-- <td><%=dto.getCard_category() %></td> -->
			<!-- <td><%=dto.getCard_benefit() %></td> -->
			<td>
			</td>
		</tr>
		
		<%		
		}
		%>
		
	</table>
	
</div>

<%@include file="/Main_jsp/footer.jsp" %>
</body>
</html>