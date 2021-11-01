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
        
        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-20">
                        <div class="notice-title">
                            <h2>공지사항</h2>
                        </div>

                        <div class="notice-table clearfix"  id="check">
                            <table class="table table-responsive">
                                <thead>
                                    <tr>
                                    	
	                                        <th>번호</th>
	                                        <th>제목</th>
	                                        <th>작성일</th>
	                                        <th>조회수</th>
                                       
                                    </tr>
                                </thead>
                                <tbody>
									<c:forEach var="notice" items="${notiList}" begin="0" end="${notiList.size()}">
                                    <tr>
                                    	
                                    		<td>${notice.noti_no}</td>
                                    		<td><a href="notice_detail?noti_no=${notice.noti_no}"> ${notice.noti_title}</a></td>
                                    		<td>
                                    		<fmt:formatDate var="resultNotiDate" value="${notice.noti_date}" pattern="yyyy-MM-dd"/>
											${resultNotiDate}</td>
                                    		<td>${notice.noti_viewCount}</td>
	                                  	</c:forEach>
	                                  	
                                    
                                </tbody>
                            </table>
	                            <button type="button" class="btn btn-outline-warning btn-sm" onClick="location.href='noti_write_form'">작성</button> 
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