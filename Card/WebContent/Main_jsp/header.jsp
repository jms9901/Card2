<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content ="width=device-width initial-scale = 1 "> <%// 반응형 웹 만들기 %>

<link rel="stylesheet" type="text/css" href="../Main_css/header.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 페이드인 아웃 스크립트 주소 -->

</head>
<body>
<% 
	
	String user = (String)session.getAttribute("user");  %>
	
	<div id="nav">
		<div id="nav_logo">
			<a href="/Card/Main_jsp/section.jsp"><img alt="" src="/Card/images/card.png" width="65px" style="vertical-align:middle; margin-right:50px;"></a>
		</div>
	
		<div class="dropdown1">
			<button id="dropbtn1">신용카드▽</button>
				<div class="dropdown-content">
					<a href="#">할인</a>
					<a href="#">포인트</a>
					<a href="#">마일리지</a>
				</div>
		</div>
		
		
		<div id="nav_item1">
			<a href="/Card/Card/cardcompany.jsp" id="nav_item1_a">카드사</a>
		</div>
		
		<div id="nav_item2">
			<a href="#" id="nav_item2_a">문의사항</a>
		</div>
		
		<div id="nav_item3">
			<a href="#" id="nav_item3_a">고객센터</a>
		</div>
		
		<div id="login" style="margin-left: 68px;">
		
		<%if (user == null) { %>
					<a href="/Card/Member/login.jsp">로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="/Card/Member/signup.jsp">회원가입</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<%} else { %>
						<li style="padding-top: 10px;"> <%= user %>님 </li>
						<a href="/Card/Member/logout.jsp"> 로그아웃 </a>
						<a href="/Card/Member/info.jsp">회원정보</a> 
						<%}%>

		</div>
</div>

<script type="text/javascript">

window.onscroll = function() {scrollFunction()};

function scrollFunction() {
	if (document.body.scrollTop > 60 || document.documentElement.scrollTop > 60) {
	    //document.getElementById("nav").style.padding = "10px 5px 15px 5px";
	    document.getElementById("dropbtn1").style.fontSize = "12px";
	    document.getElementById("nav_item1_a").style.fontSize = "12px";
	    document.getElementById("nav_item2_a").style.fontSize = "12px";
	    document.getElementById("nav_item3_a").style.fontSize = "12px";
	  } else {
	    document.getElementById("nav").style.padding = "10px 5px 20px 5px";
	    document.getElementById("dropbtn1").style.fontSize = "15px";
	    document.getElementById("nav_item1_a").style.fontSize = "15px";
	    document.getElementById("nav_item2_a").style.fontSize = "15px";
	    document.getElementById("nav_item3_a").style.fontSize = "15px";
	  }
}

</script>

</body>
</html>