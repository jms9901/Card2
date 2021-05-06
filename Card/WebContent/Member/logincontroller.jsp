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
		String password = request.getParameter("password");
		
		MemberDao dao = MemberDao.getinstance();
		int result = dao.login(id, password);
		
		if( result == 1 ){  
			
			// 로그인 성공 시 세션 할당
				// 세션 : 서버에 데이터 저장	[보안 높음]
				// 쿠키 : 클라우드pc에 저장	[보안 낮음]
			session.setAttribute("user", id);
			
			
			
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("alert('로그인 성공 되었습니다 .');");
			script.println("location.href ='/Card/Main_jsp/footer.jsp'");
			script.println("</script>");
		}
		else{
			
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("location.href ='/Card/Member/login.jsp?cancel=1'");
			script.println("</script>");
		}
		
	
	%>
</body>
</html>