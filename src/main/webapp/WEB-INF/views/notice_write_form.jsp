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
                            <h2>공지사항</h2>
                        </div>
                        
						<div class="cart-table clearfix" id="check">
                        </div>  
                    </div>
                    <div class="col-12 col-lg-20">
                    <div class="cart-title mt-50">
					<table>
						<tr>
							<td align="center">제목</td>
							<td><input name="title" size="50" maxlength="100"></td>
							<td>&nbsp;</td>
							
						</tr>
						<hr>
						<tr>
							<td align="center">이름</td>
							<td><input name="name" size="50" maxlength="50"></td>
							<td>&nbsp;</td>
						</tr>
						
						<tr>
							<td align="center">내용</td>
							<td><textarea name="memo" cols="50" rows="13"></textarea></td>
							<td>&nbsp;</td>
						</tr>
						
						<tr align="center">
							<td>&nbsp;</td>
						</tr>
					</table>

					<div class="form-group"> </div>   
	
							 <div class="form-group">
							 	<table>
							 	<tr>
							 	<td style="padding-top: 50px;padding-left:200px">                               
			                        <input type="button"  class="btn amado-btn w-20" value="글작성"   onClick="inquiry_write_action();">
                            	</td>
                            	<tr>
                            	</table>
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