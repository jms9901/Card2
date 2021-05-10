
<%@page import="DTO.MemberDto"%>
<%@page import="DAO.MemberDao"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
	.delete-box{ margin-top: 100px;
				padding : 30px;
				background-color: #5E5966;
				text-align: center;
				box-shadow: 0 3px 6px balck;}
				
	.delete-key{ height:100px;
				font-size: 80px;
				line-height: 100px;}
				
	.delete-title{ margin-top:15px;
				text-align:center;
				font-size:30px;
				letter-spacing: 2px;
				font-weight:bold;
				color:white;
				}
				
	.delete-form { margin-top:25px; 
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
	
	.update-btm{float:center; margin-top: 10px;}
	
	.update-button{ margin-bottom: 30px; text-align: center; color:pink;}
	
	.update-text{  text-align: center; font-weight:bold; color: pink;}
	
	</style>
	</head>
	<body>
	
	<%@include file="../Main_jsp/header.jsp" %>
	<% request.setCharacterEncoding("UTF-8");
				
				MemberDao dao = MemberDao.getinstance();
				
				MemberDto dto = dao.getMember(user);
				
				%>
	
	
		<div class="container">
		
	
				<div class= "col-lg-3 col-md-2"> </div> <!-- 공백 -->
					<div class = "col-lg-6 col-md-8 delete-box">
						<div class="col-lg-12 delete-key">
						<div class="col-md-5"></div>
						<i class="fa fa-key" aria-hidden="true"></i>
					</div>
					
					<!-- table로 간격맞추기  -->
						<div class="col-lg-12 delete-title">
							회원 탈퇴 
						</div>
						<div class="form-group">
					-------------------------------------------------------------------
				</div>
				
						<img alt="" src="/Card/images/snoopy1.png" width="120px" height="120px">
			
						<div class="col-lg-5 delete-form" >
								<form method="post" action="deletecontroller.jsp">
									<table class="form-group" style="margin: 0 auto;" >
																	
										<tr style="text-align: left;" >
										<td> <label class="form-control-label"> [비밀번호] *</label> </td>
										<td> <input type="password" class="form-control" maxlength="30" name="password"> </td>
										</tr>
									</table>		
	
									<div class="col-lg-12 deletebttm">
										<div class="col-lg-6 delete-btm delete-text">
										<% String cancel = request.getParameter("cancle");
										if(cancel !=null) {
										%>	[탈퇴 실패] 비밀번호 오류
										<%
									} %>
										</div>
										<div class="form-group">
					-------------------------------------------------------------------
				</div>
										<div class="col-lg-6 delete-btm delete-botton" >
											 <button type="submit" class="btn btn-outline-primary" style="padding: 10px 30px; color: black; margin-right: 10px"> 회원탈퇴 </button>
											
										</div>
										</div>	
								</form>
						
							
					</div>
				</div>
			</div>
		
		
		
		
	</body>
	</html>