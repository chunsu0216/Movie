<%@page import="movie.com.model.MovieScBean"%>
<%@page import="movie.com.dao.MovieDao"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
   
</script>
<body>
<%
   response.setCharacterEncoding("UTF-8");
   MovieScBean bean=new MovieScBean();
   String scr=request.getParameter("scr").trim();
   String stime=request.getParameter("stime").trim();
   String array=request.getParameter("array").trim();
   bean.setScreen(scr);
   bean.setStime(stime);
   bean.setSeat(array);
   MovieDao.MovieScInsert(bean);
   out.print(bean);
%> 

</body>
</html>