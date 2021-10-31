<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

  <link href="css/bootstrap.min.css" rel="stylesheet">
  <style>
#modal {
  display:none;
  position:relative;
  width: 80%;
  height: 80%;
  margin: 0;
  padding: 0;
  z-index:1;
}

#modal h2 {
  margin:0;   
}

#modal button {
  display:inline-block;
  width:100px;
  margin-left:calc(100% - 100px - 10px);
}

#modal .modal_content {
  width:100%;
  height:100%
  margin:100px auto;
  padding:20px 10px;
  background:#fff;
  border:2px solid #666;
}

#modal .modal_layer {
  position:fixed;
  top:0;
  left:0;
  width:60%;
  height:600%;
  background:rgba(0, 0, 0, 1.5);
  z-index:-1;
}   
</style>

</head>
<body>
	<table>
	  <thead>
	    <tr>
	      <th>결제 번호</th>
	      <th>결제 날짜</th>
	      <th>결제 금액</th>
	      <th>결제 강의</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	    <c:forEach var="pay" items="${payList}" begin="0" end="${payList.size()}" step="1" varStatus="status">
	    
	      <td>${pay.pay_no }</td>
	      <td>${pay.pay_date}</td>
	      <td><span>${pay.pay_total }</span></td>
	  		  <c:forEach var="pay" items="${pay.payItemList}" begin="0" end="0" step="1" varStatus="status">
	      <td><span>[${pay.product.p_name}] </c:forEach>외 n개</span></td>
   		  <td><button type='button' id="modal_open_btn">주문 상세보기</button></td>
   		  

	    </tr>
		  </c:forEach>
	  </tbody>
	</table>
	
	
<div id="modal">
   
    <div class="modal_content">
        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="cart-title mt-50">
                            <h2>주문 상세보기</h2>
                        </div>
                        <div class="cart-table clearfix">
                            <table class="table table-responsive">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th> 강의명</th>
                                        <th> 수량</th>
                                        <th> 금액</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="cart_product_img">
                                            <a href="#"><img src="img/bg-img/cart1.jpg" alt="Product"></a>
                                        </td>
                                        <td class="cart_product_desc">
                                            <h5>${pay.product.p_name }</h5>
                                        </td>
                                        <td class="price">
                                            <span>$130</span>
                                        </td>
                                        <td class="qty">
                                            <div class="qty-btn d-flex">
                                                <p>Qty</p>
                                                <div class="quantity">
                                                    <span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                                    <input type="number" class="qty-text" id="qty" step="1" min="1" max="300" name="quantity" value="1">
                                                    <span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <div class="modal_layer"></div>
</div>
	
    	
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
	<script src="js/custom/pay.js"></script>
	
</body>
</html>