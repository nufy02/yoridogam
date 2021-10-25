<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
                            <input type="search" name="search" id="search" placeholder="Type your keyword...">
                            <button type="submit"><img src="img/core-img/search.png" alt=""></button>
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
                                <h2>오프라인 강의 결제</h2>
                            </div>

                            <form action="#" method="post">
                                <div class="row">
                                	<!--회원정보 -->
                                    <div class="col-md-6 mb-3">
                                        <input class="form-control" id="m_name" value="${sUserId.getM_name()}" placeholder="name" required>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <input type="text" class="form-control " id="m_phone" placeholder="Phone" value="${sUserId.getM_phone()}">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input type="email" class="form-control mb-5" id="m_email" placeholder="Email" value="${sUserId.getM_email()}">
                                    </div>
                                 </div>
                                 <!-- 회원정보 끝! -->
                                 
                                 <!-- 상품 정보 -->
                                 <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <input type="text" class="form-control" id="t_name" placeholder="name" value="${teacher.getT_name()}">
                                    </div>
                                     <div class="col-md-6 mb-3">
                                        <input type="text" class="form-control" id="t_phone" placeholder="phone" value="${teacher.getT_phone()}">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input type="text" class="form-control mb-3" id="t_address" placeholder="Address" value="${teacher.getT_location()}">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input type="text" class="form-control mb-5" id="t_address" placeholder="Address" value="${product.getP_name()}">
                                    </div>
                                </div>
                                <!-- 상품정보 끝! -->
                            </form>
                        </div>
                    </div>
                    <div class="col-12 col-lg-4">
                        <div class="cart-summary">
                            <h5>Cart Total</h5>
                            <ul class="summary-table">
                            	<li><input type="hidden"  name="p_no"  value="${product.p_no}"></li>
                                <li><span>강의명</span></li>
                                <li style="font-size: 13px">${product.getP_name()}</li>
                                <li><span>예약 인원:</span> <span>${qty} 명</span></li>
                                <li><span>total:</span> <span>$140.00</span></li>
                            </ul>
                            <!-- 
                            <div class="cart-summary">
                            <h5>주문 정보</h5>
                           	<input type="hidden" name="pay_no" value="1"/>
                            <ul class="summary-table">
                          		<li><input type="hidden"  name="p_no"  value="${product.p_no}"></li>
                                <li><span>강의명:</span> <input type="text"  name="p_name"  value="${product.p_name}"></li>
                                <li><span>강의 수량:</span><input type="number"  name="qty"  value="${qty}"></li>
                                <li><span>결제 금액:</span> <input type="text"  name="p_price"  value="${product.p_price}"></li>
                            </ul>
 							-->
                            <div class="payment-method">
                                <!-- Cash on delivery -->
                                <div class="custom-control custom-checkbox mr-sm-2">
                                    <input type="checkbox" class="custom-control-input" id="cod" checked>
                                    <label class="custom-control-label" for="cod">Cash on Delivery</label>
                                </div>
                                <!-- Paypal -->
                                <div class="custom-control custom-checkbox mr-sm-2">
                                    <input type="checkbox" class="custom-control-input" id="paypal">
                                    <label class="custom-control-label" for="paypal">Paypal <img class="ml-15" src="img/core-img/paypal.png" alt=""></label>
                                </div>
                            </div>

                            <div class="cart-btn mt-100">
                                <a href="#" class="btn amado-btn w-100">Checkout</a>
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