<%@page import="movie.com.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	//ID 중복확인
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String name =request.getParameter("name");
	String email = request.getParameter("email");
	String birth = request.getParameter("birth");
	String tel = request.getParameter("tel");
	String password = request.getParameter("password");
	boolean state = false;
	if(id != null){ 
		state = MemberDao.memberIdCheck(id);
		if(state) response.sendRedirect("signup.jsp"); //ID 중복
		else response.sendRedirect("memberInsert.jsp?id="+id+"&name="+name+"&email="+email+"&birth="+birth+"&tel="+tel+"&password="+password); //ID 중복 X 
	} 
%>
<%=password %>
</body>
</html>