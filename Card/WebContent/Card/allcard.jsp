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
		
		<tr>
			<td>
				<img alt="" src="/Card/images/현대로고.jpg" width="150px;">
			</td>
			<td>2</td>
			<td>3</td>
			<td>4</td> <%// 반복문 %>
			<td>
				<a href="#">발급링크</a>
			</td>
			<td>6</td>
			<td>7</td>
			<td>
				<a href="#">수정</a> / 
				<a href="#">삭제</a>
			</td>
		</tr>
		
	</table>

</div>

<%@include file="../Main_jsp/footer.jsp" %>
</body>
</html>