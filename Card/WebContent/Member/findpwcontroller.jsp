<%@page import="DAO.MemberDao"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%												// 요청방식, 저장위치,  파일최대용량,			인코딩	,	보안		
		request.setCharacterEncoding("UTF-8"); // 요청할때 데이터를 한글로 인코딩
	
		// 첨부파일 사용시 enctype : 타입으로 변경 
		// 2. 파일명은 DB저장
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		
		MemberDao dao = MemberDao.getinstance();
		String result = dao.findpw(id, name, phone);
		
		if( result !=null ){  
		
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호 찾기 성공 .');");
			script.println("location.href ='/Card/Member/findpw.jsp?password="+result+"'");
			script.println("</script>");
		}
		else{
			
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("location.href ='/Card/Member/findpw.jsp?cancel=1'");
			script.println("</script>");
		}
		
	
	%>
</body>
</html>