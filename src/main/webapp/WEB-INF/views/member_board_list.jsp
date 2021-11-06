<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	
<div class="container padding-bottom-2x" id="dc">
        <div class="row" >
          <div class="col-lg-10 col-md-8 order-md-2">
            <h6 class="text-muted text-normal text-uppercase">내가 쓴 한줄평</h6>
            <hr class="margin-bottom-1x">
            <div class="table-responsive">
              <table class="table">
                <thead>
                  <tr>
                    <th></th>
                    <th>상품명</th>
                    <th>한줄평 내용</th>
                    <th>평점</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody id="inserttBody">
                <c:forEach var="review" items="${rList }" end="${rList.size() }">
                	<tr id="insertList">
                	<td><img width="100" height="100" src="${review.product.p_photo }"/></td>
                	<td>${review.product.p_name }</td>
                	<td>${review.r_content }</td>
                	<td>
                	<p style="color: orange;">
				  	 <c:forEach var="i" begin="1" step="1" end="${review.r_grade }">
					  	 <span class="star" aria-hidden="true">★</span>
                    	 </c:forEach>
				  	 </p>
                    	 <button type="button" id="deleteRv" value="${review.r_no }">삭제</button>
                	</td>
                	</tr>
                </c:forEach>
                </tbody>
              </table>
            </div>
		</div>
	</div>
</div>
<br></br>
<div class="container padding-bottom-2x" id="dc">
        <div class="row" >
          <div class="col-lg-10 col-md-8 order-md-2">
            <h6 class="text-muted text-normal text-uppercase">내가 쓴 문의글</h6>
            <hr class="margin-bottom-1x">
            <div class="table-responsive">
              <table class="table">
                <thead>
                  <tr>
                    <th></th>
                    <th>제목</th>
                    <th>내용</th>
                    <th>날짜</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                </tbody>
              </table>
            </div>
		</div>
	</div>
</div>


<div id="productDetail" class="col-lg-10 col-md-8 order-md-2">
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