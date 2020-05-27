<%@page import="movie.com.dao.MemberDao"%>
<%@page import="movie.com.model.MemberBean"%>
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
	MemberBean memberBean = new MemberBean();
	memberBean.setId(request.getParameter("id"));
	memberBean.setName(request.getParameter("name"));
	memberBean.setPassword(request.getParameter("password"));
	memberBean.setBirth(request.getParameter("birth"));
	memberBean.setTel(request.getParameter("tel"));
	memberBean.setEmail(request.getParameter("email"));
	MemberDao.insertMember(memberBean);
	response.sendRedirect("signin.jsp");
%>
<%=memberBean %>
</body>
</html>