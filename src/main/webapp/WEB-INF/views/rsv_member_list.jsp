<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- Header Area Start -->
<%@include file="/WEB-INF/views/common/include_header.jsp"%>
<!-- Header Area End -->
	<div>
	<table class="table">
	<thead>
		<tr>
			<th>주문 번호</th>
			<th>주문 강의</th>
			<th>강의 날짜</th>
			<th>강의 시간</th>
			<th>결제 일자</th>
			<th>현재 상황</th>
		</tr>
	</thead>
	
	<tbody>
	<c:forEach var="rsv_data" items="${member_rsv}">
		<tr>
			<th>${rsv_data.rsv_no }</th>
			<td>${rsv_data.product.p_no}</td>
			<td>${rsv_data.rsv_date}</td>
			<td>${rsv_data.rsv_time}</td>
			<td>${rsv_data.rsv_payDate}</td>
			<fmt:parseDate var="date" value="${rsv_data.rsv_date}" pattern="yyyy/MM/dd"/>
			<fmt:formatDate var="rsv_d" value="${date}" pattern="yyyy-MM-dd"/>
			<jsp:useBean id="now" class="java.util.Date"/>
			<fmt:formatDate var="toDay" value="${now}" pattern="yyyy-MM-dd"/>
			<c:choose>
				<c:when test="${toDay <= rsv_d}"><td>수강중</td></c:when>
				<c:when test="${toDay > rsv_d}"><td>수강 완료</td></c:when>
			</c:choose>
		</tr>
	</c:forEach>
	</tbody>
	</table>
	</div>
</body>
</html>