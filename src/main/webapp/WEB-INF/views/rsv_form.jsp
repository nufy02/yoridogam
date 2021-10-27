<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


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

							<form action="rsv_action" method="post">
								<h4 style="color: #FBB710">-회원 정보-</h4>		
								<div class="row">
									<!--회원정보 -->
									<div class="col-md-6 mb-3">
										<input class="form-control" id="m_name"
											value="${sUserId.m_name}" placeholder="name" required>
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
							<h5 style="color: #FBB710; text-align: center; font-weight: 700;">주문서</h5>
							<ul class="summary-table">
							
								<li><input type="hidden" name="pt_no" value="${productTime.pt_no}"></li>
								<li><input type="hidden" name="rsv_qty" value="${qty}"></li>
								<li><input type="hidden" name="rsv_total" value="${product.p_price*qty}"></li>
								<li style="font-size: 13px;"><span>${product.p_name}</span></li>
								<li><span>날짜:</span> <div id="rsv_date" value="${productTime.pt_date}">${productTime.pt_date}</div></li>
								<li><span>시간:</span> <div id="rsv_time" value="${productTime.pt_time}">${productTime.pt_time}</div></li>
								<li><span>예약 인원:</span> <div  id="rsv_qty" value="${qty}">${qty} 명</div></li>
								<li><span>total:</span> <div id="rsv_total" value="${product.p_price*qty}">${product.p_price*qty} 원</div></li>
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
		