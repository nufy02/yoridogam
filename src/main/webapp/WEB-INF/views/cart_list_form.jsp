<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>    
        <!-- Header Area Start -->
		<%@include file="/WEB-INF/views/common/include_header.jsp"%>
        <!-- Header Area End -->
		<script type="text/javascript">

		</script>
        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="cart-title mt-50">
                            <h2>장바구니</h2>
                        </div>

                        <div class="cart-table clearfix" id="check">
                            <table class="table table-responsive">
                                <thead>
                                    <tr>
                                        <th align="center">
                                        전체선택<br/><input type="checkbox" id="allCheckbox"></th>
                                        <th>강의명</th>
                                        <th>가격</th>
                                        <th>수량</th>
                                    </tr>
                                </thead>
                                <tbody>
									<form name="cartInfo" method="post" action="pay_form_cart">
                                    <tr>
                                    	<c:set var="tot_price" value="0"/>
                                    	
                                    	<c:forEach var="cartList" items="${cartList}" begin="0" end="${cartList.size()}">
                                    	<c:set var="tot_price" value="${tot_price+cartList.product.p_price*cartList.ci_qty }"/>
                                        <td class="cart_product_img" >
                                            <input type="checkbox" name="ci_no"  value="${cartList.ci_no }"><a href="#"><img src="img/bg-img/cart1.jpg" alt="Product"></a>
                                        </td>
                                        <td class="cart_product_desc">
                                            <h5>${cartList.product.p_name }</h5>
                                        </td>
                                        <td class="price">
                                            <span>${cartList.product.p_price }</span>
                                        </td>
                                        <td class="qty">
                                            <div class="qty-btn d-flex">
                                                <p>수량</p>
                                                <div class="quantity">
                                                    <span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                                    <input type="number" class="qty-text" id="qty" step="1" min="1" max="300" name="quantity" value="${cartList.ci_qty }">
                                                    <span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                  	</c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <a href="javascript:cart_delete_select_item();"  class="btn amado-btn w-20">선택삭제</a>
                        <a href="javascript:cart_delete();"  class="btn amado-btn w-20">전체 삭제</a>
                    </div>
                    <div class="col-12 col-lg-4">
                        <div class="cart-summary">
                            <h5>Cart Total</h5>
                            <ul class="summary-table">
                                <li><span>강의 갯수:</span> <span>${cartList.size() }</span></li>
                                <li><span>장바구니 합계:</span><span id="tot_price" >${tot_price }원</span></li>
                            </ul>
                            <div class="cart-btn mt-100">
                                <input type="submit" class="btn amado-btn w-100" value="결제하기"><br><br/>
									</form>
                        <a href="javascript:cart_delete();"  class="btn amado-btn w-100">돌아가기</a>
								

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
	<!-- Custom -->
	<script src="js/custom/cart.js"></script>
</body>

</html>