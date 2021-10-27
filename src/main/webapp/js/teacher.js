// login , memberInsertPage , memberInsert , shopping_main , memberModify , memberDelete

function teacher_login_action() {
	if(f.t_id.value==""){
		alert("아이디를 입력하세요.");
		f.t_id.focus();
		return false;
	}
	if(f.t_pass.value==""){
		alert("비밀번호를 입력하세요.");
		f.t_pass.focus();
		return false;
	}

	f.action = "teacher_login_action"
	f.submit();
}
