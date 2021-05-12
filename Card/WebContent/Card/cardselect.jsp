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

<div class="hr-sect">
	<p>CARD LIST</p>
</div>

<div id="div2">


	<%
		for(int i = 0; i < list.size(); i++) {
			
			CardDto dto = list.get(i);
			
	%>
	
	<div id="div3">
	
		<div id="div4">
			<img alt="" src="/Card/card_upload/<%=dto.getImages() %>" width="140px">
		</div>
		
		<div id="div5">
			<p><%=dto.getCard_name() %></p>
		</div>
		
		<div id="div6">
			<p><%=dto.getCard_company() %></p>
		</div>
		
		<div id="div7">
			<p>연회비 : <%=dto.getMembership_fee() %></p>
		</div>
		
		<div id="div8">
			<p>주 카테고리 : <%=dto.getCard_category() %></p>
		</div>
		
		<div id="div9">
			<p>카드혜택 : <%=dto.getCard_benefit() %></p>
		</div>
		
		<div id="div10">
			<a href="<%=dto.getBank_link() %>">카드사 이동</a>
		</div>
		
	</div>
	<%		
	}
	%>

</div>

<%@include file="/Main_jsp/footer.jsp" %>
</body>
</html>