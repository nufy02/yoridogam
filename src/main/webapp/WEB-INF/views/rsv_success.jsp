<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- Header Area Start -->
<%@include file="/WEB-INF/views/common/include_header.jsp"%>
<!-- Header Area End -->

		<!-- Search Wrapper Area Start -->
		<div class="search-wrapper section-padding-100">
			<div class="search-close">
				<i class="fa fa-close" aria-hidden="true"></i>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="search-content">
							<form action="#" method="get">
								<input type="search" name="search" id="search"
									placeholder="Type your keyword...">
								<button type="submit">
									<img src="img/core-img/search.png" alt="">
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Search Wrapper Area End -->
		
		<!-- ##### Main Content Wrapper Start ##### -->
		
		
		<div class="cart-table-area section-padding-100">
			<div class="container-fluid">
				<div class="row">
					<div class="col-12 col-lg-8">
						<div class="checkout_details_area mt-50 clearfix">
			
								<div class="cart-title">
									<h2 style="color: #FBB710; margin-bottom: 100px">영수증</h2>
								</div>
								
							
								<div class="row">
                                    <div style="padding-left: 200px" class="col-md-6mb-3"  align="left">
                                    	<h4 style="color: #FBB710">-회원 정보-</h4>		
                                    <tr>
                                        <th>수강생 성함: ${reservation.member.m_name}<br/></th>
                                        <th>수강생 번호: ${reservation.member.m_phone}<br/></th>
                                        <th>예약한 강의: ${reservation.product.p_name}<br/></th>
                                        <th>강의   날짜: ${reservation.rsv_date}<br/></th>
                                        <th>강의   시간: ${reservation.rsv_time}<br/></th>
                                        
                                        <th>결제 방식: ${reservation.rsv_type}<br/></th>
                                        <th>결제 총 금액: <f:formatNumber>${reservation.rsv_total}</f:formatNumber> 원<br/></th>
                                    </tr>
                                    </div>
									
								
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- ##### Main Content Wrapper End ##### -->
		
		<!-- ##### Footer Area Start ##### -->
		<%@include file="/WEB-INF/views/common/include_footer.jsp"%>
		<!-- ##### Footer Area End ##### -->
		
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

		</body>
		
		</html>
		