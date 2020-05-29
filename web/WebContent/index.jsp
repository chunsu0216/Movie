<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
   
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>영화예매</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">
    
    <style>
    body 
    {
       background-image:url("/web/img/background.jpg");
   }
    
    .header-area .delicious-main-menu .classy-navbar .classynav > ul > li > a 
    {
      text-transform: uppercase;
      padding: 12px 18px 11px;
      background-color: transparent;
      border-bottom: 3px solid transparent;
      line-height: 1;
      color: white;
      font-weight: 600; 
    }
    
    a, a:hover, a:focus 
    {
     -webkit-transition-duration: 500ms;
     transition-duration: 500ms;
     text-decoration: none;
     outline: 0 solid transparent;
     color: #000000;
     font-weight: 600;
     font-size: 14px;
     color: white; 
    }
    
    .header-area .top-header-area .top-social-info a {
      display: inline-block;
      color: #40ba37;
      font-size: 13px;
      margin-right: 30px; }
    </style>
 <script>
       $(function(){
          $("a#signup").click(function(){
             //window.open("/web/jsp/signup.jsp",'left=300,top=100,width=400,height=300')
             document.location.href='/web/jsp/signup.jsp';
          });
          $("a#signin").click(function(){
             //window.open("/web/jsp/signin.jsp",'left=300,top=100,width=400,height=300')
        	  document.location.href='/web/jsp/signin.jsp';
          });
       });
    
    </script>
</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <i class="circle-preloader"></i>
        <img src="img/core-img/salad.png" alt="">
    </div>

    <!-- Search Wrapper -->
    <div class="search-wrapper">
        <!-- Close Btn -->
        <div class="close-btn"><i class="fa fa-times" aria-hidden="true"></i></div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <form action="#" method="post">
                        <input type="search" name="search" placeholder="Type any keywords...">
                        <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

       <!--  Top Header Area -->
        <div class="top-header-area">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-between">
                <!--     Breaking News -->
                    <div class="col-12 col-sm-6">
                        <div class="breaking-news">
                            <div id="breakingNewsTicker" class="ticker">
                                <ul>
                                    <li><a href="#">Hello World!</a></li>
                                    <li><a href="#">Welcome to Colorlib Family.</a></li>
                                    <li><a href="#">Hello Delicious!</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
 
          
                    <!-- Top Social Info -->
                    <div class="col-12 col-sm-6">
                        <div class="top-social-info text-right">
                            <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                            <a href="#" id="signup" >회원가입</a><!--로그인시 hidden 처리되게  -->
                            <a href="#" id="signin">로그인</a><!--로그인시 '로그아웃'으로 바뀌게 하기  -->
                            <a href="#">고객센터</a>
                        </div>
                    </div>
                    
                    
                    
                </div>
            </div>
        </div>

        <!-- Navbar Area -->
        <div class="delicious-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="deliciousNav">

                        <!-- Logo -->
                        <a class="nav-brand" href="index.html"><img src="img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li class="active"><a href="index.html">Home</a></li>
                                    <li><a href="#">영화</a>
                                        <ul class="dropdown">
                                            <li><a href="index.html">홈</a></li>
                                            <li><a href="about.html">박스오피스</a></li>
                                            <li><a href="blog-post.html">상영예정작</a></li>
                                            <li><a href="receipe-post.html">무비파인더</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">예매</a>
                                      <ul class="dropdown">
                                            <li><a href="/web/jsp/SeatTest1.jsp">빠른예매</a></li>
                                            <li><a href="/web/jsp/seatEx2.jsp">상영시간표</a></li>
                                      </ul>
                                    </li>
                                    <li><a href="#">극장</a>
                                      <ul class="dropdown">
                                            <li><a href="index.html">전체극장</a></li>
                                            <li><a href="about.html">특별관</a></li>
                                      </ul>
                                    </li>
                                    <li><a href="receipe-post.html">이벤트</a>
                                     <ul class="dropdown">
                                            <li><a href="index.html">진행중 이벤트</a></li>
                                            <li><a href="about.html">지난 이벤트</a></li>
                                            <li><a href="about.html">당첨자 발표</a></li>
                                      </ul>
                                    </li>
                                    <li><a href="receipe-post.html">스토어</a></li>
                                    <li><a href="contact.html">혜택</a>
                                       <ul class="dropdown">
                                            <li><a href="index.html">메가 박스</a></li>
                                            <li><a href="about.html">제휴/할인</a></li>
                                            <li><a href="about.html">당첨자 발표</a></li>
                                      </ul>
                                    </li>
                                    <li><a href="/web/jsp/MyPage.jsp">마이페이지</a></li>
                                    <li><a href="#">상영시간표</a></li>
                                </ul>
               
                                <!-- Newsletter Form -->
                            <!--     <div class="search-btn">
                                    <i class="fa fa-search" aria-hidden="true"></i>
                                </div> -->
                            <!-- <div class="link-area">
                             <a href="#" class="header-icon-join" title="마이 페이지" style="margin-right: 10px;">마이페이지</a>
                             <a href="#" class="header-icon-ticket" title="상영시간표">상영시간표</a>
                            </div> -->

                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    


    <div width: 100%; height: 600px">
       <div class="contentArea">
         <div class="tab_box">
            <button type="button" class="tab_box_btn" sort="boxoRankList" name="">박스오피스</button>
         </div>
       </div>
       
        <!--영화 메인 포스터  시작-->
        <p class="">
        <div  style="width:1200px; height: 500px;  margin: 50px; text-align: center;  margin: 0 auto;">
             
           <!--좋아요버튼은 class="like" 예매버튼은 class="booking" -->
             
             <div style="overflow: hidden; position: relative; float: left; width: 230px; height: 350px; margin: 30px;"> 
                <a href="/web/jsp/MovieInfo.jsp?no=2" ><img alt="" src="/web/img/poster/poster_AvengersEndgame.jpg"></img></a>
                <input type="button" class="like" value="like1"><input type="button" class="booking" value="booking1">
             </div> 
           
            <div style="overflow: hidden; position: relative; float: left; width: 230px; height: 350px; margin: 30px;">
               <a href="/web/jsp/MovieInfo.jsp?no=21"><img alt="" src="/web/img/poster/poster_PrisonEscape.jpg" ></img></a>
               <input type="button" class="like" value="like2"><input type="button" class="booking" value="booking2">
            </div>
           
            <div style="overflow: hidden; position: relative; float: left; width: 230px; height: 350px; margin: 30px;">
               <a href="/web/jsp/MovieInfo.jsp?no=41"><img alt="" src="/web/img/poster/poster_TheGreatestShowman.jpg" ></img></a>
               <input type="button" class="like" value="like3"><input type="button" class="booking" value="booking3">
            </div>
           
            <div style="overflow: hidden; position: relative; float: left; width: 230px; height: 350px; margin: 30px; ">
               <a href="/web/jsp/MovieInfo.jsp?no=42"><img alt="" src="/web/img/poster/poster_TrollsWorldTour.jpg" ></img></a>
               <input type="button" class="like" value="like4"><input type="button" class="booking" value="booking4">
            </div>
         </div>
<!--         <div  style="text-align: center; width:1200px; height: 500px; border: 1px solid; margin: 50px; position: absolute; left: 50%; margin-left: -50%">
             
           좋아요버튼은 class="like" 예매버튼은 class="booking"
             
             <div style="border: 1px solid;  overflow: hidden; position: relative; float: left; width: 230px; height: 350px; margin: 30px;"> 
                <a href="/web/jsp/MovieInfo.jsp"><img alt="" src="/web/img/poster/poster_AvengersEndgame.jpg"></img></a>
                <input type="button" class="like" value="like1"><input type="button" class="booking" value="booking1">
             </div> 
           
            <div style="border: 1px solid;  overflow: hidden; position: relative; float: left; width: 230px; height: 350px; margin: 30px;">
               <a href="#"><img alt="" src="/web/img/poster/poster_PrisonEscape.jpg" ></img></a>
               <input type="button" class="like" value="like2"><input type="button" class="booking" value="booking2">
            </div>
           
            <div style="border: 1px solid;  overflow: hidden; position: relative; float: left; width: 230px; height: 350px; margin: 30px;">
               <a href="#"><img alt="" src="/web/img/poster/poster_TheGreatestShowman.jpg" ></img></a>
               <input type="button" class="like" value="like3"><input type="button" class="booking" value="booking3">
            </div>
           
            <div style="border: 1px solid;  overflow: hidden; position: relative; float: left; width: 230px; height: 350px; margin: 30px; ">
               <a href="#"><img alt="" src="/web/img/poster/poster_TrollsWorldTour.jpg" ></img></a>
               <input type="button" class="like" value="like4"><input type="button" class="booking" value="booking4">
            </div>
         </div> -->
         </p>
        
      <!--영화 메인 포스터 끝  -->
      
   </div>
      <!--검색 바 시작-->
         <div class="search-link">
      <div class="cell">
         <div class="search">
         <input type="text" placeholder="영화명을 입력해 주세요" title="영화 검색" class="input-text" id="movieName">
         <button type="button" class="btn" id="btnSearch"><i class="iconset ico-search-w"></i> 검색</button>
         </div>
      </div>

         <div class="cell"><a href="#" title="상영시간표 보기"><i class="iconset ico-schedule-main"></i> 상영시간표</a></div>
         <div class="cell"><a href="#" title="박스오피스 보기"><i class="iconset ico-boxoffice-main"></i> 박스오피스</a></div>
         <div class="cell"><a href="#" title="빠른예매 보기"><i class="iconset ico-quick-reserve-main"></i> 빠른예매</a></div>
      </div>
      <!--검색바 끝 -->
      
      

    <!-- ##### Footer Area Start ##### -->

    <!-- ##### All Javascript Files ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
</body>

</html>