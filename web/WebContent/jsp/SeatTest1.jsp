<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<style type="text/css">
	div button{
		position: absolute;
		text-align: center;
	}
	
	button.people{
		position: absolute;
		top: 20px;
		width: 30px;
	}
	
	 button#seat{
		width: 30px;
	}
	div#srow button{
		left: 550px; 
		width: 20px; 
		border:1px solid #ccc; 
		background: #FFFFFF;
		text-align: center;
		
	}
</style>
<script type="text/javascript">

$(function(){
	//제약조건
	
	var clickCount=0;//클릭한 좌석 기억
	var array=new Array();
	var state=false;
	
	 $("button#seat").each(function(index,dom){
		 var cnt = 0;
			$(dom).click(function(){
				
			//제약조건 : 인원 수를 선택하지 않고 좌석을 선택했을때 alert
		 	if(!state ){
					alert('관람하실 인원을 먼저 선택해주세요.');
				} 
			//버튼을 클릭 or 해제했을 때 이벤트 
				cnt++;
				if(cnt%2 == 0){
					$(this).css("background-color","");
					clickCount--;
					array.splice(array.indexOf($(this).attr("title")), 1);
					console.log(array);
				}else if(cnt%2!=0 && cnt!=0){
					$(this).css("background-color","orange");
					clickCount++;
					array.push($(this).attr("title"));
				}
			});
		 
	 });//button.seat
	  
	 //reset버튼을 클릭했을 때 이벤트
	  $("button#reset").click(function(){
			$("button.people").prop("disabled",false);
			$("button.people").css("background","");
			$("button#seat").css("background","");
			clickCount=0;
			state=false;
			$("button#seat").removeClass("selected");
			$("button#seat").prop("disabled",false);
			
		});
	 
	 
		$("button.people").each(function(index,dom){
			$(dom).click(function(){
				state=true;
				$(this).css("background-color","red")
				$("button.people").prop("disabled",true);
				
				switch ($(this).val()) {
				case "1":
						$("button#seat").click(function(){
							if(clickCount==1){
								$("button#seat").prop("disabled",true);
								//alert(clickCount);
								setTimeout(function(){ alert("좌석 선택이 완료됐습니다."); }, 500);
							}  
						});
					break;
				case "2":
					$("button#seat").click(function(){
						if(clickCount==2){
							$("button#seat").prop("disabled",true);
							//alert(clickCount);
							setTimeout(function(){ alert("좌석 선택이 완료됐습니다."); }, 500);
						}  
					});
					break;
				case "3":
					$("button#seat").click(function(){
						if(clickCount==3){
							$("button#seat").prop("disabled",true);
							//alert(clickCount);
							setTimeout(function(){ alert("좌석 선택이 완료됐습니다."); }, 500);
						}  
					});
					break;
				case "4":
					$("button#seat").click(function(){
						if(clickCount==4){
							$("button#seat").prop("disabled",true);
							//alert(clickCount);
							setTimeout(function(){ alert("좌석 선택이 완료됐습니다."); }, 500);
						}  
					});
					break;
				case "5":
					$("button#seat").click(function(){
						if(clickCount==5){
							$("button#seat").prop("disabled",true);
							alert(clickCount);
							setTimeout(function(){ alert("좌석 선택이 완료됐습니다."); }, 500);
						}  
					});
					break;

				default:
					break;
				}
			})
		});  //
		$("input#submit").click(function() {
			alert(array);
		});
});
</script>
</head>
<body>	
	<form action="">
		<div> 
			<button id="reset" value="0"  style="left: 500px;  top: 20px; width: 50px;">reset</button>
			<button class="people" value="1" style="left: 620px;">1</button>
			<button class="people" value="2" style="left: 650px;">2</button>
			<button class="people" value="3" style="left: 680px;">3</button>
			<button class="people" value="4" style="left: 710px;">4</button>
			<button class="people" value="5" style="left: 740px;">5</button>
		</div> 
		<div style="border: 1px solid; text-align: center; position: absolute; left: 550px; top: 100px; width: 380px; background: gray;">스크린</div>
		
		<div id="srow">
			<button type="button" title="A행" disabled="disabled" style=" top: 150px;">A</button>
			<button type="button" title="B행" disabled="disabled" style=" top: 170px;">B</button>
			<button type="button" title="C행" disabled="disabled" style=" top: 190px; ">C</button>
			<button type="button" title="D행" disabled="disabled" style=" top: 210px; ">D</button>
			<button type="button" title="E행" disabled="disabled" style=" top: 260px; ">E</button>
			<button type="button" title="F행" disabled="disabled" style=" top: 280px; ">F</button>
			<button type="button" title="G행" disabled="disabled" style=" top: 300px; ">G</button>
			<button type="button" title="H행" disabled="disabled" style=" top: 320px; ">H</button>
		</div>
		
		<div id="dseat1"> 
			<button type="button" title="A1" id="seat" style=" left: 600px; top: 150px; ">1</button>
			<button type="button" title="A2" id="seat" style=" left: 630px; top: 150px; ">2</button>
			<button type="button" title="A3" id="seat" style=" left: 660px; top: 150px; ">3</button>
			<button type="button" title="A4" id="seat" style=" left: 690px; top: 150px; ">4</button>
			<button type="button" title="A5" id="seat" style=" left: 720px; top: 150px; ">5</button>
			<button type="button" title="A6" id="seat" style=" left: 780px; top: 150px; ">6</button>
			<button type="button" title="A7" id="seat" style=" left: 810px; top: 150px; ">7</button>
			<button type="button" title="A8" id="seat" style=" left: 840px; top: 150px; ">8</button>
			<button type="button" title="A9" id="seat" style=" left: 870px; top: 150px; ">9</button>
			<button type="button" title="A10" id="seat" style=" left: 900px; top: 150px; ">10</button>
			
			<button type="button" title="B1" id="seat" style=" left: 600px; top: 170px; ">1</button>
			<button type="button" title="B2" id="seat" style=" left: 630px; top: 170px; ">2</button>
			<button type="button" title="B3" id="seat" style=" left: 660px; top: 170px; ">3</button>
			<button type="button" title="B4" id="seat" style=" left: 690px; top: 170px; ">4</button>
			<button type="button" title="B5" id="seat" style=" left: 720px; top: 170px; ">5</button>
			<button type="button" title="B6" id="seat" style=" left: 780px; top: 170px; ">6</button>
			<button type="button" title="B7" id="seat" style=" left: 810px; top: 170px; ">7</button>
			<button type="button" title="B8" id="seat" style=" left: 840px; top: 170px; ">8</button>
			<button type="button" title="B9" id="seat" style=" left: 870px; top: 170px; ">9</button>
			<button type="button" title="B10" id="seat" style=" left: 900px; top: 170px; ">10</button>
			
			<button type="button" title="C1" id="seat" style=" left: 600px; top: 190px; ">1</button>
			<button type="button" title="C2" id="seat" style=" left: 630px; top: 190px; ">2</button>
			<button type="button" title="C3" id="seat" style=" left: 660px; top: 190px; ">3</button>
			<button type="button" title="C4" id="seat" style=" left: 690px; top: 190px; ">4</button>
			<button type="button" title="C5" id="seat" style=" left: 720px; top: 190px; ">5</button>
			<button type="button" title="C6" id="seat" style=" left: 780px; top: 190px; ">6</button>
			<button type="button" title="C7" id="seat" style=" left: 810px; top: 190px; ">7</button>
			<button type="button" title="C8" id="seat" style=" left: 840px; top: 190px; ">8</button>
			<button type="button" title="C9" id="seat" style=" left: 870px; top: 190px; ">9</button>
			<button type="button" title="C10" id="seat" style=" left: 900px; top: 190px; ">10</button>
			
			<button type="button" title="D1" id="seat" style=" left: 600px; top: 210px;">1</button>
			<button type="button" title="D2" id="seat" style=" left: 630px; top: 210px;">2</button>
			<button type="button" title="D3" id="seat" style=" left: 660px; top: 210px;">3</button>
			<button type="button" title="D4" id="seat" style=" left: 690px; top: 210px;">4</button>
			<button type="button" title="D5" id="seat" style=" left: 720px; top: 210px;">5</button>
			<button type="button" title="D6" id="seat" style=" left: 780px; top: 210px;">6</button>
			<button type="button" title="D7" id="seat" style=" left: 810px; top: 210px;">7</button>
			<button type="button" title="D8" id="seat" style=" left: 840px; top: 210px;">8</button>
			<button type="button" title="D9" id="seat" style=" left: 870px; top: 210px;">9</button>
			<button type="button" title="D10" id="seat" style=" left: 900px; top: 210px;">10</button>
			
			
			<button type="button" title="E1" id="seat" style=" left: 600px; top: 260PX;">1</button>
			<button type="button" title="E2" id="seat" style=" left: 630px; top: 260px;">2</button>
			<button type="button" title="E3" id="seat" style=" left: 660px; top: 260px;">3</button>
			<button type="button" title="E4" id="seat" style=" left: 690px; top: 260px;">4</button>
			<button type="button" title="E5" id="seat" style=" left: 720px; top: 260px;">5</button>
			<button type="button" title="E6" id="seat" style=" left: 780px; top: 260px;">6</button>
			<button type="button" title="E7" id="seat" style=" left: 810px; top: 260px;">7</button>
			<button type="button" title="E8" id="seat" style=" left: 840px; top: 260px;">8</button>
			<button type="button" title="E9" id="seat" style=" left: 870px; top: 260px;">9</button>
			<button type="button" title="E10" id="seat" style=" left: 900px; top: 260px;">10</button>
			
			<button type="button" title="E1" id="seat" style=" left: 600px; top: 280PX;">1</button>
			<button type="button" title="E2" id="seat" style=" left: 630px; top: 280px;">2</button>
			<button type="button" title="E3" id="seat" style=" left: 660px; top: 280px;">3</button>
			<button type="button" title="E4" id="seat" style=" left: 690px; top: 280px;">4</button>
			<button type="button" title="E5" id="seat" style=" left: 720px; top: 280px;">5</button>
			<button type="button" title="E6" id="seat" style=" left: 780px; top: 280px;">6</button>
			<button type="button" title="E7" id="seat" style=" left: 810px; top: 280px;">7</button>
			<button type="button" title="E8" id="seat" style=" left: 840px; top: 280px;">8</button>
			<button type="button" title="E9" id="seat" style=" left: 870px; top: 280px;">9</button>
			<button type="button" title="E10" id="seat" style=" left: 900px; top: 280px;">10</button>
			
			<button type="button" title="F1" id="seat" style=" left: 600px; top: 300PX;">1</button>
			<button type="button" title="F2" id="seat" style=" left: 630px; top: 300px;">2</button>
			<button type="button" title="F3" id="seat" style=" left: 660px; top: 300px;">3</button>
			<button type="button" title="F4" id="seat" style=" left: 690px; top: 300px;">4</button>
			<button type="button" title="F5" id="seat" style=" left: 720px; top: 300px;">5</button>
			<button type="button" title="F6" id="seat" style=" left: 780px; top: 300px;">6</button>
			<button type="button" title="F7" id="seat" style=" left: 810px; top: 300px;">7</button>
			<button type="button" title="F8" id="seat" style=" left: 840px; top: 300px;">8</button>
			<button type="button" title="F9" id="seat" style=" left: 870px; top: 300px;">9</button>
			<button type="button" title="F10" id="seat" style=" left: 900px; top: 300px;">10</button>
			
			<button type="button" title="G1" id="seat" style=" left: 600px; top: 320PX;">1</button>
			<button type="button" title="G2" id="seat" style=" left: 630px; top: 320px;">2</button>
			<button type="button" title="G3" id="seat" style=" left: 660px; top: 320px;">3</button>
			<button type="button" title="G4" id="seat" style=" left: 690px; top: 320px;">4</button>
			<button type="button" title="G5" id="seat" style=" left: 720px; top: 320px;">5</button>
			<button type="button" title="G6" id="seat" style=" left: 780px; top: 320px;">6</button>
			<button type="button" title="G7" id="seat" style=" left: 810px; top: 320px;">7</button>
			<button type="button" title="G8" id="seat" style=" left: 840px; top: 320px;">8</button>
			<button type="button" title="G9" id="seat" style=" left: 870px; top: 320px;">9</button>
			<button type="button" title="G10" id="seat" style=" left: 900px; top: 320px;">10</button>
		</div> 
		<input type="button" value="예약" id="submit" style="position: absolute; left:610px; top: 400px; width: 70px;" >
	</form>
</body>
</html>