<%@page import="java.io.PrintWriter"%>
<%@page import="DAO.BoardDao"%>
<%@page import="DTO.BoardDto"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%@include file="../Main_jsp/header.jsp" %>


<%
		//cos파일 다운 받기 

		String realFolder = "C:/Users/user/git/Card2/Card/WebContent/upload";
		
		MultipartRequest multi = new MultipartRequest( request, realFolder, 1024*1024*10 , "UTF-8", new DefaultFileRenamePolicy() );
														// 요청방식, 저장위치,  파일최대용량,			인코딩	,	보안		
	
		// 첨부파일 사용시 enctype : 타입으로 변경 
		String board_title = multi.getParameter("board_title"); // input name 
		String board_contents = multi.getParameter("board_contents"); // input name 
		String board_file = multi.getFilesystemName("board_file"); // input name 
					// filesystemName: 첨부파일명
		
		BoardDto boardDto = new BoardDto();
		
		// id 생략
		boardDto.setBoard_title(board_title );
		boardDto.setBoard_contents(board_contents);
		boardDto.setBoard_userid(user);
		boardDto.setBoard_file(board_file);
		
		
		BoardDao dao = BoardDao.getinstance();
		
		int result =  dao.write( boardDto );
		
		if( result == 1 ){  
			
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("alert('글 등록이 되었습니다 .');");
			script.println("location.href ='board.jsp'");
			script.println("</script>");
		}
		else{
			
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("alert('글 등록 오류 [ 관리자에게 문의 ] .');");
			script.println("location.href ='board.jsp'");
			script.println("</script>");
		}
		
	
	%>



	
</body>
</html>