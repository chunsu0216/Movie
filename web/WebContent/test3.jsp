<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- * īī���� - �����۰��� -->
<!-- 1. ���� ��� -->
<div id="daumRoughmapContainer1590535118905" class="root_daum_roughmap root_daum_roughmap_landing"></div>

<!--
	2. ��ġ ��ũ��Ʈ
	* ���� �۰��� ���񽺸� 2�� �̻� ���� ���, ��ġ ��ũ��Ʈ�� �ϳ��� �����մϴ�.
-->
<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

<!-- 3. ���� ��ũ��Ʈ -->
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1590535118905",
		"key" : "yjbn",
		"mapWidth" : "640",
		"mapHeight" : "360"
	}).render();
</script>
</body>
</html>