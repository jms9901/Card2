<%@page import="java.io.PrintWriter"%>
<%@page import="DTO.ReplyDto"%>
<%@page import="DAO.ReplyDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	/* request.setCharacterEncoding("UTF-8"); */
	
	String board_contents = request.getParameter("contents");
	int board_id = Integer.parseInt( request.getParameter("board_id"));

	ReplyDao replyDao = ReplyDao.getinstance();
	
	ReplyDto  replyDto = new ReplyDto();
	
	replyDto.setReply_boardid(board_id);
	replyDto.setReply_contents(board_contents);
	replyDto.setReply_userid("익명");
	
	int result = replyDao.re_write(replyDto);
	
	if( result == 1 ){  
		
		PrintWriter script =response.getWriter();
		script.println("<script>");
		script.println("alert('댓글 등록이 되었습니다 .');");
		script.println("location.href = 'boarddetail.jsp?board_id"+board_id+"'");
		script.println("</script>");
	/*	response.sendRedirect("boarddetail.jsp?id="+id); */
	}
	else{
		
		PrintWriter script =response.getWriter();
		script.println("<script>");
		script.println("alert('댓글 등록 오류 [ 관리자에게 문의 ] .');");
		script.println("location.href ='board.jsp'");
		script.println("</script>");
	}
	
	
%>
</body>
</html>