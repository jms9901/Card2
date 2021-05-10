<%@page import="DAO.MemberDao"%>
<%@page import="DTO.MemberDto"%>
<%@page import="java.util.ArrayList"%>
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
.info-box{ 
			margin-top: 100px;
			
			padding : 30px;
			background-color: #5E5966;
			text-align: center;
			box-shadow: 0 3px 6px balck;}
			

.info-title{ margin-top:15px;
			text-align:center;
			font-size:20px;
			letter-spacing: 2px;
			font-weight:bold;
			color:white;
			}
			
.info-form { margin-top:15px; 
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
color:white;
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

span{ color:white;
text-align: left;}



</style>
</head>
<body>
<%@include file="../Main_jsp/header.jsp" %>
	<div class="container">
		
		<div class="row">
			<div class="col-lg-6 col-md-8 info-box">
		
			<div class="col-lg-12 info-title">
				내정보 
			</div>
			
			 <div class="col-lg-12 info-form"> 
				<form>
				<div class="form-group">
					-------------------------------------------------------------------
				</div> <br>
						<% request.setCharacterEncoding("UTF-8");
				
				MemberDao dao = MemberDao.getinstance();
				
				MemberDto dto = dao.getMember(user);
				
				%>
				
				<ul>
		
					
				
				<li class="member_li">
				
					<a href=""><img alt="" src="/Card/images/snoopy.png" width="120px" height="120px"></a> <br><br>
				
					<div class="member_info">		
				
					
			
					<span class="id"> [&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;]&nbsp;&nbsp;: <%=dto.getMember_id()%></span> <br>
			
				
				
					<span class="password">[&nbsp;&nbsp;&nbsp;&nbsp;비밀번호&nbsp;&nbsp;&nbsp;&nbsp;]&nbsp;&nbsp;:<%=dto.getMember_password()%> </span><br>
			
					<span class="name"> [&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;]&nbsp;&nbsp;: <%=dto.getMember_name()%></span><br>
			
			
					<span class="phone">[&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;연락처&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;]&nbsp;&nbsp;:<%=dto.getMember_phone() %></span><br> 
				
				
					<span class="resdent">[&nbsp;주민등록번호&nbsp;]&nbsp;&nbsp;:<%=dto.getMember_resdentnum() %></span><br>  <br>
			
				</div>	
				</li>
			
					
				</ul>
				
				<div class="form-group">
					-------------------------------------------------------------------
				</div>
				
				<div class="form-group">
						 
						 <div class="col-lg-6">
						 
						 
						 </div>
						 
						 <div class="col-lg-6">
						 	
						 	<a href="/Card/Member/update.jsp"> 정보 수정 | </a>
						 	<a href="/Card/Member/delete.jsp"> 회원 탈퇴 </a>
						 
						 </div>
				</div>
				
				</form>
			
			
			</div>	
			</div>
		</div>
	</div>

</body>
</html>