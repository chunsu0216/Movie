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
	response.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("idCk");
	String password = request.getParameter("passwordCk");
	if(MemberDao.memberLoginCheck(id, password)){ //로그인 성공
		session.setAttribute("id", id);
		session.setMaxInactiveInterval(30);
		response.sendRedirect("/web/index.jsp");
	}else{ //로그인 실패
		response.sendRedirect("signin.jsp");
	}
%>
</body>
</html>