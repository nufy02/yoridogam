<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/member.js"></script>
<title>아이디 중복 체크</title>
<style type="text/css">
#wrap {
	width: px;
	text-align: center;
	margin: 0 auto 0 auto;
}

#chk {
	text-align: center;
}

#cancelBtn {
	visibility: visible;
}

#useBtn {
	visibility: visible;
}
</style>



</head>
<body>
	<div id="wrap">
		<br> <b><font size="4" color="gray">아이디 중복체크</font></b>
		<hr size="1" width="460">
		<br>
		<div id="chk">
			<form id="checkForm">
				<input type="text" name="sUserId" id="sUserId" value="${sUserId}"> <input
					type="button" value="중복확인" onclick="id_duplicate_check2();">
			</form>
			<div id="msg">${msg}</div>

			<br>
			<input id="cancelBtn" type="button" value="취소" onclick="window.close();"> 
			<c:choose>
			 <c:when test="${!isduplicate}">
			<input id="useBtn" type="button" value="사용하기" onclick="id_duplicate_send_value();">
			</c:when>
			</c:choose>
		</div>
	</div>
</body>
</html>