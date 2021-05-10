<%@page import="java.text.DecimalFormat"%>
<%@page import="DTO.CardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.CardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="../Main_css/cardselect.css">

</head>
<body>
<%@include file="/Main_jsp/header.jsp" %>

<% DecimalFormat df = new DecimalFormat("###,### 원"); // 천단위 쉼표 만들기 = 형식 클래스 [ DecimalFormat ] %>

<%

	String company = request.getParameter("company");

	CardDao dao = CardDao.getinstance();
	
	ArrayList<CardDto> list = new ArrayList<>();
	
	list = dao.cardcompanylist(company);

%>

<div id = "div1">

	<p><%=company %> 카드 목록</p>

</div>

<div id="div2">

	<%
		for(int i = 0; i < list.size(); i++) {
			
			CardDto dto = list.get(i);
			
	%>
	
		<div id="div3">
		
			<img alt="" src="/Card/card_upload/<%=dto.getImages() %>" width="200px;">
			<p>카드명 : <%=dto.getCard_name() %></p>
			<p>연회비 : <%=df.format(dto.getMembership_fee()) %></p>
			<p><a href="<%=dto.getBank_link() %>">카드사 이동</a></p>
		
		</div>
	
	<%		
	}
	%>

</div>

<%@include file="/Main_jsp/footer.jsp" %>
</body>
</html>