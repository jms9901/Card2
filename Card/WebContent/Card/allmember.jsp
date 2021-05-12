<%@page import="DTO.MemberDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="../Main_css/allmember.css">

</head>
<body>
<%@include file="../Main_jsp/header.jsp" %>

<%@include file="admin.jsp" %>

<%

	MemberDao dao = MemberDao.getinstance();

	ArrayList<MemberDto> list = new ArrayList<>();
	
	list = dao.memberlist();

%>

<div id="m_div1">

	<h3><span>Peanuts</span> 회원목록</h3>

	<table id="m_t1">
	
			<tr>
				<th>아이디</th>
				<th>성함</th>
				<th>성별</th>
				<th>핸드폰</th>
				<th>주 거래 카드</th>
				<th>혜택</th>
				<th>타입</th>
			</tr>
			
			<%
			
				for(int i = 0; i < list.size(); i++) {
					
					MemberDto dto = list.get(i);
					
			%>
			
			<tr>
				<td><%=dto.getMember_id() %></td>
				<td><%=dto.getMember_name() %></td>
				<td><%=dto.getMember_sex() %></td>
				<td><%=dto.getMember_phone() %></td>
				<td><%=dto.getMember_cardcompany() %></td>
				<td>
					<%=dto.getMember_cardbenefit() %>
				</td>
				<td>
					<%=dto.getMember_cardtype() %>
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