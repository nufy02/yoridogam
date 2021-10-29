<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>  
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <!-- Header Area Start -->
		<%@include file="/WEB-INF/views/common/include_header.jsp"%>
        <!-- Header Area End -->
        
        <div class="cart-table-area section-padding-100" >
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-20">
                        <div class="notice-title">
                            <h2>문의 게시판</h2>
                        </div>

                        <div class="inquiry-table clearfix"  id="check">
                            <table class="table table-responsive">
                                <thead>
                                    <tr>
                                    	
	                                        <th>번호</th>
	                                        <th>제목</th>
	                                        <th>작성자</th>
	                                        <th>작성일</th>
	                                        <th>조회수</th>
                                       
                                    </tr>
                                </thead>
                                <tbody>
									<c:forEach var="inquiry" items="${inquiryList}" begin="0" end="${inquiryList.size()}">
                                    <tr>
                                    		<td>${inquiry.ib_no}</td>
                                    		<td>${inquiry.ib_title}</td>
                                    		<td>${inquiry.member.m_id}</td>
                                    		<td><fmt:formatDate var="resultIbDate" value="${inquiry.ib_date}" pattern="yyyy-MM-dd"/>
												${resultIbDate}</td>
                                    		<td>${inquiry.ib_viewCount}</td>
	                                  	</c:forEach>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <button type="button"  class="btn amado-btn w-20" name="insertInquiry" >글작성</button>
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