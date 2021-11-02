<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


	<div class="">
	<table class="table table-responsive">
	<thead>
		<tr>
			<th scope="col">주문 번호</th>
			<th scope="col">주문 강의</th>
			<th scope="col">강의 날짜</th>
			<th scope="col">강의 시간</th>
			<th scope="col">결제 일자</th>
			<th scope="col">현재 상황</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="rsv_data" items="${member_rsv}">
	<form action="rsv_no_delete" method="get">
	<input type="hidden" name="rsv_no" value="${rsv_data.rsv_no}">
		<tr>
			<th scope="row">${rsv_data.rsv_no }</th>
			<td scope="row">${rsv_data.product.p_name}</td>
			<td scope="row">${rsv_data.rsv_date}</td>
			<td scope="row">${rsv_data.rsv_time}</td>
			<td scope="row">${rsv_data.rsv_payDate}</td>
			<fmt:parseDate var="date" value="${rsv_data.rsv_date}" pattern="yyyy/MM/dd"/>
			<fmt:formatDate var="rsv_d" value="${date}" pattern="yyyy-MM-dd"/>
			<jsp:useBean id="now" class="java.util.Date"/>
			<fmt:formatDate var="toDay" value="${now}" pattern="yyyy-MM-dd"/>
			<c:choose>
				<c:when test="${toDay <= rsv_d}" ><td id="p_status" scope="row">수강중</td></c:when>
				<c:when test="${toDay > rsv_d}"><td id="p_status" scope="row">수강 완료</td></c:when>
			</c:choose>
			<c:if test="${toDay <= rsv_d}"> 
				<td scope="row">
					<button type="submit" style="background-color: #ffffff; color: #FBB710" onclick="button_event()">결제 취소</button>
				<td> 
			</c:if>
		</tr>
	</form>
	</c:forEach>
	</tbody>
	</table>
	</div>
	
	
	<script type="text/javascript">
		function button_event() {
			if(confirm("정말 강의를 취소 하시겠습니까?") == true){
				return document.form.submit();
			}else{
				return false;
			}
		}
	</script>
	
</body>
</html>