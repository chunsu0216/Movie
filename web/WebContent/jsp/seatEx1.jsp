<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<style type="text/css">
	.people{
		position: absolute;
		top: 20px;
		width: 30px;

	}
</style>
<script type="text/javascript">

$(function(){
	//제약조건
	
	var clickCount=0;
	var array=new Array();
	var state=true;
	
	 $("button#seat").each(function(index,dom){
		
			$(dom).click(function(){
				 var cnt = 0;
			//제약조건 : 인원 수를 선택하지 않고 좌석을 선택했을때 alert
			/* 	if(clickCount<=0){
					alert('관람하실 인원을 먼저 선택해주세요.');
				} */
			
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
			$("button#seat").prop("disabled",false);
			
		});
		$("button.people").each(function(index,dom){
			$(dom).click(function(){
				$(this).css("background-color","red")
				$("button.people").prop("disabled",true);
				
				switch ($(this).val()) {
				case "1":
						$("button#seat").click(function(){
							if(clickCount==1){
								$("button#seat").prop("disabled",true);
								alert(clickCount);
								setTimeout(function(){ alert("좌석 선택이 완료됐습니다."); }, 500);
							}  
						});
					break;
				case "2":
					$("button#seat").click(function(){
						if(clickCount==2){
							$("button#seat").prop("disabled",true);
							alert(clickCount);
							setTimeout(function(){ alert("좌석 선택이 완료됐습니다."); }, 500);
						}  
					});
					break;
				case "3":
					$("button#seat").click(function(){
						if(clickCount==3){
							$("button#seat").prop("disabled",true);
							alert(clickCount);
							setTimeout(function(){ alert("좌석 선택이 완료됐습니다."); }, 500);
						}  
					});
					break;
				case "4":
					$("button#seat").click(function(){
						if(clickCount==4){
							$("button#seat").prop("disabled",true);
							alert(clickCount);
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
			<button  type="button" id="reset" value="0"  style="left: 500px; position: absolute; top: 20px; width: 50px;">reset</button>
			<button  type="button" class="people" value="1" style="left: 560px;">1</button>
			<button  type="button" class="people" value="2" style="left: 590px;">2</button>
			<button  type="button" class="people" value="3" style="left: 620px;">3</button>
			<button  type="button" class="people" value="4" style="left: 650px;">4</button>
			<button  type="button" class="people" value="5" style="left: 680px;">5</button>
		</div> 
		<div style="border: 1px solid; text-align: center; position: absolute; left: 550px; top: 100px; width: 150px; background: gray;">스크린</div>
		
		<div>
			<button type="button" title="A행" disabled="disabled" style="text-align:center; position: absolute; left: 550px; top: 150px; width: 20px; border:1px solid #ccc; background: #FFFFFF ">A</button>
			<button type="button" title="B행" disabled="disabled" style="text-align:center; position: absolute; left: 550px; top: 170px; width: 20px; border:1px solid #ccc; background: #FFFFFF ">B</button>
			<button type="button" title="C행" disabled="disabled" style="text-align:center; position: absolute; left: 550px; top: 190px; width: 20px; border:1px solid #ccc; background: #FFFFFF ">C</button>
			<button type="button" title="D행" disabled="disabled" style="text-align:center; position: absolute; left: 550px; top: 210px; width: 20px; border:1px solid #ccc; background: #FFFFFF ">D</button>
		</div>
		<div id="dv1"> 
		
			<button type="button" title="A1" id="seat" style="position: absolute; left: 600px; top: 150px; width: 20px;">1</button>
			<button type="button" title="A2" id="seat" style="position: absolute; left: 620px; top: 150px; width: 20px;">2</button>
			<button type="button" title="A3" id="seat" style="position: absolute; left: 640px; top: 150px; width: 20px;">3</button>
			<button type="button" title="A4" id="seat" style="position: absolute; left: 660px; top: 150px; width: 20px;">4</button>
			<button type="button" title="A5" id="seat" style="position: absolute; left: 680px; top: 150px; width: 20px;">5</button>
			
			<button type="button" title="B1" id="seat" style="position: absolute; left: 600px; top: 170px; width: 20px;">1</button>
			<button type="button" title="B2" id="seat" style="position: absolute; left: 620px; top: 170px; width: 20px;">2</button>
			<button type="button" title="B3" id="seat" style="position: absolute; left: 640px; top: 170px; width: 20px;">3</button>
			<button type="button" title="B4" id="seat" style="position: absolute; left: 660px; top: 170px; width: 20px;">4</button>
			<button type="button" title="B5" id="seat" style="position: absolute; left: 680px; top: 170px; width: 20px;">5</button>
			
			<button type="button" title="C1" id="seat" style="position: absolute; left: 600px; top: 190px; width: 20px;">1</button>
			<button type="button" title="C2" id="seat" style="position: absolute; left: 620px; top: 190px; width: 20px;">2</button>
			<button type="button" title="C3" id="seat" style="position: absolute; left: 640px; top: 190px; width: 20px;">3</button>
			<button type="button" title="C4" id="seat" style="position: absolute; left: 660px; top: 190px; width: 20px;">4</button>
			<button type="button" title="C5" id="seat" style="position: absolute; left: 680px; top: 190px; width: 20px;">5</button>
			
			<button type="button" title="D1" id="seat" style="position: absolute; left: 600px; top: 210px; width: 20px;">1</button>
			<button type="button" title="D2" id="seat" style="position: absolute; left: 620px; top: 210px; width: 20px;">2</button>
			<button type="button" title="D3" id="seat" style="position: absolute; left: 640px; top: 210px; width: 20px;">3</button>
			<button type="button" title="D4" id="seat" style="position: absolute; left: 660px; top: 210px; width: 20px;">4</button>
			<button type="button" title="D5" id="seat" style="position: absolute; left: 680px; top: 210px; width: 20px;">5</button>
		</div> 
		<input type="submit" value="Submit" id="submit" style="position: absolute; left:610px; top: 250px; width: 70px;" >
	</form>
</body>
</html>