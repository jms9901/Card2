<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>


a{
	text-decoration: none;
	color: white;
}
.login-box{ 
			margin-top: 100px;
			
			padding : 30px;
			background-color: #5E5966;
			text-align: center;
			box-shadow: 0 3px 6px balck;}
			
.login-key{ height:100px;
			font-size: 80px;
			line-height: 100px;
			background-image:url("/Card/images/card.png" );
			background-repeat:no-repeat;
			background-position: center;}
			
.login-title{ margin-top:15px;
			text-align:center;
			font-size:30px;
			letter-spacing: 2px;
			font-weight:bold;
			color:white;
			}
			
.login-form { margin-top:25px; 
			text-align: center;}
			
input[type=text] {
border:none;
border-bottom: 2px solid gray;
font-weight: bold;
margin-bottom: 5px;
}

input[type=password] {
border:none;
border-bottom: 2px solid gray;
font-weight: bold;
margin-bottom: 10px;
}

.form-group{
margin-bottom: 10px;
}

.form-control:focus{
	border-bottom:4px solid pink;
	box-shadow:none;
	
}
input{
	
	height: 30px;
	width: 250px;	
}

.form-control-label{ 
font-size:10px;
color: white;
font-weight:bold;
letter-spacing:1px;}

.btn-outline-primary {
	color: white;
	font-weight: bold;
	letter-spacing:1px;
	box-shadow:0 1px 3px black;
	}
.btn-outline-primary:hover{
background-color:pink;
}



.login-btm{float: center; margin-top: 10px;}
.login-button{ margin-left:5px; margin-bottom: 30px; text-align: center; color:pink;}
.login-text{  text-align: center; font-weight:bold; color: pink;}

.find-btn{float:left; margin-top:10px; }
.find-id{ margin-left:800px; }
button{ background-color:#5E5966; color:white;}

</style>
</head>
<body>

<%@include file="../Main_jsp/header.jsp" %>



	
	<div class="container">
	
		<div class="row">
			<div class= "col-lg-3 col-md-2"> </div> <!-- 공백 -->
				<div class = "col-lg-6 col-md-8 login-box">
					<div class="col-lg-12 login-key">
					<i class="fa fa-key" aria-hidden="true"></i>
					</div>
				
					<div class="col-lg-12 login-title">
						Member Login
					</div>
					<div class="col-lg-12 login-form">
							<form method="post" action="logincontroller.jsp">
								<div class="form-group">


									<input type="text" class="form-control" maxlength="30" placeholder="USER ID" name="id">
								</div>
								
								<div class="form-group">
									
									<input type="password" class="form-control" maxlength="30" placeholder="USER Password" name="password">
								</div>


								
								<div class="form-group">				
								
										<div class="col-lg-6">
										<% String cancel = request.getParameter("cancel");
										if(cancel != null) {
										%>
									<!-- 로그인 실패시  -->	[로그인 실패] 회원정보가 없습니다
									<%} %>
										</div>
										
										<div class="col-lg-6">
											 
											  <a href="findid.jsp"> 아이디찾기 </a> 
											  <a href="findpw.jsp"> 비밀번호찾기 </a>
											 <button type="submit" class="btn btn-outline-primary" style="padding: 10px 30px;  margin: 15px;"> LOGIN</button>
										</div>

									</div>	

							</form>

				</div>
			</div>
		</div>
	</div>
	
	

	
</body>
</html>