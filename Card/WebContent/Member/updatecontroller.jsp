<%@page import="DTO.MemberDto"%>
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
	<%
	request.setCharacterEncoding("UTF-8");
	 
	 String password = request.getParameter("password");
	 String passwordcheck = request.getParameter("passwordcheck");
	 String name = request.getParameter("name");
	 String phone = request.getParameter("phone");
	 
	 String company = request.getParameter("company");
	 
	 String interset1 = request.getParameter("interset1");
	 if( interset1 == null ) interset1="";
	 String interset2 = request.getParameter("interset2");
	 if( interset2 == null ) interset2="";
	 String interset3 = request.getParameter("interset3");
	 if( interset3 == null ) interset3="";
	 String interset4 = request.getParameter("interset4");
	 if( interset4 == null ) interset4="";
	 String interset5 = request.getParameter("interset5");
	 if( interset5 == null ) interset5="";
	 String interset6 = request.getParameter("interset6");
	 if( interset6 == null ) interset6="";
	 String interset7 = request.getParameter("interset7");
	 if( interset7 == null ) interset7="";
	 String interset8 = request.getParameter("interset8");
	 if( interset8 == null ) interset8="";
	 String interset9 = request.getParameter("interset9");
	 if( interset9 == null ) interset9="";
	 String interset10 = request.getParameter("interset10");
	 if( interset10 == null ) interset10="";
	 String benefit = interset1+"/"+interset2+"/"+interset3+"/"+interset4+"/"+interset5+"/"+interset6+"/"+interset7+"/"+interset8+"/"+interset9+"/"+interset10;
	
	 String type1 =request.getParameter("type1");
	 if( type1 == null ) type1="";
	 String type2 =request.getParameter("type2");
	 if( type2 == null ) type2="";
	 String type3 =request.getParameter("type3");
	 if( type3 == null ) type3="";
	 String type = type1+"/"+type2+"/"+type3;
	 
	 MemberDto dto = new MemberDto();
	 dto.setMember_password(password);
	 dto.setMember_name(name);
	 dto.setMember_phone(phone);
	 dto.setMember_cardcompany(company);
	 dto.setMember_cardbenefit(benefit);
	 dto.setMember_cardtype(type);
	 

	 
	 
	 
	 MemberDao dao = MemberDao.getinstance();
	 
	 String id = (String)session.getAttribute("user");
	 int result = dao.update(dto, id);
	 
	 if( result == 1 ){  
			
			PrintWriter script =response.getWriter();
			
			script.println("<script>");
			script.println("alert('회원정보 수정 되었습니다 .');");
			script.println("location.href ='/Card/Member/info.jsp'");
			script.println("</script>");
		}
	 
		else{
			
			PrintWriter script =response.getWriter();
			script.println("<script>");
		script.println("location.href ='/Card/Member/update.jsp?cancel=1'"); 
			script.println("</script>");
		}
		
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 %>
</body>
</html>