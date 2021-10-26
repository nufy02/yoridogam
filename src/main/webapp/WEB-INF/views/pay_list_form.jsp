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
<c:forEach var="pay" items="${payList}" begin="0" end="${payList.size()}" step="1" varStatus="status">
<br/>주문번호: ${pay.pay_no }<br/>
주문금액: ${pay.pay_total }<br/>
주문방법: ${pay.pay_type }<br/>
주문날짜: ${pay.pay_date}<br/>
</c:forEach>
</body>
</html>