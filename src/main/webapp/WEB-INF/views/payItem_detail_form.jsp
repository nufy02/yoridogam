<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h6 class="text-muted text-normal text-uppercase padding-top-2x">결제 상세 내역</h6>
            <hr class="margin-bottom-1x">
            <div class="table-responsive">
              <table class="table table-inverse" style="color: orange;">
                <thead>
                  <tr style="width: 750px;">
                    <th></th>
                    <th>강의명</th>
                    <th>강의 수</th>
                    <th>강의 금액</th>
                    <th>강사 이름</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="pay" items="${pay.payItemList}" begin="0" end="${pay.payItemList.size()}" step="1" varStatus="status">
                  <tr style="width: 750px;">
                    <td><img src="${pay.product.p_photo }"/></td>
                    <td>${pay.product.p_name }</td>
                    <td>${pay.pi_qty }</td>
                    <td>${pay.product.p_price }</td>
                    <td>${pay.product.teacher.t_name }</td>
                  </tr>
                  </c:forEach>
                </tbody>
              </table>
            </div>
                <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
</body>
</html>