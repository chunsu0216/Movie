<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insertvalue here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style type="text/css">
   div#select {
      position: absolute;
      text-align: center;
   }
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
<%-- var seat='<%=seat%>' --%>

$(function(){
   //제약조건
   //$("input#seat").val()
   //예약좌석 보여주기
    $("input[type='hidden']").each(function(index,dom){
      //alert($(dom).val());
       $("button#seat").each(function(i,d){
         if($(d).attr("title")==$(dom).val()){
            $(this).attr('disabled', true);
            $(this).css("background-color","red")
         }
      }); 
      
      
   }); 
    /* $("button#seat").click(function(i,d){
      alert($(d).attr("title"));
    }); */
   var clickCount=0;//클릭한 좌석 기억
   var array=new Array();
   var state=false;
   var scr;
   var stime;
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
               array.splice(array.indexOf($(this).attr("title")),1);
               console.log(array);
            }else if(cnt%2!=0 && cnt!=0){
               $(this).css("background-color","red");
               clickCount++;
               array.push($(this).attr("title"));
            }
         });
       
    });//button.seat
     //조회버튼
      $("button.searh").click(function(){
         scr=$("select#sc").val();
         stime=$("select#time").val()
          if(scr!='상영관 선택' && stime!='상영시간 선택'){
            alert(scr+":"+stime);
            document.location.href='selectMovieSc.jsp?scr='+scr+'&stime='+stime;
         }
         else{
            alert("상영관과 상영시간을 선택하세요");
         } 
       /*  $.ajax({
           url:'selectMovieSc.jsp',
           dataType:'json',
           type:'post',
           data:{scr:scr,stime:stime},
           success:function(){
              alert('ss')
           },error:function(){
              alert("error");
           }
        }) */
      });
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
      
      $("input#sub").click(function() {
         scr=$("select#sc").val();
         stime=$("select#time").val()
         if(scr!='상영관 선택' && stime!='상영시간 선택'){
         alert(scr+":"+stime+":"+array);
         document.location.href='SeatTest2.jsp?scr='+scr+'&stime='+stime+'&array='+array;
         }
         else{
            alert("상영관 상영시간을 선택하세요.")
         }

      });
});
</script>
</head>
<body>   
<%
      String seat[]=request.getParameterValues("seat");
      
      if(seat!=null){
         
            String seatN[]=seat[0].split(",");
            for(int i=0;i<seatN.length;i++){
            %>
      <input type="hidden" value="<%=seatN[i]%>" id="seatNum">
            <%
            }
         }
%>
      <div> 
         상영관
         <select id="sc"> 
            <option>상영관 선택</option>
            <option>1관</option>
            <option>2관</option>
            <option>3관</option>
         </select>
         상영시간
         <select id="time">
            <option>상영시간 선택</option>
            <option>11시</option>
            <option>13시</option>
            <option>16시</option>
         </select>
         <button id="searh" class="searh">조회</button>
         <button id="reset" value="0"  style="left: 500px;  top: 20px; width: 50px;">reset</button>
         <button class="people" value="1" style="left: 620px;">1</button>
         <button class="people" value="2" style="left: 650px;">2</button>
         <button class="people" value="3" style="left: 680px;">3</button>
         <button class="people" value="4" style="left: 710px;">4</button>
         <button class="people" value="5" style="left: 740px;">5</button>
      </div> 
      <div style="border: 1px solid; text-align: center; position: absolute; left: 550px; top: 100px; width: 380px; background: gray;">스크린</div>
      
      <div id="srow">
         <button type="button"value="A행" disabled="disabled" style=" top: 150px;">A</button>
         <button type="button"value="B행" disabled="disabled" style=" top: 170px;">B</button>
         <button type="button"value="C행" disabled="disabled" style=" top: 190px; ">C</button>

      </div>
      
      <div id="dseat1"> 
         <button type="button" title="A1" id="seat" style=" left: 600px; top: 150px; ">1</button>
         <button type="button" title="A2" id="seat" style=" left: 630px; top: 150px; ">2</button>
         <button type="button" title="A3" id="seat" style=" left: 660px; top: 150px; ">3</button>
         <button type="button" title="A4" id="seat" style=" left: 690px; top: 150px; ">4</button>

         <button type="button" title="B1" id="seat" style=" left: 600px; top: 170px; ">1</button>
         <button type="button" title="B2" id="seat" style=" left: 630px; top: 170px; ">2</button>
         <button type="button" title="B3" id="seat" style=" left: 660px; top: 170px; ">3</button>
         <button type="button" title="B4" id="seat" style=" left: 690px; top: 170px; ">4</button>
   
         <button type="button" title="C1" id="seat" style=" left: 600px; top: 190px; ">1</button>
         <button type="button" title="C2" id="seat" style=" left: 630px; top: 190px; ">2</button>
         <button type="button" title="C3" id="seat" style=" left: 660px; top: 190px; ">3</button>
         <button type="button" title="C4" id="seat" style=" left: 690px; top: 190px; ">4</button>

         
         
      </div> 
      <input type="button" value="예약" id="sub" style="position: absolute; left:610px; top: 400px; width: 70px;" >
   
</body>
</html>