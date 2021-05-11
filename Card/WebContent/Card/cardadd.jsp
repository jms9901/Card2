<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="../Main_css/cardadd.css">

</head>

<script type="text/javascript">

function check() {
	
	if(!form.card_name.value) {
		alert("카드 이름을 입력해주세요.");
		document.form.card_name.focus();
		return false;
	}
	if(form.card_name.value.length < 2) {
		alert("카드이름[최소 2글자] 입니다.");
		document.form.card_name.focus();
		return false;
	}
	if(!form.card_company.value) {
		alert("카드사를 선택해주세요.");
		document.form.card_company.focus();
		return false;
	}
	if(!form.membership_fee.value) {
		alert("연회비를 입력해주세요.");
		document.form.membership_fee.focus();
		return false;
	}
	if(isNaN(form.membership_fee.value)) {
		alert("연회비는 숫자로만 입력해주세요.");
		document.form.membership_fee.value = "";
		document.form.membership_fee.focus();
		return false;
	}
	if(form.membership_fee.value < 0) {
		alert("연회비는 양수로만 입력가능합니다.");
		document.form.membership_fee.value = "";
		document.form.membership_fee.focus();
		return false;
	}
	if(!form.images.value) {
		alert("카드 이미지는 필수입니다.");
		document.form.images.focus();
		return false;
	}
	if(!form.bank_link.value) {
		alert("카드사 링크를 입력해주세요.\n정확하게 입력 바랍니다.");
		document.form.bank_link.focus();
		return false;
	}
	
	var benefit = document.getElementsByName("benefit");
	
	if(form.benefit[0].checked == false &&
		form.benefit[1].checked == false &&
		form.benefit[2].checked == false &&
		form.benefit[3].checked == false &&
		form.benefit[4].checked == false &&
		form.benefit[5].checked == false &&
		form.benefit[6].checked == false &&
		form.benefit[7].checked == false &&
		form.benefit[8].checked == false &&
		form.benefit[9].checked == false) {
		
		alert("카테고리를 하나 이상 선택해주세요.");
		return false;
		
	}
	if(!form.card_category.value) {
		alert("카드 타입을 선택해주세요.");
		document.form.card_category.focus();
		return false;
	}
	else {
		return true;
	}
	
}

</script>

<body>

<%@include file="../Main_jsp/header.jsp" %>

<%@include file="admin.jsp" %>

<div id="table">

	<h3><span>Peanuts</span> 카드등록</h3>
	
	<form name="form" method="post" enctype="multipart/form-data" action="cardaddcontroller.jsp">
	
		<table id="table_1">
			<tr>
				<th>카드이름</th>
				<td>
					<input type="text" name="card_name" size="30">
				</td>
			</tr>
			
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
						<option value="NH농협카드">농협카드</option>
						<option value="하나카드">하나카드</option>
						<option value="씨티카드">씨티카드</option>
						<option value="IBK기업카드">기업카드</option>
						<option value="현대카드">현대카드</option>
						<option value="우체국">우체국</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<th>연회비</th>
				<td>
					<input type="text" name="membership_fee" size="30">
				</td>
			</tr>
			
			<tr>
				<th>이미지</th>
				<td>
					<input type="file" name="images" size="30">
				</td>
			</tr>
			
			<tr>
				<th>발급사링크</th>
				<td>
					<input type="text" name="bank_link">
				</td>
			</tr>
			
			<tr>
				<th>카드 카테고리</th>
				<td>
					<input type="checkbox" name="benefit" value ="쇼핑">쇼핑
					<input type="checkbox" name="benefit" value ="통신요금">통신요금
					<input type="checkbox" name="benefit" value ="교통">교통<br>
					<input type="checkbox" name="benefit" value ="주유">주유
					<input type="checkbox" name="benefit" value ="편의점">편의점
					<input type="checkbox" name="benefit" value ="배달">배달<br>
					<input type="checkbox" name="benefit" value ="구독서비스">구독서비스
					<input type="checkbox" name="benefit" value ="카페">카페
					<input type="checkbox" name="benefit" value ="공과금">공과금<br>
					<input type="checkbox" name="benefit" value ="마일리지">마일리지
				</td>
			</tr>
			
			<tr>
				<th>카드 타입</th>
				<td>
					<select name="card_category" style="width: 150px;">
						<option value="">선택해주세요</option>
						<option value="할인">할인</option>
						<option value="포인트">포인트</option>
						<option value="마일리지">마일리지</option>
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