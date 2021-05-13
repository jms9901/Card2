<%@page import="DAO.CardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

	String link = request.getParameter("link");
	
	CardDao dao = CardDao.getinstance();

	dao.click(link);

	request.setCharacterEncoding("UTF-8");

	response.sendRedirect(request.getParameter("link"));
	

%>

</body>
</html>