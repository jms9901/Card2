<%@page import="java.io.PrintWriter"%>
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

	request.setCharacterEncoding("UTF-8");

	String card_name = request.getParameter("card_name");
	
	CardDao dao = CardDao.getinstance();
	
	int result = dao.deletecard(card_name);
	
	if(result == 1) {
		
		PrintWriter script = response.getWriter();
		script.println("<script>");
		
			script.println("alert('카드 삭제 완료');");
			script.println("location.href='/Card/Card/allcard.jsp'");
		
		script.println("</script>");
		
	} else {
		
		PrintWriter script = response.getWriter();
		script.println("<script>");
		
			script.println("alert('카드 삭제 실패 [ 개발자에게 문의해주세요. ]');");
			 script.println("history.back()"); 
		
		script.println("</script>");
		
	}

%>

</body>
</html>