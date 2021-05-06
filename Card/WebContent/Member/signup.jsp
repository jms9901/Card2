
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
	.login-box{ margin-top: 100px;
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
				
	radio{ text-color : white;}
	
	checkbox { color: white;}
	
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
	
	.login-btm{float:center; margin-top: 10px;}
	
	.login-button{ margin-bottom: 30px; text-align: center; color:pink;}
	
	.login-text{  text-align: center; font-weight:bold; color: pink;}
	
	</style>
	</head>
	<body>
	
	<%@include file="../Main_jsp/header.jsp" %>
	
	
		<div class="container">
		
	
				<div class= "col-lg-3 col-md-2"> </div> <!-- 공백 -->
					<div class = "col-lg-6 col-md-8 login-box">
						<div class="col-lg-12 login-key">
						<div class="col-md-5"></div>
						<i class="fa fa-key" aria-hidden="true"></i>
					</div>
					
					<!-- table로 간격맞추기  -->
						<div class="col-lg-12 login-title">
							Member SignsUP
						</div>
						
			
						<div class="col-lg-5 login-form" >
								<form method="post" action="signupcontroller.jsp">
									<table class="form-group" style="margin: 0 auto;" >
										<tr style="text-align: left;" >
										<td><label class="form-control-label"> [아이디] * </label> </td>
										<td> <input type="text" class="form-control" maxlength="30" name="id"></td>
										</tr>
										
										<tr style="text-align: left;" >
										<td> <label class="form-control-label"> [비밀번호] *</label> </td>
										<td> <input type="password" class="form-control" maxlength="30" name="password"> </td>
										</tr>
										
										<tr style="text-align: left;" >
										<td> <label class="form-control-label"> [비밀번호 확인] *</label> </td>
										<td> <input type="password" class="form-control" maxlength="30" name="passwordcheck"> </td>
										</tr>
										
										<tr style="text-align: left;" >
										<td> <label class="form-control-label"> [이름] * </label> </td>
										<td> <input type="text" class="form-control" maxlength="30" name="name"> </td>
										</tr>
										
										<tr style="text-align: left;" >
										<td> <label class="form-control-label"> [성별] * </label> </td>
										<td> <input type="radio" class="form-control" maxlength="30" name="sex" value="man"> 남자
										<input type="radio" class="form-control" maxlength="30" name="sex" value="wman"> 여자 </td>
										</tr>
										
										<tr style="text-align: left;">
										<td> <label class="form-control-label">[주민등록번호] * </label> </td>
										<td><input type="text" class="form-control" maxlength="30" name="resdentnum"></td>
										</tr>
										
										<tr style="text-align: left;">
										<td> <label class="form-control-label">[연락처] * </label> </td>
										<td><input type="text" class="form-control" maxlength="30" name="phone"></td>
										</tr>
										
										<tr style="text-align: left;">
										<td><label class="form-control-label" > [카드사] </label></td>
										<td><select name="company">
											<option value="국민"> 국민카드 </option>
											<option value="롯데"> 롯데카드 </option>
											<option value="신한"> 신한카드 </option>
											<option value="삼성"> 삼성카드 </option>
											<option value="우리"> 우리카드 </option>
											<option value="농협"> NH농협카드 </option>
											<option value="하나"> 하나카드 </option>
											<option value="씨티"> 씨티카드 </option>
											<option value="기업"> IBK기업카드 </option>
											<option value="현대"> 현대카드 </option>
											<option value="우체국"> 우체국 </option>
											
										</select></td>
										</tr>
										
										<tr style="text-align: left;">
										<td rowspan="4"><label class="form-control-label" > [카드 혜택] </label></td>
											<td style="padding-top: 30px;"><input type="checkbox" name="interset1" value="쇼핑" > 쇼핑
											<input type="checkbox" name="interset2" value="통신요금"> 통신요금
											<input type="checkbox" name="interset3" value="교통"> 교통</td>
										</tr>
										<tr style="text-align: left;" >
											<td><input type="checkbox" name="interset4" value="주유"> 주유
											<input type="checkbox" name="interset5" value="편의점"> 편의점
											<input type="checkbox" name="interset6" value="배달"> 배달</td>
										
										<tr style="text-align: left;">
											<td><input type="checkbox" name="interset7" value="구독"> 구독서비스
											<input type="checkbox" name="interset8" value="카페"> 카페
											<input type="checkbox" name="interset9" value="공과금"> 공과금</td>
											
										</tr>
										<tr style="text-align: left; ">
											<td style="padding-bottom: 30px;"><input type="checkbox" name="interset10" value="마일리지"> 마일리지</td>
										</tr>
									
				
										<tr style="text-align: left;">
											<td ><label class="form-control-label" > [카드 타입]</label></td>
											<td >
											<input type="checkbox" name="type1" value="할인"> 할인
											<input type="checkbox" name="type2" value="포인트"> 포인트
											<input type="checkbox" name="type3" value="마일리지"> 마일리지 </td>
										</tr>
									</table>		
	
									<div class="col-lg-12 loginbttm">
										<div class="col-lg-6 login-btm login-text">
										<% String cancel = request.getParameter("cancle");
										if(cancel !=null) {
										%>	<!-- 회원가입 실패시  -->	[회원가입 실패] 동일한 아이디가 존재합니다
										<%
									} %>
										</div>
										
										<div class="col-lg-6 login-btm login-botton" >
											 <button type="submit" class="btn btn-outline-primary" style="padding: 10px 30px; color: black; margin-right: 10px"> 회원가입 </button>
											 <button type="reset" class="btn btn-outline-primary" style="padding: 10px 30px; color: black;"> 다시작성 </button>
										</div>
										</div>	
								</form>
						
							
					</div>
				</div>
			</div>
		
		
		
		
	</body>
	</html>