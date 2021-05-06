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
	<div id="nav">
		<div id="nav_logo">
			<a href="/Card/Main_jsp/section.jsp"><img alt="" src="/Card/images/card.png" width="65px" style="vertical-align:middle; margin-right:50px;"></a>
		</div>
	
		<div class="dropdown1">
			<button id="dropbtn1">신용카드▽</button>
				<div class="dropdown-content">
					<a href="#">1_테스트1</a>
					<a href="#">1_테스트2</a>
					<a href="#">1_테스트3</a>
					<a href="#">1_테스트4</a>
				</div>
		</div>
		
		
		<div class="dropdown2">
			<button id="dropbtn2">카드사▽</button>
				<div class="dropdown-content">
					<a href="#">국민카드</a>
					<a href="#">롯데카드</a>
					<a href="#">신한카드</a>
					<a href="#">삼성카드</a>
					<a href="#">우리카드</a>
					<a href="#">NH농협카드</a>
					<a href="#">하나카드</a>
					<a href="#">씨티카드</a>
					<a href="#">IBK기업카드</a>
					<a href="#">현대카드</a>
					<a href="#">우체국</a>
				</div>
		</div>
		
		<div id="nav_item1">
			<a href="#" id="nav_item1_a">문의사항</a>
		</div>
		
		<div id="nav_item2">
			<a href="#" id="nav_item2_a">고객센터</a>
		</div>
		
		<div id="login" style="margin-left: 68px;">
			<button><a href="/Card/Member/login.jsp">로그인</a></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button><a href="/Card/Member/signup.jsp">회원가입</a></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button><a href="/Card/Member/info.jsp">회원정보</a></button>
		</div>
</div>

<script type="text/javascript">

window.onscroll = function() {scrollFunction()};

function scrollFunction() {
	if (document.body.scrollTop > 60 || document.documentElement.scrollTop > 60) {
	    //document.getElementById("nav").style.padding = "10px 5px 15px 5px";
	    document.getElementById("dropbtn1").style.fontSize = "12px";
	    document.getElementById("dropbtn2").style.fontSize = "12px";
	    document.getElementById("nav_item1_a").style.fontSize = "12px";
	    document.getElementById("nav_item2_a").style.fontSize = "12px";
	  } else {
	    document.getElementById("nav").style.padding = "10px 5px 20px 5px";
	    document.getElementById("dropbtn1").style.fontSize = "15px";
	    document.getElementById("dropbtn2").style.fontSize = "15px";
	    document.getElementById("nav_item1_a").style.fontSize = "15px";
	    document.getElementById("nav_item2_a").style.fontSize = "15px";
	  }
}

</script>

</body>
</html>