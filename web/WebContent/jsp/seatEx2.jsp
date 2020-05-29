<%@page import="movie.com.model.MovieScheduleBean"%>
<%@page import="movie.com.dao.MovieDao"%>
<%@page import="movie.com.model.MovieBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<style>
@charset "utf-8";
div,a,p{
text-align: center;
}
.reservation{
	position: absolute;
	width:1600px;
	height:800px;
	right:0;
	left:0;
	top:0;
	bottom:0;
	margin: auto;
	
	
}
.vertical-menu {
  width: 350px;
  height:700px;
  float: left;
  border: 1px solid;
  overflow: auto;
  padding: 0;
  margin: 0;
	}

.vertical-menu a {
  background-color: #eee;
  color: black;
  display: block;
  padding: 12px;
  text-decoration: none;
  text-align: center;
}

.vertical-menu a:hover {
  background-color: #ccc;
}

.vertical-menu a.active {
  background-color: #4CAF50;
  color: white;
}
div.theater{
	float: left;
	width: 49%;
	height: 50%; 
	padding: 0;
	margin: 0;
	
}
/* div.theater a{
	border: 1px;
} */
</style>

<script type="text/javascript">

$( function() {
	
    $("a.movie").click(function(){
    	var no;
    	//no=($(this).attr("lang"));
    	
    	//alert(no);
   		$.ajax({
    		url:'/web/ajax/Schedule.jsp',
    		type:'POST',
    		dataType:'json',
    		data:{no:$(this).attr("lang")},
    		success:function(v){
    			//$("div#sTheater").remove();
    			//$("div#sTheater").append("<h3>"+v+"</h3>");
    			/* $(v).find("theater").each(function(){
    				var tLoc=$(this).find(("a#tLoc").html());
    				alert(tLoc);
    			});  */
    			console.log(v);
    			 $("div#sTheater a").remove();
    			 $("div#schedule a").remove();
    			$(v).each(function(index,dom){   
   
					$("div#sTheater").append("<a id='tname'><h3>"+dom.TNAME+"</h3><a>");
					
					$("a#tname").click(function(){
						$("div#schedule").append("<a id='tdate'><h3>"+dom.DATE+"</h3><a>");
						$("a#tdate").click(function(){
							$("div#stime").append("<a id='tTime'><h3>"+dom.TIME+"</h3><a>");
						});
					});
					
				
    			}); 
  
    		},
    		error:function(v){
    			alert('error');
    		}
    	}); 
  
    });
    
  });

</script>
<%
	request.setCharacterEncoding("EUC-KR");
	List<MovieBean>mlist=null;
	mlist=MovieDao.listMovie();	
	//List<MovieScheduleBean>slist= MovieDao.movieSchedule(no);
%>
</head>
<body>

<div class="reservation">
	<div class="vertical-menu">
	  <a href="#" class="active"><h1>영화 선택</h1></a>
	  	<%
		for(MovieBean bean:mlist){
		%>
		<a href="#" class="movie" title="<%=bean.getMovie_title()%>" lang="<%=bean.getMovie_no()%>"><h2><%=bean.getMovie_title() %></h2></a>
		<% 
		}
		%>
		
		<a href="#"></a>
		  		<a href="#"></a>
		  		<a href="#"></a>
		  		<a href="#"></a>
		  		<a href="#"></a>
		  		<a href="#"></a>
		  		<a href="#"></a>
		  		<a href="#"></a>
		  		<a href="#"></a>
		  		<a href="#"></a>
		  		<a href="#"></a>
		  		<a href="#"></a>
		  		<a href="#"></a>
		  		<a href="#"></a>
		  		<a href="#"></a>
		  		<a href="#"></a>
		  		<a href="#"></a>
		  	
		  		
	</div>
	<div class="vertical-menu">
		<a href="#" class="active"><h1>극장 선택</h1></a>
			<div class="theater">
				<p style="text-align: center;font-size: 20;"><h3>지역</h3></p>
		  		<a href="#"><h3>서울</h3></a>
		  		<a href="#"><h3>경기</h3></a>
		  		<a href="#"><h3>충청/대전/세종</h3></a>
		  		<a href="#"><h3>경상/대구/부산</h3></a>
		  		<a href="#"><h3>전라/광주</h3></a>
		  		<a href="#"><h3>강원</h3></a>
		  	<!-- 	<a href="#"><h3>제주</h3></a> -->
		 
			</div>
			<div class="theater" id="sTheater"  >
				<p ><h3>상영관</h3></p>

		  		
		</div>
		
	</div>
	<div class="vertical-menu">
	  <a href="#" class="active"><h1>관람일 선택</h1></a>
		 <p>Date: <input type="text" id="datepicker"></p>
	 	 <div id="schedule">
	 	 </div>
	 	 
	</div>
	<div class="vertical-menu">
	  <a href="#" class="active" id="sTime"><h1>시간 선택</h1></a>
	  		<div id="stime">
	 	 </div>
	  
	</div>
</div>