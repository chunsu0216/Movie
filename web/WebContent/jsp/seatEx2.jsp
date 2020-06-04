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
function ajaxData(v){
	
	
}

$( function() {
	var mTitle;
	var mTheater;
	var mDate;
	var mScreen;
	var mTime;
	
	
    $("a.movie").click(function(){
    	mTitle=$(this).attr("title");
    
   		$.ajax({
    		url:'/web/ajax/Schedule.jsp',
    		type:'POST',
    		dataType:'json',
    		data:{no:$(this).attr("lang")},
    		success:function(v){
    			
    	/* 
    			var arrayLoc=[];
    			var arrayTname=[];
    			var arrayDate=[];
    			var arrayTime=[];
    			
    			$(v).each(function(index,dom){   
    				arrayLoc.push(dom.TLOC);
    				arrayTname.push(dom.TNAME);
    				arrayDate.push(dom.DATE);
    				arrayTime.push(dom.TIME);
    			}); 
    			 var final_Tname = [];
    			 	
    			  $.each(arrayTname, function(i, d){ 
    				 if($.inArray(d, final_Tname) === -1) final_Tname.push(d);
    			  });  
				 
    			  */
    			// console.log(v);
				 
	       		
    			$(v).each(function(index,dom){   
    				
						$("a#mLoc").click(function(){
							var tloc=$.trim($(this).text());
							if(tloc==dom.TLOC){
								$("div#sTheater").append("<label><input type='checkbox' id='tname' value='"+dom.TNAME+"'>"+dom.TNAME+"</label><br><br>");
								//$("label[for id='tdate'],input#tname").remove();
							}
							$("input#tname").click(function(){
								// $("input#tname").remove();
								mTheater=$("input:checkbox[id='tname']:checked").val();
								$("div#schedule").append("<label for='tdate'><input type='checkbox' id='tdate' name='"+dom.DATE+"' value='"+dom.DATE+"'>"+dom.DATE+"</label><br><br>");
								$("input#tdate").click(function(){
									mDate=$("input:checkbox[id='tdate']:checked").val();

									$("div#stime").append("<label><input type='checkbox' id ='time' name='"+dom.SCREEN+"' value='"+dom.TIME+"'>"+dom.SCREEN+"<h3>"+dom.TIME+"</h3><lable>");
									
									$("input#time").click(function(){
										 mTime=$("input:checkbox[id='time']:checked").val();
										 mScreen=$("input:checkbox[id='time']:checked").attr("name");
										 
										 if($("input[id='time']").is(":checked")){
											 var result=confirm('좌석을 선택하시겠습니까?');
											 if(result){ 
												document.location.href='SeatTest1.jsp?movie='+mTitle+"&theater="+mTheater+'&date='+mDate+"&screen="+mScreen+"&time="+mTime;
											 }else{
												return false;
											 }
										 }
										
									});
								});
							});	 //input click
									
				
						
 					});//a#mLoc Click
						/* $("input:checkbox[id='tname']:checked").val();
						$("input:checkbox[id='tdate']:checked").val();
						$("input:checkbox[id='time']:checked").val(); */
						// console.log(mtitle+" "+mTheater+" "+mData+" "+mTime); 
					
					
    			}); //each 

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
				<p  style="text-align: center;font-size: 20; "><h3>지역</h3></p>
		  		<a href="#" id="mLoc"><h3>서울</h3></a>
		  		<a href="#" id="mLoc"><h3>경기</h3></a>
		  		<a href="#" id="mLoc"><h3>충청/대전/세종</h3></a>
		  		<a href="#" id="mLoc"><h3>경상/대구/부산</h3></a>
		  		<a href="#" id="mLoc"><h3>전라/광주</h3></a>
		  		<a href="#" id="mLoc"><h3>강원</h3></a>
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