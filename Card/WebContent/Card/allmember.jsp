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
			
			<tr>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td> <%// 반복문 %>
				<td>5</td>
				<td>6</td>
				<td>7</td>
			</tr>
		
	</table>

</div>

<%@include file="../Main_jsp/footer.jsp" %>
</body>
</html>