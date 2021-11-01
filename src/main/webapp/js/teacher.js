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


function teacher_write_form() {
	f.action = "teacher_write_form"
	f.submit();
}

function teacher_write_action() {
	if (f.t_id.value == "") {
		alert("사용자 아이디를 입력하세요.");
		f.t_id.focus();
		return false;
	}
	if (f.t_name.value == "") {
		alert("이름을 입력하세요.");
		f.t_name.focus();
		return false;
	}
	if (f.t_pass.value == "") {
		alert("비밀번호를 입력하세요.");
		f.t_pass.focus();
		return false;
	}
	if (f.t_pass2.value == "") {
		alert("비밀번호확인을 입력하세요.");
		f.t_pass2.focus();
		return false;
	}
	if (f.t_phone.value == ""){
		alert("핸도폰번호를 입력하세요.");
		f.t_phone.focus();
		return false;
	}
	if (f.t_email.value == ""){
		alert("이메일을 입력하세요.");
		f.t_email.focus();
		return false;
	}
	if (f.t_photo.value == "") {
		alert("사진을 업로드해주세요.");
		f.t_photo.focus();
		return false;
	}
		if (f.t_detail.value == "") {
		alert("상세정보를 입력하세요.");
		f.t_detail.focus();
		return false;
	}
	if (f.t_location.value == "") {
		alert("주소를 입력하세요.");
		f.t_location.focus();
		return false;
	}

	if (f.t_pass.value != f.t_pass2.value) {
		alert("비밀번호 비밀번호확인은 일치해야 합니다.");
		f.t_password.focus();
		f.t_password.select();
		return false;
	}
	f.action = "teacher_write_action";
	f.method='POST';
	f.submit();
}
	
function home_main() {
	f.action = "home"
	f.submit();
}



function id_duplicate_check(){
		window.open('teacher_duplicate_form','checkForm','width=500,height=300,resizable = no,scrollbar = no');
	}
	
	function id_duplicate_check2() {
		var userId=document.getElementById("sUserId").value;
		if(sUserId==null|| sUserId==''){
			alert('아이디를 입력하시고 중복체크를 하세요.');
			return;
		}
		document.getElementById('checkForm').action='teacher_duplicate_action';
		document.getElementById('checkForm').method='POST';
		document.getElementById('checkForm').submit();
		
	}

	function id_duplicate_send_value() {
		opener.document.f.t_id.value = window.document.getElementById('sUserId').value;
		window.close();
	}