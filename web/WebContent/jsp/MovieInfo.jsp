<%@page import="movie.com.model.MovieBean"%>
<%@page import="movie.com.dao.MovieDao"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="EUC-KR">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style type="text/css">
  #contents.contents_movie_detail {
    padding-top: 35px;
   }
   #contents {
    width: 980px;
    margin: 0 auto;
    padding: 50px 0 0 0;
   }
   .hidden {
    overflow: hidden;
    position: absolute !important;
    width: 1px;
    height: 1px;
    clip: rect(1px, 1px, 1px, 1px);
   }
   h1, h2, h3, h4, h5, h6, address, caption, em, th {
    font-style: normal;
    font-weight: normal;
   }
   body, h1, h2, h3, h4, h5, h6, fieldset, ul, ol, dl, dt, dd, p, figure {
    margin: 0;
    padding: 0;
   }
   h2 {
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
   }
   h3 {
    display: block;
    font-size: 1.17em;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
   }
   .detail_top_wrap {
    position: relative;
    min-height: 240px;
    padding-left: 245px;
    margin-bottom: 15px;
   }
   .detail_top_wrap .poster_info {
    position: absolute;
    top: -66px;
    left: 0;
    width: 205px;
    height: 305px;
    z-index: 1;
    } 
    .detail_top_wrap .poster_info {
    position: absolute;
    top: -66px;
    left: 0;
    width: 205px;
    height: 305px;
    z-index: 1;
   }
   .detail_top_wrap .poster_info img {
    width: 100%;
    border-radius: 4px;
   }
   img {
    border: none;
    vertical-align: top;
   }
   div {
    display: block;
   }
   .contents_movie_detail .tit_info {
    display: block;
    margin-bottom: 20px;
    font-size: 15px;
   }
   .detail_top_wrap .tit_info {
    margin: -2px 0 15px 0;
    font-size: 26px;
   }
   .detail_top_wrap .ic_grade {
    width: 36px;
    height: 36px;
    margin: -3px 4px 0 0;
    line-height: 36px;
    vertical-align: top;
   }
   .ic_grade.gr_15 {
    background-color: #FFC134;
   }
   .ic_grade {
    display: inline-block;
    width: 22px;
    height: 22px;
    line-height: 22px;
    border-radius: 50%;
    font-size: 0;
    text-align: center;
    vertical-align: middle;
   }
   .ic_grade.gr_15:before {
    content: "15";
    font-family: "Roboto";
   }
   .ic_grade:before {
    margin-left: -1px;
     font-size: 13px;
    font-weight: bold;
    color: #FFF;
    white-space: nowrap;
   }
   .contents_movie_detail .tit_info strong {
    font-size: 26px;
   }

   strong {
    font-weight: bold;
   }
   .detail_top_wrap .detail_info1 {
    overflow: hidden;
    padding-bottom: 17px;
    margin-bottom: 20px;
    font-size: 15px;
    border-bottom: 1px solid #ddd;
   }
   ul, ol {
       list-style: none;
   }
   body, h1, h2, h3, h4, h5, h6, fieldset, ul, ol, dl, dt, dd, p, figure {
       margin: 0;
       padding: 0;
   }
   ul {
       display: block;
       list-style-type: disc;
       margin-block-start: 1em;
       margin-block-end: 1em;
       margin-inline-start: 0px;
       margin-inline-end: 0px;
       padding-inline-start: 40px;
   }


/* 영화/상세 ========================================================================================= */
/* 상단영화정보 ============================== */
.detail_top_wrap {position:relative; min-height:240px; padding-left:245px; margin-bottom:15px;}
.detail_top_wrap .poster_info {position:absolute; top:-66px; left:0; width:205px; height:305px; z-index:1}
.detail_top_wrap .poster_info img {width:100%; border-radius:4px;}
.detail_top_wrap .tit_info {margin:-2px 0 15px 0; font-size:26px;}
.detail_top_wrap .ic_grade {width:36px; height:36px; margin:-3px 4px 0 0; line-height:36px; vertical-align:top;}
.detail_top_wrap .ic_grade:before {font-size:13px;}
.detail_top_wrap .detail_info1 {overflow:hidden; padding-bottom:17px; margin-bottom:20px; font-size:15px; border-bottom:1px solid #ddd}
.detail_top_wrap .detail_info1 > li {float:left; margin-right:25px;}
.detail_top_wrap .detail_info1 > li > em {margin-right:10px; vertical-align:middle;}
.detail_top_wrap .detail_info1 > li strong {font-size:20px; font-family:'Roboto', "Noto Sans KR"; vertical-align:middle;}
.detail_top_wrap .detail_info1 > li strong em {font-family:"Noto Sans KR";}
.detail_top_wrap .detail_info1 > li strong .date_info {font-size:14px; color:#666}
.detail_top_wrap .detail_info2 {margin-bottom:17px; font-size:13px;}
.detail_top_wrap .detail_info2 > li {margin-top:11px;}
.detail_top_wrap .detail_info2 > li:first-child {margin-top:0}
.detail_top_wrap .detail_info2 > li em {margin-right:10px;}
.detail_top_wrap .detail_info2 > li strong {color:#666;}
.detail_top_wrap .detail_info2 .sub_info1 strong > em {position:relative; padding-left:15px;}
.detail_top_wrap .detail_info2 .sub_info1 strong > em:first-child {padding-left:0;}
.detail_top_wrap .detail_info2 .sub_info1 strong > em:before {content:''; display:block; position:absolute; top:5px; left:0; width:1px; height:9px; background:#ddd;}
.detail_top_wrap .detail_info2 .sub_info1 strong > em:first-child:before {display:none;}
.detail_top_wrap .detail_info2 .sub_info2 .line_type a,
.detail_top_wrap .detail_info2 .sub_info3 .line_type a {border-bottom:1px solid #666; color:#666;}
.detail_top_wrap .spacial_hall_info {width:400px;}
.detail_top_wrap .spacial_hall_info span {display:inline-block; margin-bottom:10px;}
.detail_top_wrap .spacial_hall_info span img {height:20px;}
/* aside */
.movie_detail_aside_menu {position:absolute; bottom:27px; right:0}
.movie_detail_aside_menu ul:after {content:''; display:block; clear:both;}
.movie_detail_aside_menu ul > li {float:left; margin-left:32px;}
.movie_detail_aside_menu ul > li:first-child {margin-left:0}
.movie_detail_aside_menu ul > li .btn_ic_share {display:block;position:relative;width:28px;height:28px;padding:0 10px;/* background:url("/web/img/share.png") no-repeat 50% 0; */border:0;}
.movie_detail_aside_menu ul > li .btn_ic_share em {overflow:hidden; position:absolute !important; width:1px; height:1px; clip:rect(1px, 1px, 1px, 1px);}
.movie_detail_aside_menu ul > li .btn_ic_wish {display:block; position:relative; width:39px; height:28px; padding-left:10px; background:url("../../Content/images/icon/heart_bdr_26_off.png") no-repeat 10px 0; border:none;}
.movie_detail_aside_menu ul > li .btn_ic_wish strong {overflow:hidden; position:absolute !important; width:1px; height:1px; clip:rect(1px, 1px, 1px, 1px);}
.movie_detail_aside_menu ul > li .btn_ic_wish em {display:block; min-width:20px; margin-left:0px; position:absolute; top:5px; left:50%; padding:1px 0; background:#fff; font-size:11px; line-height:11px; font-family:'Roboto', "Noto Sans KR"; text-align:center;}
.movie_detail_aside_menu ul > li .btn_ic_wish em.max:after {content:'+';}
.movie_detail_aside_menu ul > li .btn_ic_wish.active {background:url("../../Content/images/icon/heart_bdr_26_on.png") no-repeat 10px 0; color:#FF243E}
.movie_detail_aside_menu ul > li.area_reserve {margin-top:-15px;}
.movie_detail_aside_menu ul > li.area_reserve .btn_col1 {min-width:170px; font-size:18px;}
/********************************************* */


#review {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 97%;
}

#review td, #review th {
  border: 1px solid #ddd;
  padding: 8px;
}

#review tr:nth-child(even){background-color: #f2f2f2;}

#review tr:hover {background-color: #ddd;}

#review th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}

* {
  box-sizing: border-box;
}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the content */
.content {
  margin-left: 0px;
  padding-left: 20px;
}
</style>
</head>
<body>
<%
   Date nowTime = new Date();
   SimpleDateFormat sf = new SimpleDateFormat("yy/MM/dd a hh:mm");
%>


<%
   response.setCharacterEncoding("EUC-KR");
   int no=41;
   MovieBean bean=null;
    bean=(MovieBean)MovieDao.movieInfo(no); 
%>

<div id="contents" class="contents_movie_detail" >
   <h2 class="hidden">영화</h2>
   <h3 class="hidden">영화 상세정보</h3>
   
   <div class="detail_top_wrap">
      <div class="poster_info">
         <img src="/web/img/poster/poster_AvengersEndgame.jpg">
      </div>
      <div class="tit_info">
         <span class="ic_grade gr_15">15세이상관람가 </span> 
         <strong><%=bean.getMovie_title() %></strong>
      </div>
      <ul class="detail_info1">
         <li class="sub_info1" style="cursor: pointer;">
            <em>관람객 평점</em>
            <strong class="txt_ic_score ty2">
               <em>평점</em>
                  <strong>7.9 </strong>
            </strong>
         </li>
         <li class="sub_info2">
            <em>예매율 4위 </em>
            <strong>4.7% </strong>
         </li>
         <li class="sub_info3">
            <em>누적관객수</em>
            <strong>58,363 <em>명</em> 
               <span class="date_info"> </span>
            </strong>
         </li>
      </ul>
      <ul class="detail_info2">
         <li class="sub_info1">
            <em>장르</em>
            <strong>
               <em>멜로/로맨스 / 미국</em>
               <em> <%=bean.getOpendate() %>개봉</em>
               <em class="time_info"><%=bean.getRunningtime() %>분</em>
            </strong>
         </li>
         <li class="sub_info2">
            <em>감독</em>
            <strong class="line_type"><a href="#"><%=bean.getDirector() %></a></strong>
         </li>
         <li class="sub_info3">
            <em>출연</em>
            <strong class="line_type">
               <a href="#"><%=bean.getActor() %></a><!-- , <a href="#">엘르 패닝</a>, <a href="#">셀레나 고메즈</a>, <a href="#">주드 로</a>, <a href="#">디에고 루나</a> -->
            </strong>
         </li>
      </ul>
      <!-- <div class="movie_detail_aside_menu">
         <ul>
            <li>
               <button type="button" class="btn_ic_share" >
                  <img alt="" src="/web/img/share.png" width="20" height="20"><em>공유하기</em>
               </button>
               <div id="layerShare" class="layer_wrap layer_share">
               </div>
            </li>
            <li>
               <button type="button" id="mylikemovie" class="btn_ic_wish">
                  <strong>좋아요</strong>
                     <em>203</em>
               </button>
            </li>
            <li class="area_reserve">
               <a href="https://www.lottecinema.co.kr/NLCHS/ticketing?movieCd=15772&amp;movieName=레이니 데이 인 뉴욕" class="btn_col1 ty7 rnd">예매하기</a>
            </li>
         </ul>
      </div> -->
   </div>
</div>
<div class="container">

  <br><br><br>
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">영화정보</a></li> 
    <li><a data-toggle="tab" href="#menu1">예고편/스틸컷</a></li>
    <li><a data-toggle="tab" href="#menu2">평점 및 관람평</a></li>
  </ul>
   
  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <%=bean.getStory() %>
      
    </div>
    <div id="menu1" class="tab-pane fade">
     <%--  <iframe width="1131" height="400" src="<%=bean.getTrailer() %>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> --%>
 		 <iframe width="1131" height="400" src="https://www.youtube.com/embed/xUDhdCsLkjU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
     
    </div>
    <div id="menu2" class="tab-pane fade">





<div class="content">

  <table id="review">
  <tr>
    <th>Review#</th>
    <th>Id</th>
    <th>Date</th>
    <th>Review</th>
    <th>Rating</th>
  </tr>
  
  <tr id="content" lang="${i.no}" >  <!-- style="display:none;" -->
  <td><input type="checkbox" id="${i.id}"  name="nt" value="${i.no}" /> ${cnt.count}</td>
    <td></td>
    <td><%=sf.format(nowTime)%></td>
    <td><input type="text" value="review" id="review" /></td>
    <td><input type="text" value="rating" id="rating" /></td>
    
  </tr>
  
  
<c:forEach var="i" items="${review}" varStatus="cnt">
  <tr id="content" lang="${i.no}">
  <td><input type="checkbox" id="${i.no}"  name="nt" value="${i.no}" /> ${cnt.count}</td>
    <td>${i.id }</td>
    <td>${i.regdate}</td>
    <td>${i.review}</td>
    <td>${i.rating}</td>
    
  </tr>
</c:forEach>

   <span class="buttonFuc"><a href="javascript:writeReview()">글쓰기</a></span>
   <input type="button" value="삭제">
</div> -
  
    </div>
  
  </div>
</div>

</body>
</html>