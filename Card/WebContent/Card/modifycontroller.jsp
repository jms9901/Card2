<%@page import="java.io.PrintWriter"%>
<%@page import="DAO.CardDao"%>
<%@page import="DTO.CardDto"%>
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

		//1. 업로드 파일 서버에 저장
		String realFolder = "C:/Users/User/git/Card2/Card/WebContent/card_upload"; // 폴더명 윈도우
		
		//String realFolder = "/Users/kimse-ung/git/Card2/Card/WebContent/card_upload"; // 폴더명 맥
		
		MultipartRequest multi = new MultipartRequest(request, realFolder, 1024*1024*10, "UTF-8", new DefaultFileRenamePolicy());
													// 요청방식, 저장위치, "파일최대용량", "인코딩값", "보안식"
													// DefaultFileRenamePolicy() : 업로드시 중복된 파일명 제거
													
		request.setCharacterEncoding("UTF-8");
													
		String card_name = multi.getParameter("card_name");
		String card_name2 = multi.getParameter("card_name2");
		
		String card_company = multi.getParameter("card_company");
		
		int membership_fee = Integer.parseInt(multi.getParameter("membership_fee"));
		
		String images = multi.getFilesystemName("images");
		
		if(images == null) {
			images = multi.getParameter("images2");
		}
		
		String bank_link = multi.getParameter("bank_link");
		
		String benefit = "";
		
		String benefit2[] = multi.getParameterValues("benefit");
			for(int i = 0; i < benefit2.length; i++) {
				
				String str = benefit2[i];
				
				if(i == benefit2.length - 1) {
					benefit = benefit + str;
					break;
				}
				benefit = benefit + str + ",";
			}
			
		String card_category = multi.getParameter("card_category");
		
		CardDto cardDto = new CardDto(card_name, card_company, membership_fee, images, bank_link, benefit, card_category);
		
		CardDao dao = CardDao.getinstance();
		
		int result = dao.cardmodify(cardDto , card_name2);
		
		if(result == 1) {
			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			
				script.println("alert('카드 수정 완료');");
				script.println("location.href='/Card/Card/allcard.jsp'");
			
			script.println("</script>");
			
		} else {
			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			
				script.println("alert('카드 수정 실패 [ 개발자에게 문의해주세요. ]');");
				 script.println("history.back()"); 
			
			script.println("</script>");
			
		}

%>

</body>
</html>