<%@page import="java.io.PrintWriter"%>
<%@page import="DAO.BoardDao"%>
<%@page import="DTO.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("EUC-KR"); // 한글 인코딩 
	
	String board_title = request.getParameter("title");
	String board_contents = request.getParameter("contents");
	// String contents = request.getParameter("file");
	// String file = "파일";
	String board_userid = request.getParameter("userid");
	String board_file = request.getParameter("file");
	
	BoardDto boardDto = new BoardDto();
	
	boardDto.setBoard_title(board_title);
	boardDto.setBoard_contents(board_contents);
	boardDto.setBoard_userid(board_userid);
	boardDto.setBoard_file(board_file);
	
	BoardDao dao = BoardDao.getinstance();
	
	int result = dao.write(boardDto);
	
	if(result == 1) {
		
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('글등록이 되었습니다.')");
		script.println("location.href = 'board.jsp'");
		script.println("</script>");
		
		
	}else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('글 등록 오류')");
		script.println("location.href = 'board.jsp'");
		script.println("</script>");
		
	}
	

%>
</body>
</html>