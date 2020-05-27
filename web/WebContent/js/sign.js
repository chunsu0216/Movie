$(function(){
	//회원가입 제약사항
	$("button#login").click(function(){
		if($("input#id").val()==""){
			alert("아이디 입력하세요");
			$("input#id").focus();
			return false;
		}
		if($("input#name").val()==""){
			alert("이름 입력하세요");
			$("input#name").focus();
			return false;
		}
	/*	if($("input#email").val()==""){
			alert("이메일 입력하세요");
			$("input#email").focus();
			return false;
		}*/
		if(($("input#password1").val() != $("input#password2").val())){
			alert("비밀번호가 일치하지않습니다");
			$("input#password1").val("");
			$("input#password2").val("");
			$("input#password1").focus();
			return false;
		}
		if(($("input#password2").val().length < 9)){
			alert("형식에 맞춰 비밀번호를 작성해주세요");
			$("input#password1").val("");
			$("input#password2").val("");
			$("input#password1").focus();
			return false;
		}
		$("input#password").val($("input#password2").val());
	});
	//로그인 제약사항
	$("button#loginCk").click(function(){
		if($("input#idCk").val()==""){
			alert("아이디 입력하세요");
			$("input#idCk").focus();
			return false;
		}
		if($("input#passwordCk").val()==""){
			alert("비밃번호 입력하세요");
			$("input#passwordCk").focus();
			return false;
		}
	});
});