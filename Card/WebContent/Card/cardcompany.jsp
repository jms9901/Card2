<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="../Main_css/cardcompany.css">

</head>
<body>
<%@include file="/Main_jsp/header.jsp" %>

<div id="div1">

	<p id="p1">세상 모든 카드를 모아봤어요!</p>
	<p id="p2"><b>카드사별</b> <span>카드찾기</span></p>

</div>

<div id="div2">
	<div id="div3">
		<ul>
			<li><a href="cardselect.jsp?id=국민카드"><img alt="" src="/Card/images/국민로고.jpg" width="280px;" height="130px;" style="padding: 20px;">국민카드11</a></li>
			<li><a href="cardselect.jsp?id=롯데카드"><img alt="" src="/Card/images/롯데로고.jpg" width="280px;" height="130px;" style="padding: 20px;">롯데카드</a></li>
			<li><a href="cardselect.jsp?id=신한카드"><img alt="" src="/Card/images/신한로고.png" width="280px;" height="130px;" style="padding: 20px;">신한카드</a></li>
			<li><a href="cardselect.jsp?id=삼성카드"><img alt="" src="/Card/images/삼성로고.png" width="280px;" height="130px;" style="padding: 20px;">삼성카드</a></li>
			<li><a href="cardselect.jsp?id=우리카드"><img alt="" src="/Card/images/우리로고.jpg" width="280px;" height="130px;" style="padding: 20px;">우리카드</a></li>
			<li><a href="cardselect.jsp?id=NH농협카드"><img alt="" src="/Card/images/농협로고.png" width="280px;" height="130px;" style="padding: 20px;">NH농협카드</a></li>
			<li><a href="cardselect.jsp?id=하나카드"><img alt="" src="/Card/images/하나로고.png" width="280px;" height="130px;" style="padding: 20px;">하나카드</a></li>
			<li><a href="cardselect.jsp?id=씨티카드"><img alt="" src="/Card/images/씨티로고.png" width="280px;" height="130px;" style="padding: 20px;">씨티카드</a></li>
			<li><a href="cardselect.jsp?id=IBK기업카드"><img alt="" src="/Card/images/기업로고.jpg" width="280px;" height="130px;" style="padding: 20px;">IBK기업카드</a></li>
			<li><a href="cardselect.jsp?id=현대카드"><img alt="" src="/Card/images/현대로고.jpg" width="280px;" height="130px;" style="padding: 20px;">현대카드</a></li>
			<li><a href="cardselect.jsp?id=우체국"><img alt="" src="/Card/images/우체국로고.png" width="280px;" height="130px;" style="padding: 20px;">우체국</a></li>
		</ul>
	</div>
</div>

<%@include file="/Main_jsp/footer.jsp" %>
</body>
</html>