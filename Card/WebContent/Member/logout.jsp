<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
		//1. 세션 초기화 
		//session.invalidate();
		
		//2. 
		session.setAttribute("user",null);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그아웃 되었습니다 .');");
		script.println("location.href ='/Card/Main_jsp/section.jsp'");
		script.println("</script>");
	
	
	%>
</body>
</html>