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
	if(MemberDao.memberLoginCheck(id, password)){ //�α��� ����
		session.setAttribute("id", id);
		session.setMaxInactiveInterval(30);
		response.sendRedirect("/web/index.jsp");
	}else{ //�α��� ����
		response.sendRedirect("signin.jsp");
	}
%>
</body>
</html>