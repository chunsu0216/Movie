<%@page import="java.util.List"%>
<%@page import="movie.com.dao.MovieDao"%>
<%@page import="movie.com.model.MovieScBean"%>
<%@page import="java.util.HashMap"%>
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
    response.setCharacterEncoding("UTF-8");
   String scr=request.getParameter("scr");
   String stime=request.getParameter("stime");
   List<String> seat=null;
   HashMap<String,Object>map=new HashMap<String,Object>();
   //String dd=null;
   int c=0;
   map.put("scr", scr.trim());
   map.put("stime",stime.trim());
   if(MovieDao.checkMovieSc(map)==true){
      seat=MovieDao.selectMoveSc(map);
      String dd="";
      for(String sr:seat){
         dd+=sr.trim().replace(" ", "").concat((++c!=seat.size())?",":"");
      }
      if(dd!=null){
      response.sendRedirect("SeatTest1.jsp?seat="+dd);
      }else
         response.sendRedirect("SeatTest1.jsp");
   }
   else{
      response.sendRedirect("SeatTest1.jsp");
   } 
   
%>

</body>
</html>