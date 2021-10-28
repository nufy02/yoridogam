<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>  
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                                        전체선택<br/><input type="checkbox" name="allCheckbox" id="allCheckbox"></th>
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
                                            <input type="checkbox" name="ci_no"  value="${cartList.ci_no }"><a href="#">
                                            <img src="img/bg-img/cart1.jpg" style="margin-left: 30px" alt="Product"></a>
                                        </td>
                                        <td class="cart_product_desc">
                                            <h5>${cartList.product.p_name }</h5>
                                        </td>
                                        <td class="price">
                                            <span><f:formatNumber>${cartList.product.p_price }</f:formatNumber> 원</span>
                                        </td>
                                        <td class="qty">
                                            <div class="qty-btn d-flex">
                                                <div class="quantity">
                                                    <button type="button" name="up" value="${cartList.ci_no }"><img src="img/custom-icon/Qtyup.png"/></button>
                                                    <input type="text" class="" id="qty" name="quantity" value="${cartList.ci_qty }">
                                                    <button type="button"  name="down" value="${cartList.ci_no }"><img src="img/custom-icon/Qtydown.png"/></button>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                  	</c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <a href="javascript:cart_delete_select_item();"  class="btn amado-btn w-20"  id="deleteAll">선택삭제</a>
                        <button type="button"  class="btn amado-btn w-20" name="deleteAll" value="${sUserId }">전체삭제</button>
                    </div>
                    <div class="col-12 col-lg-4">
                        <div class="cart-summary">
                            <h5>장바구니 정보</h5><hr></hr>
                            <ul class="summary-table">
                                <li><span>강의 수:</span> <span>${cartList.size() }</span></li>
                                <li><span>장바구니 총 금액:</span><span></span></li>
                                <f:formatNumber>${tot_price }</f:formatNumber>원</span></li>
                                <hr>
                                <li><span>선택 강의 수:</span> <span id="checkQty"></span></li>
                                <li><span>선택 강의 총 금액:</span><span id="tot_price" ></span>
                            </ul>
                            <div class="cart-btn mt-100">
                                <input type="submit" class="btn amado-btn w-100" value="결제하기"><br><br/>
									</form>
                        <a href="home"  class="btn amado-btn w-100">돌아가기</a>
								

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