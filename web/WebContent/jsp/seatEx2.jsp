<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Datepicker - Restrict date range</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
@charset "utf-8";
.reservation{
	position: absolute;
	width:1600px;
	height:800px;
	right:0;
	left:0;
	top:0;
	bottom:0;
	margin: auto;
	border: 1px solid;
	
}
.vertical-menu {
  width: 350px;
  height:700px;
  float: left;
  border: 1px solid;
  overflow: auto;
}

.vertical-menu a {
  background-color: #eee;
  color: black;
  display: block;
  padding: 12px;
  text-decoration: none;
}

.vertical-menu a:hover {
  background-color: #ccc;
}

.vertical-menu a.active {
  background-color: #4CAF50;
  color: white;
}
</style>

<script type="text/javascript">
$( function() {
    $( "#datepicker" ).datepicker({ minDate: -20, maxDate: "+1M +10D" });
  } );
</script>
</head>
<body>

<h1>Vertical Menu</h1>
<div class="reservation">
	<div class="vertical-menu">
	  <a href="#" class="active">영화 선택</a>
	  <a href="#">Link 1</a>
	  <a href="#">Link 2</a>
	  <a href="#">Link 3</a>
	  <a href="#">Link 4</a>
	
	</div>
	<div class="vertical-menu">
	  <a href="#" class="active">극장 선택</a>
	  <a href="#">Link 1</a>
	  <a href="#">Link 2</a>
	  <a href="#">Link 3</a>
	  <a href="#">Link 4</a>
	</div>
	<div class="vertical-menu">
	  <a href="#" class="active">관람일 선택</a>
	 	 <div style="overflow:hidden;">
    		<div class="form-group">
        	<div class="row">
	            <div class="col-md-8">
	                <div id="datetimepicker12"></div>
	            </div>
        	</div>
    </div>
  
</div>
	</div>
	<div class="vertical-menu">
	  <a href="#" class="active">시간 선택</a>
	  <p>Date: <input type="text" id="datepicker"></p>
	</div>
</div>