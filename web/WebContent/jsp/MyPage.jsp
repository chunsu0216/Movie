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
				alert("���Ź�ȣ�� �Է��ϼ���")
				
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
  <h2 style="font-style: italic;" >����������</h2>
  <table>
  	<thead>
  		<b style="font-size: 20px">����������</b>   ���̵�
  		
  	</thead>
  </table>
  <ul class="nav nav-tabs">
    <li><a data-toggle="tab" href="#menu1">������</a></li>
    <li><a data-toggle="tab" href="#menu2">���ų���</a></li>
    <li><a data-toggle="tab" href="#menu3">�� ����</a></li>
    <li><a data-toggle="tab" href="#menu4">Ƽ�����</a></li>
  </ul>

  <div class="tab-content">
    <div id="menu1" class="tab-pane fade" >
       <table>
      	<tbody >
      		<tr>
      			<td>�̸�:</td>
      		</tr> 
      		<tr>
      			<td>���̵�:</td>
      		</tr>
      		<tr>  
      			<td>��ȭ��ȣ:</td>
      		</tr>
      		<tr>  
      			<td>�ּ�:</td>
      		</tr>
      		<tr>  
      			<td>�������:</td> 
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
								<span>�˻���¥<input type="date">~<input type="date"><input type="button" value="��ȸ"></span>
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
							<th scope="col">���Ź�ȣ</th>
							<th scope="col">���ų�¥</th>
							<th scope="col">�󿵰���ȣ</th>
							<th scope="col">�¼�</th>
						</tr>
						</thead>	
						<tbody>
						
						</tbody>
					</table>

					<div class="paging">
						<a href="#"><img src="/web/img/button/btn_first.gif" alt="ó��������" /></a>
						<a href="#"><img src="/web/img/button/btn_prev.gif" alt="����"></a>
						<a href="#">1</a>
						<a href="#"><img src="/web/img/button/btn_next.gif" alt="����" /></a>
						<a href="#"><img src="/web/img/button/btn_last.gif" alt="������������" /></a>
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
								<th><span style="float: right;"><input style="" type="button" value="���侲��"></span> </th>
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
							<th scope="col">��ȭ����</th>
							<th scope="col">��ȭ������</th>
							<th scope="col">����</th>
							<th scope="col">��¥</th>
						</tr>
						</thead>	
						<tbody>
							<tr>
								<td><</td>
								<td>�����ǽð�</td>
								<td>�����ǽð�</td>
								<td>�����ǽð�</td>

							</tr>
							
						</tbody>
					</table>

					<div class="paging">
					
						<a href="#"><img src="/web/img/button/btn_first.gif" alt="ó��������" /></a>
						<a href="#"><img src="/web/img/button/btn_prev.gif" alt="����"/></a>
						<a href="#">1</a>
						<a href="#"><img src="/web/img/button/btn_next.gif" alt="����" /></a>
						<a href="#"><img src="/web/img/button/btn_last.gif" alt="������������" /></a>
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
								<td>���Ź�ȣ��ȸ<input type="text" id="serachData"><input type="button" id="movieSerach" value="��ȸ"></td>
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
							<th scope="col">���Ź�ȣ</th>
							<th scope="col">��ȭ����</th>
							<th scope="col">�󿵰���ȣ</th>
							<th scope="col">�󿵽ð�</th>
							<th scope="col">�¼���ȣ</th>
							<th scope="col">���</th>
						</tr>
						</thead>	
						<tbody>
							<tr>
								<td id="num">1122</td>
								<td>�����ǽð�</td>
								<td>1��</td>
								<td>11:40~13:20</td>
								<td>A3</td>
								<td><input type="button" value="����ϱ�" id="print"></td>
							</tr>
						</tbody>
					</table>

					<!-- <div class="paging">
					
						<a href="#"><img src="../img/button/btn_first.gif" alt="ó��������" /></a>
						<a href="#"><img src="../img/button/btn_prev.gif" alt="����"/></a>
						<a href="#">1</a>
						<a href="#"><img src="../img/button/btn_next.gif" alt="����" /></a>
						<a href="#"><img src="../img/button/btn_last.gif" alt="������������" /></a>
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