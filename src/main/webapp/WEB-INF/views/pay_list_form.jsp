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
<div class="col-md-4 order-md-2 mb-4">
      <h4 class="d-flex justify-content-between align-items-center mb-3">
        <span class="text-muted">Your cart</span>
        <span class="badge badge-secondary badge-pill">3</span>
      </h4>
      <ul class="list-group mb-3">
        <li class="list-group-item d-flex justify-content-between lh-condensed">
          <div>
            <h6 class="my-0">Product name</h6>
            <small class="text-muted">Brief description</small>
          </div>
          <span class="text-muted">$12</span>
        </li>
        <li class="list-group-item d-flex justify-content-between lh-condensed">
          <div>
            <h6 class="my-0">Second product</h6>
            <small class="text-muted">Brief description</small>
          </div>
          <span class="text-muted">$8</span>
        </li>
        <li class="list-group-item d-flex justify-content-between lh-condensed">
          <div>
            <h6 class="my-0">Third item</h6>
            <small class="text-muted">Brief description</small>
          </div>
          <span class="text-muted">$5</span>
        </li>
        <li class="list-group-item d-flex justify-content-between bg-light">
          <div class="text-success">
            <h6 class="my-0">Promo code</h6>
            <small>EXAMPLECODE</small>
          </div>
          <span class="text-success">-$5</span>
        </li>
        <li class="list-group-item d-flex justify-content-between">
          <span>Total (USD)</span>
          <strong>$20</strong>
        </li>
      </ul>
      
      
      
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