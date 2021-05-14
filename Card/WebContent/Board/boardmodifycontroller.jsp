<%@page import="java.io.PrintWriter"%>
<%@page import="DAO.BoardDao"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
	String realFolder = "C:/Users/user/git/Card/Card/WebContent/upload";

	MultipartRequest multi = new MultipartRequest( request, realFolder, 1024*1024*10 , "UTF-8", new DefaultFileRenamePolicy() );
													// 요청방식, 저장위치,  파일최대용량,			인코딩	,	보안		
	request.setCharacterEncoding("EUC-KR"); // 요청할때 데이터를 한글로 인코딩 
	
	int board_id = Integer.parseInt(multi.getParameter("board_id"));
	String board_title = multi.getParameter("board_title"); // input name 
	String board_contents = multi.getParameter("board_contents"); // input name 
	String board_file = multi.getFilesystemName("board_file"); // input name 
	
	if( board_file == null) {
		board_file = multi.getFilesystemName("board_file2");
	}
	
	BoardDao dao = BoardDao.getinstance();
	
	int result = dao.updateboard(board_title, board_contents, board_file, board_id);
	
	
	if( result == 1 ){  
		
		PrintWriter script =response.getWriter();
		script.println("<script>");
		script.println("alert('글 수정 되었습니다 .');");
		script.println("location.href ='board.jsp'");
		script.println("</script>");
	}
	
	else{
		
		PrintWriter script =response.getWriter();
		script.println("<script>");
		script.println("alert('수정 오류 [ 관리자에게 문의 ] .');");
		script.println("location.href ='board.jsp'");
		script.println("</script>");
	}
	%>
</body>
</html>