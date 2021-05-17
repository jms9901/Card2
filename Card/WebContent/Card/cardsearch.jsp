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
	<form name="form">
		<table id="t1">
			
			<tr>
				<th>성별과 연령대를 알려주세요.(필수)</th>
				<td>
					<input type="button" class="btn" value="남자" id="gender1">
					<input type="button" class="btn" value="여자" id="gender2">
				</td>
				<td>
					<input type="button" class="btn" value="20대" id="age1">
					<input type="button" class="btn" value="30대" id="age2">
					<input type="button" class="btn" value="40대 이상" id="age3">
				</td>
			</tr>
			
			<tr>
				<th>어떤 타입의 카드를 찾으시나요?(필수)</th>
				<td colspan="2">
					<input type="button" class="btn" value="전체" id="benefit1">
					<input type="button" class="btn" value="할인" id="benefit2">
					<input type="button" class="btn" value="포인트" id="benefit3">
					<input type="button" class="btn" value="마일리지" id="benefit4">
				</td>
			</tr>
			
			<tr>
				<th>필요한 카드 혜택을 선택해주세요.(중복선택가능)</th>
			</tr>
			
			<tr>
			
				<td colspan="3" style="padding-bottom: 20px; border-top: solid 1px #F6F5F5;">
					<input type="button" class="btn1" value="쇼핑" style="margin-left: 70px;">
					<input type="button" class="btn1" value="통신요금">
					<input type="button" class="btn1" value="교통">
					<input type="button" class="btn1" value="주유">
					<input type="button" class="btn1" value="편의점">
					<input type="button" class="btn1" value="배달"><br>
					<input type="button" class="btn1" value="구독서비스" style="margin-left: 70px;">
					<input type="button" class="btn1" value="카페">
					<input type="button" class="btn1" value="공과금">
					<input type="button" class="btn1" value="마일리지">
				</td>
			
			</tr>
			
		</table>
		
		<table id="t2">
			<tr>
				<td>
					<a href="#">검색</a>
					<a href="#" onclick="history.back()">취소</a>
				</td>
			</tr>
		</table>
		<p style="text-align: center;">
			<input type="text" name="gender">
			<input type="text" name="age">
			<input type="text" name="benefit">
		</p>
	</form>
</div>

<%@include file="../Main_jsp/footer.jsp" %>

<script src="/Card/script/cardsearch.js"></script>

</body>
</html>