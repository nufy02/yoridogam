<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <!-- Header Area Start -->
		<%@include file="/WEB-INF/views/common/include_header.jsp"%>
        <!-- Header Area End -->
		
		<!-- controller
	@LoginCheck
	@RequestMapping("product_insert_form")
	public String product_insert_form(HttpSession session) throws Exception{
		return "product_insert_form";
	}
		 -->

        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="checkout_details_area mt-50 clearfix">

								<c:set var="p_type" value="${product.p_type }"/>
							<c:choose>
								<c:when test="${p_type == '온라인' }">
                            <div class="cart-title">
                                <h2>상품수정</h2>
                            </div>
                            <form action="product_update_action"  method="post">
                                <div class="row">
                                    <div class="col-2 mb-3">
                                        <select name="p_category">
                                        	<option value="제빵">제빵</option>
                                        	<option value="뭐가">뭐가</option>
                                        	<option value="있지">있니</option>
                                        </select>
                                    </div>
                                        <input type="hidden" class="form-control" name="teacher.t_id" value="teacher1" >
                                        <input type="hidden" class="form-control" name="p_no" value="${product.p_no }" >
                                        <input type="hidden" class="form-control" name="p_type" value="${product.p_type }" >
                                    <div class="col-12 mb-3">
                                        <input type="text" class="form-control" name="p_name" placeholder="상품명" value="${product.p_name }">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input type="text" class="form-control mb-3" name="p_price"placeholder="가격" value="${product.p_price }">
                                    </div>
                                    <div class="col-3 mb-2">
                                        <input type="text" class="form-control mb-3" id="" placeholder="사진업로드" value=""${product.p_photo } disabled="disabled">
                                    </div>
                                    <div class="col-5 mb-2">
                                        <input type="file" class="form-control mb-3" name="p_photo" accept="">
                                    </div>
                                    <div class="col-6 mb-3">
                                        <img src="${product.p_photo }"/>
                                    </div>
                                    <div class="col-6 mb-3">
                                        <textarea name="p_detail" class="form-control w-80" id="" cols="30" rows="30" placeholder="상품설명">${product.p_detail }</textarea>
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
                                        <div class="cart-btn mt-100">
                                			<input type="submit"  class="btn amado-btn w-100" value="수정하기" ><br><br/>
                                			<a href="home" class="btn amado-btn w-100">취소하기</a>
                           				</div>
                                    </div>
                                </div>
                            </form>
                                </c:when>
                                
                           <c:when test="${p_type == '오프라인' }">
                                <div class="cart-title">
                                <h2>상품수정</h2>
                            </div>
                            <form action="product_update_action"  method="post">
                                <div class="row">
                                    <div class="col-2 mb-3">
                                        <select name="p_category">
                                        	<option value="제빵">빵만들기</option>
                                        	<option value="뭐가">뭐가</option>
                                        	<option value="있지">있니</option>
                                        </select>
                                    </div>
                                        <input type="hidden" class="form-control" name="teacher.t_id" value="teacher1" ><!-- sUserId -->
                                        <input type="hidden" class="form-control" name="p_no" value="${product.p_no }" >
                                        <input type="hidden" class="form-control" name="p_type" value="${product.p_type }" >
                                    <div class="col-12 mb-3">
                                        <input type="text" class="form-control" name="p_name" placeholder="상품명" value="${product.p_name }">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input type="text" class="form-control mb-3" name="p_price"placeholder="가격" value="${product.p_price }">
                                    </div>
                                    <div class="col-3 mb-2">
                                        <input type="text" class="form-control mb-3" id="" placeholder="사진업로드" value=""${product.p_photo } disabled="disabled">
                                    </div>
                                    <div class="col-5 mb-2">
                                        <input type="file" class="form-control mb-3" name="p_photo" accept="">
                                    </div>
                                    <div class="col-6 mb-3">
                                        <img src="${product.p_photo }"/>
                                    </div>
                                    <div class="col-6 mb-3">
                                        <textarea name="p_detail" class="form-control w-80" id="" cols="30" rows="30" placeholder="상품설명">${product.p_detail }</textarea>
                                    </div>
                                    <div class="col-6 mb-3">
										<table width=400;>
											<thead>
								              <tr align="center" bgcolor="white">
								                  <th>강의시간</th>
								                  <th>날짜</th>
								                  <th>시간</th>
								              </tr>
								          </thead>
                                    <c:forEach var="productTime" items="${productTime }" begin="0" varStatus="status">
						                     <tbody>
								                <tr align="center" bgcolor="white">
								                    <td></td>
								                    <td>${productTime.pt_date }</td>
								                    <td>${productTime.pt_time }</td>
								                </tr>
								            </tbody>
                                    </c:forEach>
										</table>
										<button type="button">시간수정</button>
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
                                        <div class="cart-btn mt-100">
                                			<input type="submit"  class="btn amado-btn w-100" value="수정하기" ><br><br/>
                                			<a href="home" class="btn amado-btn w-100">취소하기</a>
                           				</div>
                                    </div>
                                </div>
                            </form>
                                </c:when>
							</c:choose>
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
	<script src="js/custom/productTest.js"></script>
</body>

</html>