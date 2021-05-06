<%@page import="java.io.PrintWriter"%>
<%@page import="DAO.CompanyDao"%>
<%@page import="DTO.CompanyDto"%>
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

	String card_company = request.getParameter("card_company");
	String card_name = request.getParameter("card_name");
	int card_category = Integer.parseInt(request.getParameter("card_category"));
	
	CompanyDto companyDto = new CompanyDto(card_company, card_name, card_category);
	
	CompanyDao dao = CompanyDao.getinstance();
	
	int result = dao.companyadd(companyDto);
	
	if(result == 1) {
		
		PrintWriter script = response.getWriter();
		script.println("<script>");
		
			script.println("alert('카드사 등록 완료');");
			script.println("location.href='/Card/Main_jsp/section.jsp'");
		
		script.println("</script>");
		
	} else {
		
		PrintWriter script = response.getWriter();
		script.println("<script>");
		
			script.println("alert('카드사 등록 실패');");
			 script.println("history.back()"); 
		
		script.println("</script>");
		
	}
%>

</body>
</html>