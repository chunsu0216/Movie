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
    <title>��ȭ����</title>

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
                            <a href="#" id="signup" >ȸ������</a><!--�α��ν� hidden ó���ǰ�  -->
                            <a href="#" id="signin">�α���</a><!--�α��ν� '�α׾ƿ�'���� �ٲ�� �ϱ�  -->
                            <a href="#">������</a>
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
                                    <li><a href="#">��ȭ</a>
                                        <ul class="dropdown">
                                            <li><a href="index.html">Ȩ</a></li>
                                            <li><a href="about.html">�ڽ����ǽ�</a></li>
                                            <li><a href="blog-post.html">�󿵿�����</a></li>
                                            <li><a href="receipe-post.html">�������δ�</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">����</a>
                                      <ul class="dropdown">
                                            <li><a href="/web/jsp/SeatTest1.jsp">��������</a></li>
                                            <li><a href="/web/jsp/seatEx2.jsp">�󿵽ð�ǥ</a></li>
                                      </ul>
                                    </li>
                                    <li><a href="#">����</a>
                                      <ul class="dropdown">
                                            <li><a href="index.html">��ü����</a></li>
                                            <li><a href="about.html">Ư����</a></li>
                                      </ul>
                                    </li>
                                    <li><a href="receipe-post.html">�̺�Ʈ</a>
                                     <ul class="dropdown">
                                            <li><a href="index.html">������ �̺�Ʈ</a></li>
                                            <li><a href="about.html">���� �̺�Ʈ</a></li>
                                            <li><a href="about.html">��÷�� ��ǥ</a></li>
                                      </ul>
                                    </li>
                                    <li><a href="receipe-post.html">�����</a></li>
                                    <li><a href="contact.html">����</a>
                                       <ul class="dropdown">
                                            <li><a href="index.html">�ް� �ڽ�</a></li>
                                            <li><a href="about.html">����/����</a></li>
                                            <li><a href="about.html">��÷�� ��ǥ</a></li>
                                      </ul>
                                    </li>
                                    <li><a href="/web/jsp/MyPage.jsp">����������</a></li>
                                    <li><a href="#">�󿵽ð�ǥ</a></li>
                                </ul>
               
                                <!-- Newsletter Form -->
                            <!--     <div class="search-btn">
                                    <i class="fa fa-search" aria-hidden="true"></i>
                                </div> -->
                            <!-- <div class="link-area">
                             <a href="#" class="header-icon-join" title="���� ������" style="margin-right: 10px;">����������</a>
                             <a href="#" class="header-icon-ticket" title="�󿵽ð�ǥ">�󿵽ð�ǥ</a>
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
            <button type="button" class="tab_box_btn" sort="boxoRankList" name="">�ڽ����ǽ�</button>
         </div>
       </div>
       
        <!--��ȭ ���� ������  ����-->
        <p class="">
        <div  style="width:1200px; height: 500px;  margin: 50px; text-align: center;  margin: 0 auto;">
             
           <!--���ƿ��ư�� class="like" ���Ź�ư�� class="booking" -->
             
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
             
           ���ƿ��ư�� class="like" ���Ź�ư�� class="booking"
             
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
        
      <!--��ȭ ���� ������ ��  -->
      
   </div>
      <!--�˻� �� ����-->
         <div class="search-link">
      <div class="cell">
         <div class="search">
         <input type="text" placeholder="��ȭ���� �Է��� �ּ���" title="��ȭ �˻�" class="input-text" id="movieName">
         <button type="button" class="btn" id="btnSearch"><i class="iconset ico-search-w"></i> �˻�</button>
         </div>
      </div>

         <div class="cell"><a href="#" title="�󿵽ð�ǥ ����"><i class="iconset ico-schedule-main"></i> �󿵽ð�ǥ</a></div>
         <div class="cell"><a href="#" title="�ڽ����ǽ� ����"><i class="iconset ico-boxoffice-main"></i> �ڽ����ǽ�</a></div>
         <div class="cell"><a href="#" title="�������� ����"><i class="iconset ico-quick-reserve-main"></i> ��������</a></div>
      </div>
      <!--�˻��� �� -->
      
      

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