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
	String user = (String)session.getAttribute("user");  
%>
	
	<div id="nav">
		<div id="nav_logo">
			<a href="/Card/Main_jsp/section.jsp"><img alt="" src="/Card/images/card.png" width="65px" style="vertical-align:middle; margin-right:50px;"></a>
		</div>
	
		<div id="nav_item1">
			<a href="/Card/Card/cardranking.jsp" id="nav_item1_a">카드순위</a>
		</div>
		
		<div id="nav_item2">
			<a href="/Card/Card/cardsearch.jsp" id="nav_item2_a">카드비교/검색</a>
		</div>
		
		
		<div id="nav_item3">
			<a href="/Card/Card/cardcompany.jsp" id="nav_item3_a">카드사</a>
		</div>
		
		<div id="nav_item4">
			<a href="#" id="nav_item4_a">고객센터</a>
		</div>
		
		<div id="login">
		
		<%if (user == null) { %>
					<a href="/Card/Member/login.jsp" id="login2">로그인</a>
					<a href="/Card/Member/signup.jsp" id="signup">회원가입</a>
					<%} else {
						
							if( user.equals("admin") ){
								
								%>
							<div class="log_item">
								<p id="log_item_p1">관리자 님</p>
								<a href="/Card/Member/logout.jsp" class="log_item_a1"> 로그아웃 </a>
								<a href="/Card/Card/cardadd.jsp" class="log_item_a1">관리자</a>
							</div>
							<%
								
							} else {
								%>
							<div class="log_item">
								<p id="log_item_p1"><%= user %> 님</p>
								<a href="/Card/Member/logout.jsp" class="log_item_a1"> 로그아웃 </a>
								<a href="/Card/Member/info.jsp" class="log_item_a1">회원정보</a> 
							</div>
							<%
							}
						
						%>
						
	
						<%}%>

		</div>
</div>

<script type="text/javascript">

window.onscroll = function() {scrollFunction()};

function scrollFunction() {
	if (document.body.scrollTop > 60 || document.documentElement.scrollTop > 60) {
	    //document.getElementById("nav").style.padding = "10px 5px 15px 5px";
	    document.getElementById("nav_item1_a").style.fontSize = "12px";
	    document.getElementById("nav_item2_a").style.fontSize = "12px";
	    document.getElementById("nav_item3_a").style.fontSize = "12px";
	    document.getElementById("nav_item4_a").style.fontSize = "12px";
	  } else {
	    document.getElementById("nav").style.padding = "10px 5px 20px 5px";
	    document.getElementById("nav_item1_a").style.fontSize = "15px";
	    document.getElementById("nav_item2_a").style.fontSize = "15px";
	    document.getElementById("nav_item3_a").style.fontSize = "15px";
	    document.getElementById("nav_item4_a").style.fontSize = "15px";
	  }
}

</script>

</body>
</html>