<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.error-box{ margin-top: 50px;
				padding : 30px;
				text-align: center;
				box-shadow: 0 3px 6px balck;}
				
	.error-key{ height:100px;
				font-size: 80px;
				line-height: 100px;}
				
	.error-title{ margin-top:15px;
				text-align:center;
				font-size:20px;
				letter-spacing: 2px;
				font-weight:bold;
				color:white;
				text-shadow: 1px 1px 1px pink;
				}
				
	.error-form { margin-top:25px; 
				text-align: center;}
				
div {text-align: center;}

img{ border-bottom: solid 5px #51b873;}	

h3{ color : #477af0;
	margin-bottom: solid 1px black;
    }


</style>
</head>
<body>
<%@include file="../Main_jsp/header.jsp" %>
<% request.setCharacterEncoding("UTF-8");%>
		<div class="container">
		
			<div class="row">
				<div class= "col-lg-3 col-md-2"> </div> <!-- 공백 -->
					<div class = "col-lg-6 col-md-8 error-box">
						<div class="col-lg-12 error-key">
						<i class="fa fa-key" aria-hidden="true"></i>
					</div>
		<div class="col-lg-12 error">
		<img alt="" src="/Card/images/500.png" width="400px" >

		<h3> 죄송합니다. 페이지를 표시할 수 없습니다.</h3><br>
		
		<p> 연결 하려는 페이지에 문제가 생겼습니다.</p>
		<p> 궁금한 점이 있으시면 언제든 고객센터를 통해 문의해 주시기 바랍니다. </p><br><br>
		<p> 감사합니다 </p> <br>
		
		
		<div class="col-lg-6 update-btm update-botton" >
	 		<a href="/Card/Main_jsp/section.jsp"> *메인으로* </a>
			</div>

		</div>
	</div>
	</div>
	</div>
</body>
</html>