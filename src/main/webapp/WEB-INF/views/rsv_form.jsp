<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Header Area Start -->
<%@include file="/WEB-INF/views/common/include_header.jsp"%>
<!-- Header Area End -->
<script type="text/javascript">
var msg = '${msg}';
if(msg!=null){
	alert(msg);
}else{
</script>

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
								<h2 style="color: #FBB710; margin-bottom: 100px">오프라인 강의 결제</h2>
							</div>

							<form action="rsv_action" method="get">
								<h4 style="color: #FBB710">-회원 정보-</h4>		
								<div>
									<!--회원정보 -->
									<input type="hidden" name="sUserId" value="${sUserId.m_id}">
									<div class="col-md-6 mb-3">
										<div style="text-align: center; padding: 30px; font-size: 14px" class="form-control" >
											${sUserId.m_name}
										</div>
									</div>
									<div class="col-md-6 mb-3">
										<input type="text" class="form-control " id="m_phone"
											placeholder="Phone" value="${sUserId.m_phone}">
									</div>
									<div class="col-12 mb-3">
										<input type="email" class="form-control mb-5" id="m_email"
											placeholder="Email" value="${sUserId.m_email}">
									</div>
								</div>
								<!-- 회원정보 끝! -->
								<h4 style="color: #FBB710">-상품 정보-</h4>		
								<!-- 상품 정보 -->
								<div class="row">
								<input type="hidden" name="p_no" value="${product.p_no}">
									<div class="col-md-6 mb-3">
										<input type="text" class="form-control" id="t_name"
											placeholder="name" value="${teacher.t_name}">
									</div>
									<div class="col-md-6 mb-3">
										<input type="text" class="form-control" id="t_phone"
											placeholder="phone" value="${teacher.t_phone}">
									</div>
									<div class="col-12 mb-3">
										<input type="text" class="form-control mb-3" id="t_address"
											placeholder="Address" value="${teacher.t_location}">
									</div>
								</div>
								<!-- 상품정보 끝! -->
						</div>
					</div>
					<div class="col-12 col-lg-4">
						<div class="cart-summary">
							<h5 style="color: #FBB710; text-align: center; font-weight: 700; padding-bottom: 20px">주문서</h5>
							<ul class="summary-table">
								
								<li style="font-size: 13px; padding-bottom: 30px;"><span>${product.p_name}</span></li>
								<div>
                                    <p>예약 시간</p>
										<div>
											<c:forEach var="pt" items="${pTList}">
	                                        	<li>
		                                        	<div class="custom-control custom-checkbox mr-sm-2">
			                                        	<input type="radio" class="custom-control-input" id="qty${pt.pt_no}" name="qty" value="${pt.pt_time}">
														<label class="custom-control-label" for="qty${pt.pt_no}">${pt.pt_time}</label>
													</div>
												</li>
											</c:forEach>
                                    	</div>
								</div>
								<li>
								 <div class="cart-btn d-flex mb-50">
                                    <p>인원</p>
                                    <div class="quantity">
                                        <input type="number" class="qty-text" id="qty" step="1" min="1" max="30" name="qty" value="1">
	                                        <span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;">
	                                       	 	<i class="fa fa-caret-down" aria-hidden="true"></i>
	                                        </span>
	                                        <span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;">
	                                        	<i class="fa fa-caret-up" aria-hidden="true"></i>
                                       		</span>
                                    </div>
                                </div>
								</li>
								<li><span>total:</span> 
								<input type="text" name="sum" size="11" c>
								<!-- 가격 변경하는거 구현해야됨! -->
								<div id="rsv_total" value="${product.p_price}">${product.p_price} 원</div>
								
								</li>
							</ul>
							<div class="payment-method">
								<!-- Cash on delivery -->
								<div class="custom-control custom-checkbox mr-sm-2" >
									<input type="radio" class="custom-control-input" id="cod1"
										name="rsv_type" value="무통장입금"> <label
										class="custom-control-label" for="cod1">무통장입금</label>
								</div>
								<div class="custom-control custom-checkbox mr-sm-2">
									<input type="radio" class="custom-control-input" id="cod2"
										name="rsv_type" value="카카오페이"> <label
										class="custom-control-label" for="cod2">카카오페이</label>
								</div>
								<div class="custom-control custom-checkbox mr-sm-2">
									<input type="radio" class="custom-control-input"id="cod3"
										name="rsv_type" value="현장결제" > <label
										class="custom-control-label" for="cod3">현장결제</label>
								</div>
								<!-- Paypal -->
								<div class="custom-control custom-checkbox mr-sm-2">
									<input type="radio" class="custom-control-input"id="paypal"
										name="rsv_type" value="카드결제" checked> <label
										class="custom-control-label" for="paypal">카드결제 <img
										class="ml-15" src="img/core-img/paypal.png" alt=""></label>
								</div>
							</div>
		
							<div class="cart-btn mt-100">
								<input type="submit" class="btn amado-btn w-100" value="결제하기">
							</div>
						</div>
					</div>
					</form>
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
		<script type="text/javascript">
}
		</script>
		</body>
		
		</html>
		