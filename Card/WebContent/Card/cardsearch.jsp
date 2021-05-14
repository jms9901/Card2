<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="../Main_css/cardsearch.css">

</head>
<body>
<%@include file="../Main_jsp/header.jsp" %>

<div id="div1">

	<div id="div2">
		<p>카드검색</p>
	</div>
	
</div>

<div id="div3">
		<div id="sp1">1</div>
		
		<div id="sp2">성별과 연령대를 알려주세요. (필수)</div>
		
		<ul id="ul1">
			<li>
				<input type="button" value="남자">
			</li>
			
			<li>
				<input type="button" value="여자">
			</li>
		</ul>
		
		<ul id="ul2">
			<li>
				<input type="button" value="20대">
				<input type="button" value="30대">
				<input type="button" value="40대이상">
			</li>
		</ul>
</div>

<%@include file="../Main_jsp/footer.jsp" %>
</body>
</html>