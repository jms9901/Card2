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
	 
	 String id = request.getParameter("id");
	 String password = request.getParameter("password");
	 String passwordcheck = request.getParameter("passwordcheck");
	 String name = request.getParameter("name");
	 String sex = request.getParameter("sex");
	 String phone = request.getParameter("phone");
	 
	 int resdentnum = Integer.parseInt(request.getParameter("resdentnum"));
	 
	 String company = request.getParameter("company");
	 
	 String benefit = "";
	 
	 String interset2[] = request.getParameterValues("interset");
	 	for(int i = 0; i < interset2.length; i++) {
	 		
	 		String str = interset2[i];
	 		
	 		if(i == interset2.length - 1) {
	 			benefit = benefit + str;
	 			break;
	 		}
	 		benefit = benefit + str + ",";
	 	}
	
	 String type =request.getParameter("type");
	 
	 MemberDto dto = new MemberDto();
	 dto.setMember_id(id);
	 dto.setMember_password(password);
	 dto.setMember_name(name);
	 dto.setMember_sex(sex);
	 dto.setMember_phone(phone);
	 dto.setMember_resdentnum(resdentnum);
	 dto.setMember_cardcompany(company);
	 dto.setMember_cardbenefit(benefit);
	 dto.setMember_cardtype(type);
	 

	 
	 
	 MemberDao dao = MemberDao.getinstance();
	 
	 int result = dao.signup(dto);
	 
	 if( result == 1 ){  
			
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("alert('회원가입 성공 되었습니다 .');");
			script.println("location.href ='/Card/Main_jsp/section.jsp'");
			script.println("</script>");
		}
	 
		else{
			
			PrintWriter script =response.getWriter();
			script.println("<script>");
		script.println("location.href ='/Card/Member/signup.jsp?cancel=1'"); 
			script.println("</script>");
		}
		
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 %>
</body>
</html>