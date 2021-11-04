<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="js/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
  <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h6 class="text-muted text-normal text-uppercase padding-top-2x"><strong>[${product.p_name}]</strong></h6>
            <hr class="margin-bottom-1x">
            <div>
              <table class="table">
               <thead>
               <tr >
               	<th scope="col">강의 날짜</th>
               	<th scope="col">강의 시간</th>
               	<th scope="col">등록회원</th>
               	<th scope="col">회원 정보</th>
               	</tr>
               </thead>
               
               <tbody>
               <c:forEach var="pt" items="${ptList}">
               <tr>
              	<td scope="row">${pt.pt_date}</td>
              	<td scope="row">${pt.pt_time}</td>
              	<td scope="row">${pt.pt_rsv}/${pt.pt_max}</td>
              	<td scope="row">
              		<button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapse${pt.pt_no }" aria-expanded="false" aria-controls="collapseExample">
              			등록 회원 정보
              		</button>
              	</td>
               </tr>
	           <!-- 회원정보 -->
	               <tr class="collapse" id="collapse${pt.pt_no}">
	           		<c:forEach var="rsv" items="${mList}">
	           			<c:if test="${(pt.pt_date eq rsv.rsv_date) && pt.pt_time eq rsv.rsv_time }">
		               <tr >
		               	<th scope="col">${rsv.rsv_no}</th>
		               	<th scope="col">${rsv.member.m_id}</th>
		               	</tr>
	           			 </c:if>
	           		</c:forEach>
               		</tr>
               	
               		
	           <!-- 회원정보 -->
	           
               </c:forEach>
               </tbody>
              </table>
					  
            </div><!-- end -->
                <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
</body>
</html>