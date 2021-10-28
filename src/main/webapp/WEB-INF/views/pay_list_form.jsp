<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  </head>
  <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<table>
	  <thead>
	    <tr>
	      <th>결제 번호</th>
	      <th>결제 날짜</th>
	      <th>결제 금액</th>
	      <th>결제 강의</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	    <c:forEach var="pay" items="${payList}" begin="0" end="${payList.size()}" step="1" varStatus="status">
	    
	      <td>${pay.pay_no }</td>
	      <td>${pay.pay_date}</td>
	      <td><span>${pay.pay_total }</span></td>
	  		  <c:forEach var="pay" items="${pay.payItemList}" begin="0" end="0" step="1" varStatus="status">
	      <td><span>[${pay.product.p_name}] 외 </c:forEach> n개</span></td>
	    </tr>
		     </c:forEach>
	  </tbody>
	</table>
</body>
</html>