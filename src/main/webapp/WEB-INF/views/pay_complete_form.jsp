<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<hr>결제 완료됐어요! 열심히 수강하세요!<br/>
<br/>
<c:forEach var=" " items="${pay.payItemList}" begin="0" end="${pay.payItemList.size()}" >
강의명:${pay.getPayItemList().get(index).getProduct().getP_name()}<br>
강의수:${pay.getPayItemList().get(index).getPi_qty()}<br>
</c:forEach>
총금액:${pay.pay_total}<br/>
결제방식:${pay.pay_type}<br/>
수강생 이름:${member.m_name}<br/>
수강생 전화번호:${member.m_phone}<br/>
</body>
</html>