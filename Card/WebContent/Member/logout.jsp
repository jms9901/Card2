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
		//1. ���� �ʱ�ȭ 
		//session.invalidate();
		
		//2. 
		session.setAttribute("user",null);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('�α׾ƿ� �Ǿ����ϴ� .');");
		script.println("location.href ='/Card/Main_jsp/section.jsp'");
		script.println("</script>");
	
	
	%>
</body>
</html>