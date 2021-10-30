<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Header Area Start -->
<%@include file="/WEB-INF/views/common/include_header.jsp"%>
<!-- Header Area End -->

	<c:forEach var="rsv_data" items="${member_rsv}">
		<div>
			<div>${rsv_data.member.m_id } </div>
			<div>${rsv_data.product.p_no} </div>
			<div>${rsv_data.rsv_date} </div>
			<c:if test="${rsv_data.rsv_date == rsv_paydate}">
			<div>수강완료</div>
			</c:if>
		</div>
	</c:forEach>
</body>
</html>