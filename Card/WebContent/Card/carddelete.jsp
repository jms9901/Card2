<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="../Main_css/carddelete.css">

<script type="text/javascript">

function check() {
	
	if(!form.card_company.value) {
		alert("카드사를 선택해주세요.");
		document.form.card_company.focus();
		return false;
	}

	if(!form.card_name.value) {
		alert("카드 이름을 입력해주세요.");
		document.form.card_name.focus();
		return false;
	} else {
		if(confirm('정말 삭제하시겠습니까?')) {
			return true;
		}
		return false;
	}
	
}

</script>

</head>
<body>
<%@include file="../Main_jsp/header.jsp" %>

<%@include file="admin.jsp" %>

<div id="table">
	
	<h3>카드 삭제</h3>
	
	<form name="form" method="post" action="deletecontroller.jsp">
	
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
					<input type="text" name="card_name" size=30 placeholder="정확하게 입력해주세요.">
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