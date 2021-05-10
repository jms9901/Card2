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

	String card_company = request.getParameter("card_company");
	String card_name = request.getParameter("card_name");
	
	CardDao dao = CardDao.getinstance();
	
	int result = dao.carddelete(card_name, card_company);
	
	if(result == 1) {
		
		PrintWriter script =response.getWriter();
		script.println("<script>");
		
			script.println("alert('삭제 되었습니다.');");
			script.println("location.href ='carddelete.jsp'");
			
		script.println("</script>");
		
	} else {
		
		PrintWriter script =response.getWriter();
		script.println("<script>");
		
			script.println("alert('오류 발생...[ 개발자에게 문의해주세요. ]');");
			script.println("history.back()");
			
		script.println("</script>");
		
	}

%>

</body>
</html>