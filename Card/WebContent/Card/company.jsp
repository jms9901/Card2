<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="../Main_css/company.css">

<script type="text/javascript">

function check() {
	
	if(!form.card_company.value) {
		alert("카드사 선택을해주세요.")
		form.card_company.focus();
		return false;
	}
	if(!form.card_name.value) {
		alert("카드명을 입력해주세요.")
		form.card_name.focus();
		return false;
	}
	if(form.card_name.value.length < 2) {
		alert("카드명[최소 2글자] 입니다.");
		document.form.card_name.focus();
		return false;
	}
	if(!form.card_category.value) {
		alert("카테고리 선택을해주세요.")
		form.card_category.focus();
		return false;
	}
	else {
		return true;
	}
	
}

</script>

</head>
<body>
<%@include file="../Main_jsp/header.jsp" %>

<%@include file="admin.jsp" %>

<div id="table">
	
	<h3>카드사 등록</h3>
	
	<form name="form" method="post" action="companycontroller.jsp">
	
		<table id="table_1">
		
			<tr>
				<th>카드사</th>
				<td>
					<select name="card_company" style="width: 150px;">
						<option value="">선택해주세요</option>
						<option value="국민카드">국민카드</option>
						<option value="롯데카드">롯데카드</option>
						<option value="신한카드">신한카드</option>
						<option value="삼성카드">삼성카드</option>
						<option value="우리카드">우리카드</option>
						<option value="NH농협카드">NH농협카드</option>
						<option value="하나카드">하나카드</option>
						<option value="씨티카드">씨티카드</option>
						<option value="IBK기업카드">IBK기업카드</option>
						<option value="현대카드">현대카드</option>
						<option value="우체국">우체국</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<th>카드명</th>
				<td>
					<input type="text" name="card_name" size=30>
				</td>
			</tr>
			
			<tr>
				<th>카테고리</th>
				<td>
					<select name="card_category" style="width: 150px;">
						<option value="">선택해주세요</option>
						<option value=1>할인</option>
						<option value=2>포인트</option>
						<option value=3>마일리지</option>
					</select>
				</td>
			</tr>
		
		</table>
		
		<table id="table_2">
			
			<tr>
				<td>
					<input type="button" value="취소" onclick="history.back()">
					<input type="submit" value="완료" onclick="return check()">
				</td>
			</tr>
			
		</table>
		
	</form>
	
</div>

<%@include file="../Main_jsp/footer.jsp" %>
</body>
</html>