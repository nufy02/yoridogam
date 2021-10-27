// login , memberInsertPage , memberInsert , shopping_main , memberModify , memberDelete

function member_login_action() {
	if(f.m_id.value==""){
		alert("아이디를 입력하세요.");
		f.m_id.focus();
		return false;
	}
	if(f.m_pass.value==""){
		alert("비밀번호를 입력하세요.");
		f.m_password.focus();
		return false;
	}

	f.action = "member_login_action"
	f.submit();
}

function member_write_form() {
	f.action = "member_write_form"
	f.submit();
}

function member_write_action() {
	if (f.m_id.value == "") {
		alert("사용자 아이디를 입력하세요.");
		f.m_id.focus();
		return false;
	}
	if (f.m_name.value == "") {
		alert("이름을 입력하세요.");
		f.m_name.focus();
		return false;
	}
	if (f.m_password.value == "") {
		alert("비밀번호를 입력하세요.");
		f.m_password.focus();
		return false;
	}
	if (f.m_password2.value == "") {
		alert("비밀번호확인을 입력하세요.");
		f.m_password2.focus();
		return false;
	}
	if (f.m_address.value == "") {
		alert("주소를 입력하세요.");
		f.m_address.focus();
		return false;
	}
	if (f.m_email.value == ""){
		alert("이메일을 입력하세요.");
		f.m_email.focus();
	}
	if (f.m_phone.value == ""){
		alert("전화번호를 입력하세요.");
		f.m_phone.focus();
	}
	if (f.m_gender.value == ""){
		alert("성별을 선택하세요.");
		f.m_gender.focus();
	}
	if (f.mi_interest.value == ""){
		alert("성별을 선택하세요.");
		f.m_interest.focus();
	}
	if (f.m_password.value != f.m_password2.value) {
		alert("비밀번호 비밀번호확인은 일치해야 합니다.");
		f.m_password.focus();
		f.m_password.select();
		return false;
	}
	f.action = "member_write_action";
	f.method='POST';
	f.submit();
}
	
function home_main() {
	f.action = "home"
	f.submit();
}
function member_detail() {
	f.action = "member_detail.jsp"
	f.submit();
}

function member_modify_form() {
	f.action = "member_modify_form"
	f.method = "POST";
	f.submit();
}

function member_remove_action() {
	if(confirm("정말 탈퇴 하시겠습니까?")){
		f.action = "member_remove_action";
		f.method = "POST";
		f.submit();
	}
}

function member_modify_action() {
	if (f.m_password.value == "") {
		alert("비밀번호를 입력하세요.");
		f.m_password.focus();
		return false;
	}
	if (f.m_password2.value == "") {
		alert("비밀번호확인을 입력하세요.");
		f.m_password2.focus();
		return false;
	}
	if (f.m_name.value == "") {
		alert("이름을 입력하세요.");
		f.m_name.focus();
		return false;
	}
	if (f.m_address.value == "") {
		alert("주소를 입력하세요.");
		f.m_address.focus();
		return false;
	}
	if (f.m_phone.value == ""){
		alert("전화번호를 입력하세요.");
		f.m_phone.focus();
	}
	if (f.m_password.value != f.m_password2.value) {
		alert("비밀번호와 비밀번호확인은 일치해야 합니다.");
		f.m_password.focus();
		f.m_password.select();
		return false;
	}
	document.f.action = "member_modify_action";
	document.f.method='POST';
	document.f.submit();
}