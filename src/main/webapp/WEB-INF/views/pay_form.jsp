<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

        <!-- Header Area Start -->
		<%@include file="/WEB-INF/views/common/include_header.jsp"%>
        <!-- Header Area End -->

        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="checkout_details_area mt-50 clearfix">

                            <div class="cart-title">
                                <h2>Checkout</h2>
                            </div>

                            <form action="#" method="post">
                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <input type="text" class="form-control" id="name" value="${sUserId.getM_name()}" placeholder="First Name" required>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input type="email" class="form-control" id="email" placeholder="Email" value="${sUserId.getM_email()}">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input type="text" class="form-control mb-3" id="phone" placeholder="Address" value="${sUserId.getM_phone()}">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input type="text" class="form-control" id="addr" placeholder="Town" value="${sUserId.getM_addr()}">
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <input type="text" class="form-control" id="항목1" placeholder="Zip Code" value="">
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <input type="number" class="form-control" id="항목2" min="0" placeholder="Phone No" value="">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <textarea name="comment" class="form-control w-100" id="항목3" cols="30" rows="10" placeholder="Leave a comment about your order"></textarea>
                                    </div>

                                    <div class="col-12">
                                        <div class="custom-control custom-checkbox d-block mb-2">
                                            <input type="checkbox" class="custom-control-input" id="customCheck2">
                                            <label class="custom-control-label" for="customCheck2">Create an accout</label>
                                        </div>
                                        <div class="custom-control custom-checkbox d-block">
                                            <input type="checkbox" class="custom-control-input" id="customCheck3">
                                            <label class="custom-control-label" for="customCheck3">Ship to a different address</label>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-12 col-lg-4">
                        <div class="cart-summary">
                            <h5>주문 정보</h5>
                            <ul class="summary-table">
                                <li><span>subtotal:</span> <span>${product.getP_price()}</span></li>
                                <li><span>delivery:</span> <span>Free</span></li>
                                <li><span>total:</span> <span>$140.00</span></li>
                            </ul>

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