<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="../images/icons/favicon.ico"/>
<link rel="stylesheet" type="text/css" href="../vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="../fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<link rel="stylesheet" type="text/css" href="../vendor/animate/animate.css">
<link rel="stylesheet" type="text/css" href="../vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css" href="../vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css" href="../vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css" href="../vendor/daterangepicker/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="../css/util.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript" src="/web/js/sign.js" charset="UTF-8"></script>
<script type="text/javascript">
</script>
<title>�α���</title>
</head>
<body>
   <div class="limiter">
      <div class="container-login100">
         <div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
            <form class="login100-form validate-form flex-sb flex-w" method="post" action="loginCheck.jsp">
               <span class="login100-form-title p-b-32">
                  Account Login
               </span>

               <span class="txt1 p-b-11">
                  Username
               </span>
               <div class="wrap-input100 validate-input m-b-36" data-validate = "Username is required">
                  <input class="input100" type="text" name="idCk" id="idCk" >
                  <span class="focus-input100"></span>
               </div>
               
               <span class="txt1 p-b-11">
                  Password
               </span>
               <div class="wrap-input100 validate-input m-b-12" data-validate = "Password is required">
                  <span class="btn-show-pass">
                     <i class="fa fa-eye"></i>
                  </span>
                  <input class="input100" type="password" name="passwordCk" id="passwordCk" >
                  <span class="focus-input100"></span>
               </div>
               
               <div class="flex-sb-m w-full p-b-48">
                  <div class="contact100-form-checkbox">
                     <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                     <label class="label-checkbox100" for="ckb1">
                        Remember me
                     </label>
                  </div>

                  <div>
                     <a href="" class="txt3">
                        Forgot Password?
                     </a>
                  </div>
               </div>

               <div class="container-login100-form-btn">
                  <button class="login100-form-btn" id="loginCk" name="loginCk">
                     Login
                  </button>
                  <!-- <a href="signup.jsp"> -->
                  <!-- <button class="login100-form-btn" id="signup" name="signup" >
                     signup
                  </button> -->
                  <!-- </a> -->
               </div>

            </form>
         </div>
      </div>
   </div>
   

   <div id="dropDownSelect1"></div>
</body>
</html>