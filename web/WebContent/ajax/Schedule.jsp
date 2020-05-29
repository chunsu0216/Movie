<%@page import="movie.com.dao.MovieDao"%>
<%@page import="movie.com.model.MovieScheduleBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	int no=Integer.parseInt(request.getParameter("no"));
	List<MovieScheduleBean>slist= null;
	if(no!=0){
		slist=MovieDao.movieSchedule(no);
}

%>

 
 
	[
	
	<%
	for(int i=0;i<slist.size();i++){
	%>
		{
			"NO":"<%=(slist.get(i)).getMovie_no()%>",
			"TNAME":"<%=(slist.get(i)).getTheater_name()%>",
			"DATE":"<%=(slist.get(i)).getSchedule_date()%>",
			"TIME":"<%=(slist.get(i)).getSchedule_time()%>"
			
		<%if(i<slist.size()-1){%>
	    },
	    
	    <%}else{%>
	    }
	    
	    <%}//if%>
	    
	<%}//for%>
	
	]
	

  



