<%@page import="DTO.MemberDto"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="DAO.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
<%												// 요청방식, 저장위치,  파일최대용량,			인코딩	,	보안		
		request.setCharacterEncoding("UTF-8"); // 요청할때 데이터를 한글로 인코딩
	
		// 첨부파일 사용시 enctype : 타입으로 변경 
		// 2. 파일명은 DB저장
		
		
		String password = request.getParameter("password");
		
		MemberDao dao = MemberDao.getinstance();
		
		String id = (String)session.getAttribute("user");
		int result = dao.delete(password , id);		
		
		if( result == 1 ){  
			
			
			session.invalidate();
			
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("alert('탈퇴 되었습니다 .');");
			script.println("location.href ='/Card/Main_jsp/section.jsp'");
			script.println("</script>");
		}
		else{
			
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("location.href ='/Card/Member/delete.jsp?cancel=1'");
			script.println("</script>");
		}
		
	
	%>

</body>
</html>