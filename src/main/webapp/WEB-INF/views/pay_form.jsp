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

                            <form action="pay_action" name="payInfo" method="post">
                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <input type="text" class="form-control" name="m_name" value="${sUserId.m_name}" placeholder="First Name" required>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input type="email" class="form-control" name="m_email" placeholder="Email" value="${sUserId.m_email}">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input type="text" class="form-control mb-3" name="m_phone" placeholder="Address" value="${sUserId.m_phone}">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input type="text" class="form-control" name="m_addr" placeholder="Town" value="${sUserId.m_addr}">
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <input type="text" class="form-control" name="" placeholder="Zip Code" value="">
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <input type="number" class="form-control" name="" min="0" placeholder="Phone No" value="">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <textarea name="comment" class="form-control w-100" name="" cols="30" rows="10" placeholder="Leave a comment about your order"></textarea>
                                    </div>

                                    <div class="col-12">
                                        <div class="custom-control custom-checkbox d-block mb-2">
                                            <input type="checkbox" class="custom-control-input" id="">
                                            <label class="custom-control-label" for="customCheck2">Create an accout</label>
                                        </div>
                                        <div class="custom-control custom-checkbox d-block">
                                            <input type="checkbox" class="custom-control-input" id="">
                                            <label class="custom-control-label" for="customCheck3">Ship to a different address</label>
                                        </div>
                                    </div>
                                </div>
                        </div>
                    </div>
                    
                    <div class="col-12 col-lg-4">
                        <div class="cart-summary">
                            <h5>주문 정보</h5>
                           	<input type="hidden" name="pay_no" value="1"/>
                            <ul class="summary-table">
                          		<li><input type="hidden"  name="p_no"  value="${product.p_no}"></li>
                                <li><span>강의명:</span> <input type="text"  name="p_name"  value="${product.p_name}"></li>
                                <li><span>수량:</span><input type="number"  name="qty"  value="${qty}"></li>
                                <li><span>금액:</span> <input type="text"  name="p_price"  value="${product.p_price}"></li>
                                <li><span>총 금액:</span> <input type="text"  name="pay_total"  value="${product.p_price}"></li>
                            </ul>
	
                            <div class="payment-method">
                                <div class="custom-control custom-checkbox mr-sm-2">
                                    <input type="radio" class="custom-control-input" name="pay_type" value="무통장입금" checked="checked">
                                    <label class="custom-control-label" for="cod">무통장입금</label>
                                </div>
                                <div class="custom-control custom-checkbox mr-sm-2">
                                    <input type="radio" class="custom-control-input" name="pay_type" value="카카오페이">
                                    <label class="custom-control-label" for="cod">카카오페이</label>
                                </div>
                                <div class="custom-control custom-checkbox mr-sm-2">
                                    <input type="radio" class="custom-control-input" name="pay_type" value="카드결제">
                                    <label class="custom-control-label" for="paypal">카드결제 <img class="ml-15" src="img/core-img/paypal.png" alt=""></label>
                                </div>
                            </div>
	
                            <div class="cart-btn mt-100">
                            	<input type="submit" class="btn amado-btn w-100" value="결제하기">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 </form>
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