<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.findpw-box{ margin-top: 100px;
			padding : 30px;
			background-color: #5E5966;
			text-align: center;
			box-shadow: 0 3px 6px balck;}
			
.findpw-key{ height:100px;
			font-size: 80px;
			line-height: 100px;
			background-image:url("/Card/images/card.png");
			background-repeat:no-repeat;
			background-position: center;}
			
.findpw-title{ margin-top:15px;
			text-align:center;
			font-size:20px;
			letter-spacing: 2px;
			font-weight:bold;
			color:white;
			text-shadow: 1px 1px 1px pink;
			}
			
.findpw-form { margin-top:25px; 
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

.form-control-label{ 
font-size:15px;
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
.findpw-btm{float: center; margin-top: 10px;}
.findpw-button{ margin-left:5px; margin-bottom: 30px; text-align: center; color:pink;}
.findpw-text{  text-align: center; font-weight:bold; color: pink;}


input{
	
	height: 30px;
	width: 250px;	
}



</style>
</head>
<body>

<%@include file="../Main_jsp/header.jsp" %>

<div class="container">
	
		<div class="row">
			<div class= "col-lg-3 col-md-2"> </div> <!-- 공백 -->
				<div class = "col-lg-6 col-md-8 findpw-box">
					<div class="col-lg-12 findpw-key">
					<i class="fa fa-key" aria-hidden="true"></i>
				</div>
				
					<div class="col-lg-12 findpw-title">
					 비밀번호 찾기
					</div>
					<div class="col-lg-12 findpw-form">
							<form method="post" action="findpwcontroller.jsp">
								<div class="form-group">
									
									<input type="text" class="form-control" maxlength="30" placeholder="아이디" name="id">
								</div>
								
								<div class="form-group">
									
									<input type="text" class="form-control" maxlength="30" placeholder="성함" name="name">
								</div>
								
								<div class="form-group">
								
									<input type="text" class="form-control" maxlength="30" placeholder="연락처" name="phone">
								</div>
												
								<div class="col-lg-12 findpwbttm">
									<div class="col-lg-6 findpw-btm findpw-text">
									<%
										String password = null;
									
									password = request.getParameter("password");
										String cancel = request.getParameter("cancel");
										
										if( password != null ){
											%> [ <%=password %> ] <% 
										}else{
											
											if( cancel == null){
											%> [ 비밀번호 ] <%
											}else{
												%> [ 회원정보가 없습니다. ] <%
												
											}
												
										}
									
									%>
									</div>
									
									<div class="col-lg-6 findpw-btm findpw-botton">
										 <button type="submit" > 비밀번호 찾기 </button>
									</div>
									</div>	
						
							</form>
					
						
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>