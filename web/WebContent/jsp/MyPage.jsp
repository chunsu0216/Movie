<%@page import="java.util.HashMap"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="imagetoolbar" content="no" />
<link href="../css/contents.css" rel="stylesheet" type="text/css" />

<style>
	th{
		text-align: center;
	}
</style>
<script type="text/javascript">
	$(function(){
		$("table#reservationMovie").hide();
		$("tbody#td").attr('style', "display:'none';");
		
		$("input#movieSerach").click(function(){
			if($("input#serachData").val().length==0){
				alert("예매번호를 입력하세요")
				
			}
			if($("input#serachData").val()==$("td#num").text()){
				
				$("table#reservationMovie").show();
			}
		});
	});
</script>
</head>
<body>


<div class="container">
  <h2 style="font-style: italic;" >마이페이지</h2>
  <table>
  	<thead>
  		<b style="font-size: 20px">누구누구님</b>   아이디
  		
  	</thead>
  </table>
  <ul class="nav nav-tabs">
    <li><a data-toggle="tab" href="#menu1">내정보</a></li>
    <li><a data-toggle="tab" href="#menu2">예매내역</a></li>
    <li><a data-toggle="tab" href="#menu3">내 리뷰</a></li>
    <li><a data-toggle="tab" href="#menu4">티켓출력</a></li>
  </ul>

  <div class="tab-content">
    <div id="menu1" class="tab-pane fade" >
       <table>
      	<tbody >
      		<tr>
      			<td>이름:</td>
      		</tr> 
      		<tr>
      			<td>아이디:</td>
      		</tr>
      		<tr>  
      			<td>전화번호:</td>
      		</tr>
      		<tr>  
      			<td>주소:</td>
      		</tr>
      		<tr>  
      			<td>생년원일:</td> 
      		</tr>
      	</tbody>
      </table>
    </div>
    <div id="menu2" class="tab-pane fade">
      <div id="container">
			<div id="contentsWrap" class="contentsWrap">
				<div class="contents">
					<form action="" method="post" name="searchFrm">
					<table class="bbsWrite mgb35">
						<tbody>
						<tr>
							<td>
								<span>검색날짜<input type="date">~<input type="date"><input type="button" value="조회"></span>
							</td>
						</tr>
						</tbody>
					</table>
					</form>
					<table class="bbsList">
						<colgroup>
						
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							
						</colgroup>
						<thead>
						<tr>
							<th scope="col">예매번호</th>
							<th scope="col">예매날짜</th>
							<th scope="col">상영관번호</th>
							<th scope="col">좌석</th>
						</tr>
						</thead>	
						<tbody>
						
						</tbody>
					</table>

					<div class="paging">
						<a href="#"><img src="/web/img/button/btn_first.gif" alt="처음페이지" /></a>
						<a href="#"><img src="/web/img/button/btn_prev.gif" alt="이전"></a>
						<a href="#">1</a>
						<a href="#"><img src="/web/img/button/btn_next.gif" alt="다음" /></a>
						<a href="#"><img src="/web/img/button/btn_last.gif" alt="마지막페이지" /></a>
						<span>
					
						</span>	
				
					</div>
				</div>
			</div>
		</div>
      
    </div>
    <div id="menu3" class="tab-pane fade">
      <div id="container">
			<div id="contentsWrap" class="contentsWrap">
				<div class="contents">
					<table>
						<thead>
							<tr>
								<th><span style="float: right;"><input style="" type="button" value="리뷰쓰기"></span> </th>
							</tr>
						</thead>
					</table>
					<table class="bbsList">
						<colgroup>
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
						</colgroup>
						
						<thead>
						
						<tr>
							<th scope="col">영화제목</th>
							<th scope="col">영화감상평</th>
							<th scope="col">평점</th>
							<th scope="col">날짜</th>
						</tr>
						</thead>	
						<tbody>
							<tr>
								<td><</td>
								<td>늑대의시간</td>
								<td>늑대의시간</td>
								<td>늑대의시간</td>

							</tr>
							
						</tbody>
					</table>

					<div class="paging">
					
						<a href="#"><img src="/web/img/button/btn_first.gif" alt="처음페이지" /></a>
						<a href="#"><img src="/web/img/button/btn_prev.gif" alt="이전"/></a>
						<a href="#">1</a>
						<a href="#"><img src="/web/img/button/btn_next.gif" alt="다음" /></a>
						<a href="#"><img src="/web/img/button/btn_last.gif" alt="마지막페이지" /></a>
						<span>
					
						</span>	
				
					</div>
				</div>
			</div>
		</div>
    </div>
    <div id="menu4" class="tab-pane fade">
      <div id="container">
			<div id="contentsWrap" class="contentsWrap">
				<div class="contents">
					<table>
						<thead>
							<tr>
								<td>예매번호조회<input type="text" id="serachData"><input type="button" id="movieSerach" value="조회"></td>
							</tr>
						</thead>
					</table>
					<table class="bbsList" id="reservationMovie">
						<colgroup>
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							
						</colgroup>
						<thead>
						<tr>
							<th scope="col">예매번호</th>
							<th scope="col">영화제목</th>
							<th scope="col">상영관번호</th>
							<th scope="col">상영시간</th>
							<th scope="col">좌석번호</th>
							<th scope="col">출력</th>
						</tr>
						</thead>	
						<tbody>
							<tr>
								<td id="num">1122</td>
								<td>늑대의시간</td>
								<td>1관</td>
								<td>11:40~13:20</td>
								<td>A3</td>
								<td><input type="button" value="출력하기" id="print"></td>
							</tr>
						</tbody>
					</table>

					<!-- <div class="paging">
					
						<a href="#"><img src="../img/button/btn_first.gif" alt="처음페이지" /></a>
						<a href="#"><img src="../img/button/btn_prev.gif" alt="이전"/></a>
						<a href="#">1</a>
						<a href="#"><img src="../img/button/btn_next.gif" alt="다음" /></a>
						<a href="#"><img src="../img/button/btn_last.gif" alt="마지막페이지" /></a>
						<span>
					
						</span>	
				
					</div> -->
				</div>
			</div>
		</div>
    </div>
    </div>
  </div>

</body>
</html>